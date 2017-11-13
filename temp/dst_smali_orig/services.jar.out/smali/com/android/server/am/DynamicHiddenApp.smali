.class public Lcom/android/server/am/DynamicHiddenApp;
.super Ljava/lang/Object;
.source "DynamicHiddenApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/DynamicHiddenApp$ILS_Q;
    }
.end annotation


# static fields
.field static final BG_COUNT_CACHED:I = 0x1

.field static final BG_COUNT_CACHED_HIDDEN:I = 0x3

.field static final BG_COUNT_EMPTY:I = 0x2

.field static final BG_COUNT_NON_CACHED:I = 0x4

.field static DEBUG:Z = false

.field static DHA_ADJ_CACHED_FACTOR:Z = false

.field static final DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

.field static final DHA_GOLDEN_LIST_ARRAY:[Ljava/lang/String;

.field static DHA_INCREASE_THRESHOLD:J = 0x0L

.field static final DHA_MAX_MARGIN:J = 0x800000L

.field static final DHA_MIN_MARGIN:J = 0x400000L

.field static final DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

.field static FALL_PREVENT_ENABLE:Z = false

.field static FHA_ENABLE:Z = false

.field static INIT_CACHED_APPS:I = 0x0

.field static INIT_EMPTY_APPS:I = 0x0

.field static LDHA_ES_ENABLE:Z = false

.field static LDHA_EXT_ENABLE:Z = false

.field static LDHA_EXT_LIMIT1:I = 0x0

.field static LDHA_EXT_LIMIT2:I = 0x0

.field public static LDHA_EXT_TH1:J = 0x0L

.field public static LDHA_EXT_TH2:J = 0x0L

.field static LDHA_SPC_ENABLE:Z = false

.field static MAX_CACHED_APPS:I = 0x0

.field static MAX_CACHED_APPS_FOR_FHA:I = 0x0

.field static MAX_EMPTY_APPS:I = 0x0

.field static MAX_EMPTY_APPS_FOR_FHA:I = 0x0

.field static MDHA_SSR_ENABLE:Z = false

.field static MDHA_SSR_MAX_SERVICE_TIME:I = 0x0

.field static MIN_CACHED_APPS:I = 0x0

.field static MIN_EMPTY_APPS_FOR_DHA:I = 0x0

.field static PRE_CACHED_KILL:Z = false

.field static PRE_DECREMENT_SYNC:Z = false

.field static PRE_EMPTY_KILL:Z = false

.field static PRE_MAX_KILL_ENABLE:Z = false

.field static PRE_SUPPORT_INCREMENT:Z = false

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TOP_STATE_APP:I = 0x3

.field static final TOP_STATE_HOME:I = 0x1

.field static final TOP_STATE_IS_CREATING:I = 0x0

.field static final TOP_STATE_RECENTS_APP:I = 0x2

.field public static final WIDGET_INFO_FILE:Ljava/lang/String; = "appwidgets.xml"

.field public static WIDGET_ON_HOMESCREEN:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static curTopState:I

.field static dha_amsexcept_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static dha_goldenlist_set:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static dha_keepempty_key:I

.field static dha_keepempty_set:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static dha_whitelist_set:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static golden_list_key:I

.field static mAMSExceptionEnable:Z

.field static mCPREnable:I

.field static mDhaKeepEmptyEnable:I

.field static mFragEnable:I

.field static mGoldenlistEnable:I

.field static mILS_2nd_Enable:Z

.field static mILS_Enable:Z

.field static mKnoxAMSExceptionEnable:Z

.field static mLMKArray:Ljava/lang/String;

.field static mLMKScale:F

.field static mSzILSFlag:Z

.field static mSzILSRate:F

.field static mSzILS_SDHARate:F

.field static mWhitelistEnable:I

.field static mb64bitLMKEnable:Z

.field static white_list_key:I


# instance fields
.field killingProcessesUss:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field killingProcessesUssTotal:J

.field mAm:Lcom/android/server/am/ActivityManagerService;

.field mDynamicLMKFlag:Z

.field private mInfo:Lcom/android/internal/util/MemInfoReader;

.field mMaxCached:I

.field mMaxEmpty:I

.field mNumCachedHiddenProcs:I

.field mNumNonCachedProcs:I

.field private final mOomAdj:[I

.field mProcessList:Lcom/android/server/am/ProcessList;

.field private mSzDHAStep:I

.field private mSzDHAThreshold:J

.field private mSzDHAThresholdRate:F

.field public final mWidgetList:Ljava/lang/Object;

.field numCached:I

.field numEmpty:I

.field private retCacheLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    const-string v0, "ro.config.fha_enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->WIDGET_ON_HOMESCREEN:Ljava/util/HashSet;

    const-string v0, "ro.config.dha_cached_max"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->INIT_CACHED_APPS:I

    const-string v0, "ro.config.dha_cached_min"

    const-string v1, "4"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    const-string v0, "ro.config.dha_cached_max"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    const-string v0, "ro.config.fha_cached_max"

    const-string v1, "16"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS_FOR_FHA:I

    const-string v0, "ro.config.dha_empty_init"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->INIT_EMPTY_APPS:I

    const-string v0, "ro.config.dha_empty_min"

    const-string v1, "8"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS_FOR_DHA:I

    const-string v0, "ro.config.dha_empty_max"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    const-string v0, "ro.config.fha_empty_max"

    const-string v1, "16"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS_FOR_FHA:I

    const-string v0, "ro.config.ldha_es_enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    const-string v0, "ro.config.ldha_spc_enable"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LDHA_SPC_ENABLE:Z

    const-string v0, "ro.config.ldha_ext_enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_ENABLE:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_TH1:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_TH2:J

    const-string v0, "ro.config.ldha_ext_limit1"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_LIMIT1:I

    const-string v0, "ro.config.ldha_ext_limit2"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_LIMIT2:I

    const-string v0, "ro.config.pre_max_kill_enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->PRE_MAX_KILL_ENABLE:Z

    const-string v0, "ro.config.pre_cached_kill"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->PRE_CACHED_KILL:Z

    const-string v0, "ro.config.pre_empty_kill"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->PRE_EMPTY_KILL:Z

    const-string v0, "ro.config.pre_decrement_sync"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->PRE_DECREMENT_SYNC:Z

    const-string v0, "ro.config.pre_support_increment"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->PRE_SUPPORT_INCREMENT:Z

    const-string v0, "ro.config.dha_adj_cached_factor"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_ADJ_CACHED_FACTOR:Z

    const-string v0, "ro.config.64bit_lmk_enable"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mb64bitLMKEnable:Z

    const-string v0, "ro.config.dha_ils_enable"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mILS_Enable:Z

    const-string v0, "ro.config.dha_ils_2nd_enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mILS_2nd_Enable:Z

    const-string v0, "ro.config.dha_ils_rate"

    const-string v1, "1.5"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mSzILSRate:F

    const-string v0, "ro.config.dha_ils_sdha_rate"

    const-string v1, "1.8"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mSzILS_SDHARate:F

    sput-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    const-string v0, "ro.config.dha_whitelist_enable"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mWhitelistEnable:I

    const-string v0, "ro.config.dha_pwhitelist_enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    const-string v0, "ro.config.dha_goldenlist_enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mGoldenlistEnable:I

    const-string v0, "ro.config.dha_CPR_enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mCPREnable:I

    const-string v0, "ro.config.dha_frag_enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mFragEnable:I

    const-string v0, "ro.config.dha_lmk_scale"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    const-string v0, "ro.config.dha_lmk_array"

    const-string v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const-string v0, "ro.config.ams_exception_enable"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mAMSExceptionEnable:Z

    const-string v0, "ro.config.ams_knoxexpt_enable"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mKnoxAMSExceptionEnable:Z

    const-string v0, "ro.config.mdha_ssr_enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->MDHA_SSR_ENABLE:Z

    const-string v0, "ro.config.mdha_ssr_max_minute"

    const-string v1, "10"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MDHA_SSR_MAX_SERVICE_TIME:I

    const-string v0, "ro.config.fall_prevent_enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    const-wide/32 v0, 0x200000

    sput-wide v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.sbrowser"

    aput-object v1, v0, v4

    const-string v1, "com.sec.android.gallery3d"

    aput-object v1, v0, v5

    const-string v1, "com.sec.android.app.music"

    aput-object v1, v0, v6

    const-string v1, "com.samsung.everglades.video"

    aput-object v1, v0, v7

    const-string v1, "com.google.android.gm"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "com.google.android.gms"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.samsung.indexservice"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.vending"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CONTACTS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "MMS"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.google.android.music:ui"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.google.android.music:main"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "android.process.acore"

    aput-object v2, v1, v4

    const-string v2, "2"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.sec.android.provider.logsprovider"

    aput-object v2, v1, v4

    const-string v2, "1"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.samsung.klmsagent"

    aput-object v2, v1, v4

    const-string v2, "1"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "CONTACTS"

    aput-object v2, v1, v4

    const-string v2, "0"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "android.process.media"

    aput-object v2, v1, v4

    const-string v2, "1"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.android.managedprovisioning"

    aput-object v3, v2, v4

    const-string v3, "1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_whitelist_set:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_set:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_goldenlist_set:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    const-string v0, "ro.config.dha_whl_key"

    const-string v1, "255"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->white_list_key:I

    const-string v0, "ro.config.dha_pwhl_key"

    const-string v1, "7682"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key:I

    const-string v0, "ro.config.dha_gdl_key"

    const-string v1, "63"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->golden_list_key:I

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.myfiles"

    aput-object v1, v0, v4

    const-string v1, "com.samsung.android.app.memo"

    aput-object v1, v0, v5

    const-string v1, "com.sec.android.app.popupcalculator"

    aput-object v1, v0, v6

    const-string v1, "com.sec.android.app.clockpackage"

    aput-object v1, v0, v7

    const-string v1, "com.sec.android.app.voicenote"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "com.sec.android.mimage.sstudio"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp;->DHA_GOLDEN_LIST_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processList"    # Lcom/android/server/am/ProcessList;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mOomAdj:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mWidgetList:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    const-wide/32 v0, 0x2000000

    iput-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->retCacheLimit:I

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->INIT_EMPTY_APPS:I

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->INIT_CACHED_APPS:I

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    iput-boolean v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mDynamicLMKFlag:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->initProperty()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x9
        0xf
    .end array-data
.end method

.method private computeDHAEmptyProcessLimit(I)I
    .locals 3
    .param p1, "totalProcessLimit"    # I

    .prologue
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager_LDHA_ES"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "totalProcessLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "retCacheLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->retCacheLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->retCacheLimit:I

    sub-int v0, p1, v0

    return v0
.end method

.method private dhaAddPackageName(Ljava/util/HashMap;[Ljava/lang/String;)V
    .locals 4
    .param p2, "nameindex"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-object v0, p2, v2

    const-string v1, "CONTACTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aget-object v1, p2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    aget-object v0, p2, v2

    const-string v1, "MMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aget-object v1, p2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    aget-object v0, p2, v2

    const-string v1, "CALENDAR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aget-object v1, p2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    aget-object v0, p2, v2

    aget-object v1, p2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private dhaAddPackageName(Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 3
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v0, "CONTACTS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "MMS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "CALENDAR"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private makeLists(Z)V
    .locals 5
    .param p1, "isFirst"    # Z

    .prologue
    const/4 v4, 0x1

    if-nez p1, :cond_0

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->dha_whitelist_set:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_set:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->dha_goldenlist_set:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    :cond_0
    const/4 v1, 0x0

    .local v1, "idx":I
    const/4 v0, 0x1

    .local v0, "bitFlag":I
    :goto_0
    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->DHA_GOLDEN_LIST_ARRAY:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    :cond_1
    sget v2, Lcom/android/server/am/DynamicHiddenApp;->mWhitelistEnable:I

    if-eq v2, v4, :cond_2

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->mWhitelistEnable:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    :cond_2
    sget v2, Lcom/android/server/am/DynamicHiddenApp;->white_list_key:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->dha_whitelist_set:Ljava/util/HashSet;

    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/DynamicHiddenApp;->dhaAddPackageName(Ljava/util/HashSet;Ljava/lang/String;)V

    :cond_3
    sget v2, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    if-ne v2, v4, :cond_4

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_set:Ljava/util/HashSet;

    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->DHA_DYNAMICEXCEPT_PROC_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/DynamicHiddenApp;->dhaAddPackageName(Ljava/util/HashSet;Ljava/lang/String;)V

    :cond_4
    sget v2, Lcom/android/server/am/DynamicHiddenApp;->mGoldenlistEnable:I

    if-ne v2, v4, :cond_5

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->golden_list_key:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->DHA_GOLDEN_LIST_ARRAY:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->dha_goldenlist_set:Ljava/util/HashSet;

    sget-object v3, Lcom/android/server/am/DynamicHiddenApp;->DHA_GOLDEN_LIST_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/DynamicHiddenApp;->dhaAddPackageName(Ljava/util/HashSet;Ljava/lang/String;)V

    :cond_5
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private setProcessLimit()V
    .locals 5

    .prologue
    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    invoke-direct {p0, v2}, Lcom/android/server/am/DynamicHiddenApp;->computeDHAEmptyProcessLimit(I)I

    move-result v1

    .local v1, "emptyProcessLimit":I
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    .local v0, "cachedProcessLimit":I
    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v1, v2, :cond_0

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    sget v3, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS_FOR_DHA:I

    sget v4, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_2

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS_FOR_DHA:I

    :cond_0
    :goto_0
    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    sget v3, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS_FOR_DHA:I

    sget v4, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_3

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    :cond_1
    :goto_1
    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    return-void

    :cond_2
    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    goto :goto_1
.end method

.method public static updateILS(Ljava/lang/String;)V
    .locals 4
    .param p0, "pName"    # Ljava/lang/String;

    .prologue
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->mILS_Enable:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    .local v0, "ILSPrevFlag":Z
    invoke-static {p0}, Lcom/android/server/am/DynamicHiddenApp$ILS_Q;->isAppsLaunchFreq(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    if-eq v0, v1, :cond_0

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ILS: FlagChange["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method decrementAppCount(IILcom/android/server/am/ProcessRecord;Z)I
    .locals 7
    .param p1, "empty"    # I
    .param p2, "cached"    # I
    .param p3, "lastCachedApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "preventAggressiveKill"    # Z

    .prologue
    const/4 v4, 0x1

    add-int v5, p1, p2

    iget v6, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    sub-int v2, v5, v6

    .local v2, "mUpdateMax":I
    if-gt p1, p2, :cond_0

    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    if-eq v5, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    if-le v5, v2, :cond_4

    sget v5, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS_FOR_DHA:I

    sget v6, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    add-int/2addr v5, v6

    if-ge v2, v5, :cond_1

    sget v5, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS_FOR_DHA:I

    sget v6, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    add-int v2, v5, v6

    :cond_1
    :goto_0
    if-le p1, p2, :cond_5

    iput p2, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_2
    :goto_1
    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-gtz v5, :cond_3

    iput v4, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_3
    return v2

    :cond_4
    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    .local v3, "prevMaxCached":I
    add-int/lit8 v5, p2, -0x1

    iput v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-le v5, v2, :cond_6

    sub-int v5, v2, p1

    iput v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_6
    if-eqz p4, :cond_7

    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-le v3, v5, :cond_7

    iput v3, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_7
    sget-boolean v5, Lcom/android/server/am/DynamicHiddenApp;->PRE_MAX_KILL_ENABLE:Z

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/server/am/DynamicHiddenApp;->PRE_DECREMENT_SYNC:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-le v3, v5, :cond_2

    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    sget v6, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    if-lt v5, v6, :cond_2

    if-eqz p3, :cond_2

    iget v0, p3, Lcom/android/server/am/ProcessRecord;->curProcState:I

    .local v0, "appState":I
    const/16 v5, 0xe

    if-eq v0, v5, :cond_8

    const/16 v5, 0xf

    if-eq v0, v5, :cond_8

    move v1, v4

    .local v1, "killedBySPC":Z
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DEC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_9

    const-string v5, "SPC_cached #"

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    iput v3, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    goto :goto_1

    .end local v1    # "killedBySPC":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .restart local v1    # "killedBySPC":Z
    :cond_9
    const-string v5, "cached #"

    goto :goto_3
.end method

.method decrementEmptyAppCount(IILcom/android/server/am/ProcessRecord;Z)I
    .locals 7
    .param p1, "empty"    # I
    .param p2, "cached"    # I
    .param p3, "lastCachedApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "preventAggressiveKill"    # Z

    .prologue
    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    sub-int v3, p1, v5

    .local v3, "ret":I
    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    if-le v5, v3, :cond_5

    sget v5, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v3, v5, :cond_0

    sget v3, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS_FOR_DHA:I

    :cond_0
    sget v5, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    if-le p2, v5, :cond_2

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    .local v2, "prevMaxCached":I
    add-int/lit8 v5, p2, -0x1

    iput v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-eqz p4, :cond_1

    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-le v2, v5, :cond_1

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_1
    sget-boolean v5, Lcom/android/server/am/DynamicHiddenApp;->PRE_MAX_KILL_ENABLE:Z

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/server/am/DynamicHiddenApp;->PRE_DECREMENT_SYNC:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    if-le v2, v5, :cond_2

    if-eqz p3, :cond_2

    iget v0, p3, Lcom/android/server/am/ProcessRecord;->curProcState:I

    .local v0, "appState":I
    const/16 v5, 0xe

    if-eq v0, v5, :cond_3

    const/16 v5, 0xf

    if-eq v0, v5, :cond_3

    move v1, v4

    .local v1, "killedBySPC":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DEC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_4

    const-string v5, "SPC_cached #"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    iput v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    .end local v0    # "appState":I
    .end local v1    # "killedBySPC":Z
    .end local v2    # "prevMaxCached":I
    :cond_2
    :goto_2
    return v3

    .restart local v0    # "appState":I
    .restart local v2    # "prevMaxCached":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "killedBySPC":Z
    :cond_4
    const-string v5, "cached #"

    goto :goto_1

    .end local v0    # "appState":I
    .end local v1    # "killedBySPC":Z
    .end local v2    # "prevMaxCached":I
    :cond_5
    iget v3, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    goto :goto_2
.end method

.method public dhaProcessesLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V
    .locals 32
    .param p2, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "N":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .local v22, "now":J
    const-wide/32 v28, 0x1b7740

    sub-long v24, v22, v28

    .local v24, "oldTime":J
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    const/16 v20, 0x0

    .local v20, "lastCachedProcess":Lcom/android/server/am/ProcessRecord;
    const/16 v21, 0x0

    .local v21, "preventAggressiveKill":Z
    if-nez p2, :cond_6

    const/16 v26, 0x0

    .local v26, "topState":I
    :goto_0
    sget v27, Lcom/android/server/am/DynamicHiddenApp;->curTopState:I

    move/from16 v0, v27

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    sput v26, Lcom/android/server/am/DynamicHiddenApp;->curTopState:I

    :cond_0
    const/16 v16, 0x0

    .local v16, "isPreCachedMaxKill":Z
    const/16 v17, 0x0

    .local v17, "isPreEmptyMaxKill":Z
    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->PRE_MAX_KILL_ENABLE:Z

    if-eqz v27, :cond_3

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    if-nez v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3

    :cond_1
    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->PRE_EMPTY_KILL:Z

    if-eqz v27, :cond_2

    const/16 v17, 0x1

    :cond_2
    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->PRE_CACHED_KILL:Z

    if-eqz v27, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_3

    const/16 v16, 0x1

    :cond_3
    const-wide/16 v8, 0x0

    .local v8, "appUss":J
    const/4 v12, 0x0

    .local v12, "isDhaKeepEmpty":Z
    const/4 v11, 0x0

    .local v11, "isDhaGoldenList":Z
    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v27, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/DynamicHiddenApp;->setProcessLimit()V

    :cond_4
    add-int/lit8 v10, v6, -0x1

    .local v10, "i":I
    :goto_1
    if-ltz v10, :cond_48

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .local v7, "app":Lcom/android/server/am/ProcessRecord;
    const/4 v12, 0x0

    const/4 v11, 0x0

    iget-boolean v0, v7, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    move/from16 v27, v0

    if-nez v27, :cond_5

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->mAMSExceptionEnable:Z

    if-eqz v27, :cond_a

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v27

    const/16 v28, 0x64

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_9

    sget-object v27, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    sget-object v27, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_a

    :cond_5
    :goto_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "appUss":J
    .end local v10    # "i":I
    .end local v11    # "isDhaGoldenList":Z
    .end local v12    # "isDhaKeepEmpty":Z
    .end local v16    # "isPreCachedMaxKill":Z
    .end local v17    # "isPreEmptyMaxKill":Z
    .end local v26    # "topState":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_7

    const/16 v26, 0x1

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRecentsProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_8

    const/16 v26, 0x2

    goto/16 :goto_0

    :cond_8
    const/16 v26, 0x3

    goto/16 :goto_0

    .restart local v7    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "appUss":J
    .restart local v10    # "i":I
    .restart local v11    # "isDhaGoldenList":Z
    .restart local v12    # "isDhaKeepEmpty":Z
    .restart local v16    # "isPreCachedMaxKill":Z
    .restart local v17    # "isPreEmptyMaxKill":Z
    .restart local v26    # "topState":I
    :cond_9
    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->mKnoxAMSExceptionEnable:Z

    if-eqz v27, :cond_a

    sget-object v27, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    sget-object v27, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_5

    sget-object v27, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    if-nez v27, :cond_a

    const/4 v12, 0x1

    :cond_a
    sget v27, Lcom/android/server/am/DynamicHiddenApp;->mWhitelistEnable:I

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_b

    sget v27, Lcom/android/server/am/DynamicHiddenApp;->mWhitelistEnable:I

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    :cond_b
    sget-object v27, Lcom/android/server/am/DynamicHiddenApp;->dha_whitelist_set:Ljava/util/HashSet;

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_5

    :cond_c
    sget v27, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    sget-object v27, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_set:Ljava/util/HashSet;

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    const/4 v12, 0x1

    :cond_d
    sget v27, Lcom/android/server/am/DynamicHiddenApp;->mGoldenlistEnable:I

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_e

    sget-object v27, Lcom/android/server/am/DynamicHiddenApp;->dha_goldenlist_set:Ljava/util/HashSet;

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_e

    const/4 v11, 0x1

    :cond_e
    const/16 v19, 0x0

    .local v19, "killedBy":Ljava/lang/String;
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->curProcState:I

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->MDHA_SSR_ENABLE:Z

    if-eqz v27, :cond_2e

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->curProcState:I

    move/from16 v27, v0

    const/16 v28, 0xa

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2e

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v27, v0

    const/16 v28, 0x5

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_f

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v27, v0

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2e

    :cond_f
    iget-wide v0, v7, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    move-wide/from16 v28, v0

    sub-long v28, v22, v28

    sget v27, Lcom/android/server/am/DynamicHiddenApp;->MDHA_SSR_MAX_SERVICE_TIME:I

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v30, v0

    cmp-long v27, v28, v30

    if-lez v27, :cond_2e

    iget-wide v0, v7, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    move-wide/from16 v28, v0

    sub-long v28, v22, v28

    sget v27, Lcom/android/server/am/DynamicHiddenApp;->MDHA_SSR_MAX_SERVICE_TIME:I

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v30, v0

    cmp-long v27, v28, v30

    if-lez v27, :cond_2e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "SSR - service for lastStateTime "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-wide v0, v7, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    move-wide/from16 v28, v0

    sub-long v28, v22, v28

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "s, lastActivityTime "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-wide v0, v7, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    move-wide/from16 v28, v0

    sub-long v28, v22, v28

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "s"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto/16 :goto_2

    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_10

    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v27, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_19

    :cond_10
    const/4 v13, 0x1

    .local v13, "isDhaKill":Z
    :goto_3
    if-eqz v16, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_11

    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v27, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_1a

    :cond_11
    const/16 v18, 0x1

    .local v18, "isPreKill":Z
    :goto_4
    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_ENABLE:Z

    if-eqz v27, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    sget v28, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_LIMIT1:I

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_12

    iget-wide v0, v7, Lcom/android/server/am/ProcessRecord;->lastPss:J

    move-wide/from16 v28, v0

    sget-wide v30, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_TH1:J

    cmp-long v27, v28, v30

    if-gtz v27, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    sget v28, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_LIMIT2:I

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_1b

    iget-wide v0, v7, Lcom/android/server/am/ProcessRecord;->lastPss:J

    move-wide/from16 v28, v0

    sget-wide v30, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_TH2:J

    cmp-long v27, v28, v30

    if-lez v27, :cond_1b

    :cond_13
    const/4 v14, 0x1

    .local v14, "isExtKill":Z
    :goto_5
    const/4 v15, 0x0

    .local v15, "isGoldenKill":Z
    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_14

    const/4 v15, 0x1

    const-string v27, "ActivityManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "GDL - Cached : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    if-eqz v13, :cond_1c

    const-string v19, "DHA"

    :cond_15
    :goto_6
    if-eqz v19, :cond_22

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v27

    if-eqz v27, :cond_16

    const-string v27, "com.android.vending"

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_16

    const-string v27, "GATE"

    const-string v28, "<GATE-M> MARKET_LAUNCHED_FAIL </GATE-M>"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    sget v27, Lcom/android/server/am/DynamicHiddenApp;->mCPREnable:I

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_17

    sget v27, Lcom/android/server/am/DynamicHiddenApp;->mCPREnable:I

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1f

    const-string v27, "com.android.vending"

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1f

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ":"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "Convert from hidden to empty"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v7, v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    :cond_18
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    goto/16 :goto_2

    .end local v13    # "isDhaKill":Z
    .end local v14    # "isExtKill":Z
    .end local v15    # "isGoldenKill":Z
    .end local v18    # "isPreKill":Z
    :cond_19
    const/4 v13, 0x0

    goto/16 :goto_3

    .restart local v13    # "isDhaKill":Z
    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_4

    .restart local v18    # "isPreKill":Z
    :cond_1b
    const/4 v14, 0x0

    goto/16 :goto_5

    .restart local v14    # "isExtKill":Z
    .restart local v15    # "isGoldenKill":Z
    :cond_1c
    if-eqz v18, :cond_1d

    const-string v19, "PMK"

    goto/16 :goto_6

    :cond_1d
    if-eqz v14, :cond_1e

    const-string v19, "EXT"

    goto/16 :goto_6

    :cond_1e
    if-eqz v15, :cond_15

    const-string v19, "GDL"

    goto/16 :goto_6

    :cond_1f
    if-eqz v12, :cond_20

    const-string v27, "ActivityManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "PWHL - "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " in Cached"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ":"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "Convert from hidden to empty"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v7, v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_20
    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v27, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v27, v0

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    if-nez v27, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v27, v0

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/util/MemInfoReader;->getUssByPid(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v27, v0

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    move-wide/from16 v28, v0

    add-long v28, v28, v8

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    const-string v27, "ActivityManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "KillingProcessesUss : put ["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "] : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-wide/16 v30, 0x400

    div-long v30, v8, v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " KB"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ":"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "cached #"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    if-nez v13, :cond_18

    if-nez v21, :cond_18

    const/16 v21, 0x1

    goto/16 :goto_7

    :cond_22
    move-object/from16 v20, v7

    goto/16 :goto_2

    .end local v13    # "isDhaKill":Z
    .end local v14    # "isExtKill":Z
    .end local v15    # "isGoldenKill":Z
    .end local v18    # "isPreKill":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v27, v0

    sget v28, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_23

    iget-wide v0, v7, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    move-wide/from16 v28, v0

    cmp-long v27, v28, v24

    if-gez v27, :cond_23

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "empty for "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-wide/32 v28, 0x1b7740

    add-long v28, v28, v24

    iget-wide v0, v7, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "s"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_24

    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v27, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_28

    :cond_24
    const/4 v13, 0x1

    .restart local v13    # "isDhaKill":Z
    :goto_8
    if-eqz v17, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_25

    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v27, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_29

    :cond_25
    const/16 v18, 0x1

    .restart local v18    # "isPreKill":Z
    :goto_9
    const/4 v15, 0x0

    .restart local v15    # "isGoldenKill":Z
    if-eqz v11, :cond_26

    const/4 v15, 0x1

    const-string v27, "ActivityManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "GDL - Empty : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    if-eqz v13, :cond_2a

    const-string v19, "DHA"

    :cond_27
    :goto_a
    if-eqz v12, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    goto/16 :goto_2

    .end local v13    # "isDhaKill":Z
    .end local v15    # "isGoldenKill":Z
    .end local v18    # "isPreKill":Z
    :cond_28
    const/4 v13, 0x0

    goto :goto_8

    .restart local v13    # "isDhaKill":Z
    :cond_29
    const/16 v18, 0x0

    goto :goto_9

    .restart local v15    # "isGoldenKill":Z
    .restart local v18    # "isPreKill":Z
    :cond_2a
    if-eqz v18, :cond_2b

    const-string v19, "PMK"

    goto :goto_a

    :cond_2b
    if-eqz v15, :cond_27

    const-string v19, "GDL"

    goto :goto_a

    :cond_2c
    if-eqz v19, :cond_5

    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v27, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v27, v0

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    if-nez v27, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v27, v0

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/util/MemInfoReader;->getUssByPid(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v27, v0

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    move-wide/from16 v28, v0

    add-long v28, v28, v8

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    const-string v27, "ActivityManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "KillingProcessesUss : put ["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "] : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-wide/16 v30, 0x400

    div-long v30, v8, v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " KB"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ":"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "empty #"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    goto/16 :goto_2

    .end local v13    # "isDhaKill":Z
    .end local v15    # "isGoldenKill":Z
    .end local v18    # "isPreKill":Z
    :cond_2e
    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->LDHA_SPC_ENABLE:Z

    if-eqz v27, :cond_5

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v27, v0

    const/16 v28, 0x9

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_5

    if-eqz v12, :cond_2f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    goto/16 :goto_2

    :cond_2f
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_30

    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v27, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_38

    :cond_30
    const/4 v13, 0x1

    .restart local v13    # "isDhaKill":Z
    :goto_b
    if-eqz v16, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_31

    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v27, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_39

    :cond_31
    const/16 v18, 0x1

    .restart local v18    # "isPreKill":Z
    :goto_c
    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_ENABLE:Z

    if-eqz v27, :cond_3a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    sget v28, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_LIMIT1:I

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_32

    iget-wide v0, v7, Lcom/android/server/am/ProcessRecord;->lastPss:J

    move-wide/from16 v28, v0

    sget-wide v30, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_TH1:J

    cmp-long v27, v28, v30

    if-gtz v27, :cond_33

    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    sget v28, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_LIMIT2:I

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_3a

    iget-wide v0, v7, Lcom/android/server/am/ProcessRecord;->lastPss:J

    move-wide/from16 v28, v0

    sget-wide v30, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_TH2:J

    cmp-long v27, v28, v30

    if-lez v27, :cond_3a

    :cond_33
    const/4 v14, 0x1

    .restart local v14    # "isExtKill":Z
    :goto_d
    if-eqz v13, :cond_3b

    const-string v19, "DHA"

    :cond_34
    :goto_e
    if-eqz v19, :cond_3f

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v27

    if-eqz v27, :cond_35

    const-string v27, "com.android.vending"

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_35

    const-string v27, "GATE"

    const-string v28, "<GATE-M> MARKET_LAUNCHED_FAIL </GATE-M>"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    sget v27, Lcom/android/server/am/DynamicHiddenApp;->mCPREnable:I

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_36

    sget v27, Lcom/android/server/am/DynamicHiddenApp;->mCPREnable:I

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3d

    const-string v27, "com.android.vending"

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3d

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v27, v0

    const-string v28, "Convert from hidden to empty"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v7, v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    :cond_37
    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    goto/16 :goto_2

    .end local v13    # "isDhaKill":Z
    .end local v14    # "isExtKill":Z
    .end local v18    # "isPreKill":Z
    :cond_38
    const/4 v13, 0x0

    goto/16 :goto_b

    .restart local v13    # "isDhaKill":Z
    :cond_39
    const/16 v18, 0x0

    goto/16 :goto_c

    .restart local v18    # "isPreKill":Z
    :cond_3a
    const/4 v14, 0x0

    goto :goto_d

    .restart local v14    # "isExtKill":Z
    :cond_3b
    if-eqz v18, :cond_3c

    const-string v19, "PMK"

    goto :goto_e

    :cond_3c
    if-eqz v14, :cond_34

    const-string v19, "EXT"

    goto :goto_e

    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v27, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v27, v0

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    if-nez v27, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v27, v0

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/util/MemInfoReader;->getUssByPid(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v27, v0

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    move-wide/from16 v28, v0

    add-long v28, v28, v8

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    const-string v27, "ActivityManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "KillingProcessesUss : put ["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "] : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-wide/16 v30, 0x400

    div-long v30, v8, v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " KB"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ":"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "SPC_cached #"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    if-nez v13, :cond_37

    if-nez v21, :cond_37

    const/16 v21, 0x1

    goto/16 :goto_f

    :cond_3f
    move-object/from16 v20, v7

    goto/16 :goto_2

    .end local v13    # "isDhaKill":Z
    .end local v14    # "isExtKill":Z
    .end local v18    # "isPreKill":Z
    :cond_40
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_41

    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v27, :cond_45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_45

    :cond_41
    const/4 v13, 0x1

    .restart local v13    # "isDhaKill":Z
    :goto_10
    if-eqz v17, :cond_46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_42

    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v27, :cond_46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_46

    :cond_42
    const/16 v18, 0x1

    .restart local v18    # "isPreKill":Z
    :goto_11
    if-eqz v13, :cond_47

    const-string v19, "DHA"

    :cond_43
    :goto_12
    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    sget-boolean v27, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v27, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v27, v0

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    if-nez v27, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v27, v0

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/util/MemInfoReader;->getUssByPid(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    move-object/from16 v27, v0

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    move-wide/from16 v28, v0

    add-long v28, v28, v8

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    const-string v27, "ActivityManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "KillingProcessesUss : put ["

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "] : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-wide/16 v30, 0x400

    div-long v30, v8, v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " KB"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ":"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "SPC_empty #"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v7, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    goto/16 :goto_2

    .end local v13    # "isDhaKill":Z
    .end local v18    # "isPreKill":Z
    :cond_45
    const/4 v13, 0x0

    goto/16 :goto_10

    .restart local v13    # "isDhaKill":Z
    :cond_46
    const/16 v18, 0x0

    goto/16 :goto_11

    .restart local v18    # "isPreKill":Z
    :cond_47
    if-eqz v18, :cond_43

    const-string v19, "PMK"

    goto/16 :goto_12

    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "isDhaKill":Z
    .end local v18    # "isPreKill":Z
    .end local v19    # "killedBy":Ljava/lang/String;
    :cond_48
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/DynamicHiddenApp;->updateHiddenAppNum(IILcom/android/server/am/ProcessRecord;Z)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getBgProcCount(I)I
    .locals 1
    .param p1, "kind"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->numCached:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->numEmpty:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumCachedHiddenProcs:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mNumNonCachedProcs:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method incrementAppCount()I
    .locals 4

    .prologue
    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    add-int v0, v1, v2

    .local v0, "mUpdateMax":I
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    :cond_0
    iput v0, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    if-le v1, v2, :cond_1

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_1
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    :cond_2
    return v0
.end method

.method incrementEmptyAppCount()I
    .locals 4

    .prologue
    iget v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    add-int v0, v1, v2

    .local v0, "ret":I
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    :cond_0
    sget-boolean v1, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    :cond_1
    return v0
.end method

.method public initProperty()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x400

    const/16 v4, 0xf

    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/server/am/DynamicHiddenApp;->dha_amsexcept_map:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp;->DHA_STATICEXCEPT_PROC_ARRAY:[[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/DynamicHiddenApp;->dhaAddPackageName(Ljava/util/HashMap;[Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/server/am/DynamicHiddenApp;->mWhitelistEnable:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/16 v1, 0xe0

    sput v1, Lcom/android/server/am/DynamicHiddenApp;->white_list_key:I

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/am/DynamicHiddenApp;->makeLists(Z)V

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->updateLMKThreshold()V

    const-string v1, "ro.config.dha_step"

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    const-string v1, "ro.config.dha_th_rate"

    iget v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    iget-object v1, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string v2, "ro.config.dha_th_level"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    const-string v1, "ro.config.dha_increase_th"

    sget-wide v2, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    const-string v1, "ro.config.ldha_ext_th1"

    iget-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_TH1:J

    const-string v1, "ro.config.ldha_ext_th2"

    iget-object v2, p0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_TH2:J

    const-string v1, "DHA_PROPERTY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHA STEP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DHA_PROPERTY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHA TH RATE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DHA_PROPERTY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHA mSzDHAThreshold "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DHA_PROPERTY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHA DHA_INCREASE_THRESHOLD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DHA_PROPERTY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHA LDHA_EXT_TH1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_TH1:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DHA_PROPERTY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHA LDHA_EXT_TH2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_TH2:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DHA_PROPERTY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHA LDHA_EXT_LIMIT1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_LIMIT1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DHA_PROPERTY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHA LDHA_EXT_LIMIT2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_LIMIT2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isWidgetUsingPkg(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->WIDGET_ON_HOMESCREEN:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->WIDGET_ON_HOMESCREEN:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWidgetUsingPkg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " widget is using."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWidgetUsingPkg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " no widget is using."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeKillingProcessUss(ILjava/lang/String;)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    iget-wide v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    iput-wide v4, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    :cond_0
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KillingProcessesUss : remove ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ,  killingProcessesUssTotal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUss:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public upDateWidgetList()V
    .locals 11

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .local v0, "currentUserId":I
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v7

    const-string v8, "appwidgets.xml"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v4, "stream":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v2, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/am/DynamicHiddenApp;->mWidgetList:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    .local v6, "type":I
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, "tag":Ljava/lang/String;
    const-string v7, "p"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    const-string v9, "pkg"

    invoke-interface {v2, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "pkg":Ljava/lang/String;
    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->WIDGET_ON_HOMESCREEN:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " already exist in list."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "pkg":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    monitor-exit v8

    .end local v0    # "currentUserId":I
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "stream":Ljava/io/InputStream;
    .end local v6    # "type":I
    :goto_1
    return-void

    .restart local v0    # "currentUserId":I
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "stream":Ljava/io/InputStream;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_2
    const-string v7, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Add "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " into list."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/am/DynamicHiddenApp;->WIDGET_ON_HOMESCREEN:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v3    # "pkg":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0    # "currentUserId":I
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "stream":Ljava/io/InputStream;
    .end local v6    # "type":I
    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_1

    :catch_2
    move-exception v7

    goto :goto_1
.end method

.method public updateDHAParameter()V
    .locals 18

    .prologue
    :try_start_0
    const-string v10, ""

    .local v10, "result":Ljava/lang/String;
    const-string v7, ""

    .local v7, "name":Ljava/lang/String;
    const-string v11, ""

    .local v11, "value":Ljava/lang/String;
    const-string v2, "[=:]"

    .local v2, "SEPATOR":Ljava/lang/String;
    const-string v6, "/data/log/dha_parameter.dat"

    .local v6, "filepath":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "buf":Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, "file":Ljava/io/File;
    const/4 v9, 0x0

    .local v9, "refreshList":Z
    const/4 v8, 0x0

    .local v8, "refreshLMK":Z
    const-string v12, "ActivityManager"

    const-string v13, "Start updateDHAParameter"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2f

    const-string v12, "ActivityManager"

    const-string v13, "updateDHAParameter exist"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/BufferedReader;

    .end local v3    # "buf":Ljava/io/BufferedReader;
    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v3    # "buf":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2c

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "[=:]"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v12, "[=:]"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v12, v12, v13

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "name = [ "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ], value = [ "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "MAX_CACHED_APPS"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v2    # "SEPATOR":Ljava/lang/String;
    .end local v3    # "buf":Ljava/io/BufferedReader;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "filepath":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "refreshLMK":Z
    .end local v9    # "refreshList":Z
    .end local v10    # "result":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .restart local v2    # "SEPATOR":Ljava/lang/String;
    .restart local v3    # "buf":Ljava/io/BufferedReader;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "filepath":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "refreshLMK":Z
    .restart local v9    # "refreshList":Z
    .restart local v10    # "result":Ljava/lang/String;
    .restart local v11    # "value":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v12, "MIN_CACHED_APPS"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .end local v2    # "SEPATOR":Ljava/lang/String;
    .end local v3    # "buf":Ljava/io/BufferedReader;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "filepath":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "refreshLMK":Z
    .end local v9    # "refreshList":Z
    .end local v10    # "result":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v2    # "SEPATOR":Ljava/lang/String;
    .restart local v3    # "buf":Ljava/io/BufferedReader;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "filepath":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "refreshLMK":Z
    .restart local v9    # "refreshList":Z
    .restart local v10    # "result":Ljava/lang/String;
    .restart local v11    # "value":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v12, "MAX_EMPTY_APPS"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    goto/16 :goto_0

    :cond_3
    const-string v12, "MIN_EMPTY_APPS"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/server/am/DynamicHiddenApp;->MIN_EMPTY_APPS_FOR_DHA:I

    goto/16 :goto_0

    :cond_4
    const-string v12, "INIT_EMPTY_APPS"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/server/am/DynamicHiddenApp;->INIT_EMPTY_APPS:I

    goto/16 :goto_0

    :cond_5
    const-string v12, "mSzDHAStep"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAStep:I

    goto/16 :goto_0

    :cond_6
    const-string v12, "mSzDHAThreshold"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v12, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    goto/16 :goto_0

    :cond_7
    const-string v12, "ro.config.dha_th_rate"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    goto/16 :goto_0

    :cond_8
    const-string v12, "DHA_INCREASE_THRESHOLD"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v12, v12

    sput-wide v12, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    goto/16 :goto_0

    :cond_9
    const-string v12, "ro.config.dha_lmk_scale"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    sput v12, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_a
    const-string v12, "ro.config.dha_lmk_array"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    sput-object v11, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const/4 v8, 0x1

    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "dha_lmk_array mLMKArray ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const-string v12, "ro.config.dha_ils_enable"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/server/am/DynamicHiddenApp;->mILS_Enable:Z

    goto/16 :goto_0

    :cond_c
    const-string v12, "ro.config.dha_ils_rate"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    sput v12, Lcom/android/server/am/DynamicHiddenApp;->mSzILSRate:F

    goto/16 :goto_0

    :cond_d
    const-string v12, "ro.config.dha_ils_sdha_rate"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    sput v12, Lcom/android/server/am/DynamicHiddenApp;->mSzILS_SDHARate:F

    goto/16 :goto_0

    :cond_e
    const-string v12, "ro.config.dha_whitelist_enable"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/server/am/DynamicHiddenApp;->mWhitelistEnable:I

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_f
    const-string v12, "ro.config.dha_pwhitelist_enable"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_10
    const-string v12, "ro.config.dha_whl_key"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/server/am/DynamicHiddenApp;->white_list_key:I

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_11
    const-string v12, "ro.config.dha_pwhl_key"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/server/am/DynamicHiddenApp;->dha_keepempty_key:I

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_12
    const-string v12, "ro.config.dha_goldenlist_enable"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/server/am/DynamicHiddenApp;->mGoldenlistEnable:I

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_13
    const-string v12, "ro.config.dha_CPR_enable"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/server/am/DynamicHiddenApp;->mCPREnable:I

    goto/16 :goto_0

    :cond_14
    const-string v12, "ro.config.dha_frag_enable"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/server/am/DynamicHiddenApp;->mFragEnable:I

    goto/16 :goto_0

    :cond_15
    const-string v12, "ro.config.64bit_lmk_enable"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/server/am/DynamicHiddenApp;->mb64bitLMKEnable:Z

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_16
    const-string v12, "ro.config.ldha_es_enable"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    goto/16 :goto_0

    :cond_17
    const-string v12, "ro.config.ldha_spc_enable"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/server/am/DynamicHiddenApp;->LDHA_SPC_ENABLE:Z

    goto/16 :goto_0

    :cond_18
    const-string v12, "ro.config.ldha_ext_enable"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_ENABLE:Z

    goto/16 :goto_0

    :cond_19
    const-string v12, "ro.config.ldha_ext_th1"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    sput-wide v12, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_TH1:J

    goto/16 :goto_0

    :cond_1a
    const-string v12, "ro.config.ldha_ext_th2"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    sput-wide v12, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_TH2:J

    goto/16 :goto_0

    :cond_1b
    const-string v12, "ro.config.ldha_ext_limit1"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_LIMIT1:I

    goto/16 :goto_0

    :cond_1c
    const-string v12, "ro.config.ldha_ext_limit2"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_LIMIT2:I

    goto/16 :goto_0

    :cond_1d
    const-string v12, "ro.config.ams_exception_enable"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/server/am/DynamicHiddenApp;->mAMSExceptionEnable:Z

    goto/16 :goto_0

    :cond_1e
    const-string v12, "ro.config.ams_knoxexpt_enable"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/server/am/DynamicHiddenApp;->mKnoxAMSExceptionEnable:Z

    goto/16 :goto_0

    :cond_1f
    const-string v12, "ro.config.fha_enable"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_20
    const-string v12, "ro.config.fha_cached_max"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS_FOR_FHA:I

    goto/16 :goto_0

    :cond_21
    const-string v12, "ro.config.fha_empty_max"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS_FOR_FHA:I

    goto/16 :goto_0

    :cond_22
    const-string v12, "ro.config.mdha_ssr_enable"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/server/am/DynamicHiddenApp;->MDHA_SSR_ENABLE:Z

    goto/16 :goto_0

    :cond_23
    const-string v12, "ro.config.mdha_ssr_max_minute"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_24

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    mul-int/lit8 v12, v12, 0x3c

    mul-int/lit16 v12, v12, 0x3e8

    sput v12, Lcom/android/server/am/DynamicHiddenApp;->MDHA_SSR_MAX_SERVICE_TIME:I

    goto/16 :goto_0

    :cond_24
    const-string v12, "ro.config.pre_max_kill_enable"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_25

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/server/am/DynamicHiddenApp;->PRE_MAX_KILL_ENABLE:Z

    goto/16 :goto_0

    :cond_25
    const-string v12, "ro.config.pre_cached_kill"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_26

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/server/am/DynamicHiddenApp;->PRE_CACHED_KILL:Z

    goto/16 :goto_0

    :cond_26
    const-string v12, "ro.config.pre_empty_kill"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_27

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/server/am/DynamicHiddenApp;->PRE_EMPTY_KILL:Z

    goto/16 :goto_0

    :cond_27
    const-string v12, "ro.config.pre_decrement_sync"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_28

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/server/am/DynamicHiddenApp;->PRE_DECREMENT_SYNC:Z

    goto/16 :goto_0

    :cond_28
    const-string v12, "ro.config.pre_support_increment"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_29

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/server/am/DynamicHiddenApp;->PRE_SUPPORT_INCREMENT:Z

    goto/16 :goto_0

    :cond_29
    const-string v12, "ro.config.dha_adj_cached_factor"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/server/am/DynamicHiddenApp;->DHA_ADJ_CACHED_FACTOR:Z

    goto/16 :goto_0

    :cond_2a
    const-string v12, "ro.config.fall_prevent_enable"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2b

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcom/android/server/am/DynamicHiddenApp;->FALL_PREVENT_ENABLE:Z

    goto/16 :goto_0

    :cond_2b
    const-string v12, "ActivityManager"

    const-string v13, "not matched parameter"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    if-eqz v9, :cond_2d

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/am/DynamicHiddenApp;->makeLists(Z)V

    :cond_2d
    if-eqz v8, :cond_2e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v12}, Lcom/android/server/am/ProcessList;->updateLMKThreshold()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string v13, "ro.config.dha_th_level"

    const/16 v14, 0xf

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    const-string v12, "ro.config.ldha_ext_th1"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    const/16 v14, 0xf

    invoke-virtual {v13, v14}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    sput-wide v12, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_TH1:J

    const-string v12, "ro.config.ldha_ext_th2"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/DynamicHiddenApp;->mProcessList:Lcom/android/server/am/ProcessList;

    const/16 v14, 0xf

    invoke-virtual {v13, v14}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v14

    long-to-double v14, v14

    const-wide v16, 0x3fd999999999999aL    # 0.4

    mul-double v14, v14, v16

    double-to-long v14, v14

    const-wide/16 v16, 0x400

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    sput-wide v12, Lcom/android/server/am/DynamicHiddenApp;->LDHA_EXT_TH2:J

    :cond_2e
    const-string v12, "ActivityManager"

    const-string v13, "complete parameter"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2f
    const-string v12, "ActivityManager"

    const-string v13, "file does not exist"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method public updateHiddenAppNum(IILcom/android/server/am/ProcessRecord;Z)I
    .locals 26
    .param p1, "curCached"    # I
    .param p2, "curEmpty"    # I
    .param p3, "lastCachedApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "preventAggressiveKill"    # Z

    .prologue
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    .local v10, "ret":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v18

    .local v18, "szFreeMem":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v14

    .local v14, "szCachedMem":J
    add-long v12, v18, v14

    .local v12, "szAvailableMem":J
    const-wide/16 v16, 0x0

    .local v16, "szFragMem":J
    sget v20, Lcom/android/server/am/DynamicHiddenApp;->mFragEnable:I

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x2

    div-long v20, v20, v22

    cmp-long v20, v18, v20

    if-gez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/MemInfoReader;->readBuddyInfo()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mInfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/MemInfoReader;->getFragRate()J

    move-result-wide v16

    :cond_0
    sget-boolean v20, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v20, v0

    sget v21, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    sget v20, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v20, v0

    sget v21, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    sget v20, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_3
    sget-boolean v20, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    if-eqz v20, :cond_4

    sget-boolean v20, Lcom/android/server/am/DynamicHiddenApp;->mILS_2nd_Enable:Z

    if-eqz v20, :cond_4

    sget v20, Lcom/android/server/am/DynamicHiddenApp;->MIN_CACHED_APPS:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_4
    sget-boolean v20, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v20, :cond_5

    const/4 v9, 0x0

    .local v9, "maxBG":I
    sget-boolean v20, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    :goto_0
    const-string v20, "ActivityManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "AvailableMem = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-wide/16 v22, 0x400

    div-long v22, v12, v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "kB (Free: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-wide/16 v22, 0x400

    div-long v22, v18, v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "kB, Cached: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-wide/16 v22, 0x400

    div-long v22, v14, v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "kB) "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "Threshold = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "kB [MaxHidden: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", Current Hidden"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", Current Empty"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "], Frag.Mem = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-wide/16 v22, 0x400

    div-long v22, v16, v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "KB"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", killingProcessesUssTotal = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "kB"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", ILS Flag: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-boolean v22, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9    # "maxBG":I
    :cond_5
    const-wide/16 v20, 0x0

    cmp-long v20, v18, v20

    if-gtz v20, :cond_7

    move v11, v10

    .end local v10    # "ret":I
    .end local v12    # "szAvailableMem":J
    .end local v14    # "szCachedMem":J
    .end local v16    # "szFragMem":J
    .end local v18    # "szFreeMem":J
    .local v11, "ret":I
    :goto_1
    return v11

    .end local v11    # "ret":I
    .restart local v9    # "maxBG":I
    .restart local v10    # "ret":I
    .restart local v12    # "szAvailableMem":J
    .restart local v14    # "szCachedMem":J
    .restart local v16    # "szFragMem":J
    .restart local v18    # "szFreeMem":J
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v21, v0

    add-int v9, v20, v21

    goto/16 :goto_0

    .end local v9    # "maxBG":I
    :cond_7
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    .local v8, "mFinalDHAThresholdRate":F
    sget-boolean v20, Lcom/android/server/am/DynamicHiddenApp;->mSzILSFlag:Z

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThresholdRate:F

    move/from16 v20, v0

    sget v21, Lcom/android/server/am/DynamicHiddenApp;->mSzILSRate:F

    mul-float v8, v20, v21

    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mSzDHAThreshold:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    mul-float v7, v20, v8

    .local v7, "mFinalDHAThreshold":F
    const/4 v6, 0x0

    .local v6, "curProcess":I
    sget-boolean v20, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v20, :cond_a

    add-int v6, p1, p2

    :goto_2
    sub-long v20, v12, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/DynamicHiddenApp;->killingProcessesUssTotal:J

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v20, v20, v7

    if-gez v20, :cond_c

    sget-boolean v20, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/DynamicHiddenApp;->decrementAppCount(IILcom/android/server/am/ProcessRecord;Z)I

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->retCacheLimit:I

    :goto_3
    sget-boolean v20, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v20, :cond_9

    const-string v20, "ActivityManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Decrease Hidden App Number from "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "curProcess":I
    .end local v7    # "mFinalDHAThreshold":F
    .end local v8    # "mFinalDHAThresholdRate":F
    .end local v12    # "szAvailableMem":J
    .end local v14    # "szCachedMem":J
    .end local v16    # "szFragMem":J
    .end local v18    # "szFreeMem":J
    :cond_9
    :goto_4
    move v11, v10

    .end local v10    # "ret":I
    .restart local v11    # "ret":I
    goto/16 :goto_1

    .end local v11    # "ret":I
    .restart local v6    # "curProcess":I
    .restart local v7    # "mFinalDHAThreshold":F
    .restart local v8    # "mFinalDHAThresholdRate":F
    .restart local v10    # "ret":I
    .restart local v12    # "szAvailableMem":J
    .restart local v14    # "szCachedMem":J
    .restart local v16    # "szFragMem":J
    .restart local v18    # "szFreeMem":J
    :cond_a
    move/from16 v6, p2

    goto :goto_2

    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/DynamicHiddenApp;->decrementEmptyAppCount(IILcom/android/server/am/ProcessRecord;Z)I

    move-result v10

    goto :goto_3

    :cond_c
    sub-long v20, v12, v16

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    sget-wide v22, Lcom/android/server/am/DynamicHiddenApp;->DHA_INCREASE_THRESHOLD:J

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v7

    cmpl-float v20, v20, v21

    if-lez v20, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_d

    sget-boolean v20, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-nez v20, :cond_f

    sget-boolean v20, Lcom/android/server/am/DynamicHiddenApp;->PRE_MAX_KILL_ENABLE:Z

    if-eqz v20, :cond_f

    sget-boolean v20, Lcom/android/server/am/DynamicHiddenApp;->PRE_SUPPORT_INCREMENT:Z

    if-eqz v20, :cond_f

    sget v20, Lcom/android/server/am/DynamicHiddenApp;->curTopState:I

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_f

    :cond_d
    sget-boolean v20, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v20, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/DynamicHiddenApp;->incrementAppCount()I

    move-result v10

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->retCacheLimit:I

    :goto_5
    sget-boolean v20, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v20, :cond_9

    const-string v20, "ActivityManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Increase Hidden App Number from "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxEmpty:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/DynamicHiddenApp;->incrementEmptyAppCount()I

    move-result v10

    goto :goto_5

    :cond_f
    sget-boolean v20, Lcom/android/server/am/DynamicHiddenApp;->LDHA_ES_ENABLE:Z

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    move/from16 v20, v0

    sget v21, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_10

    sget v20, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->mMaxCached:I

    :cond_10
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/DynamicHiddenApp;->retCacheLimit:I

    goto/16 :goto_4
.end method
