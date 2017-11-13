.class public Lcom/android/internal/telephony/uicc/SIMRecords;
.super Lcom/android/internal/telephony/uicc/IccRecords;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/SIMRecords$2;,
        Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;,
        Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;,
        Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;,
        Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;,
        Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;,
        Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;
    }
.end annotation


# static fields
.field private static final ACTION_EF_LOCK_UPDATED:Ljava/lang/String; = "android.intent.action.ACTION_EF_LOCK_UPDATED"

.field private static final BITMASK_EF_LOCK:I = 0x1

.field private static final BYTE_EF_LOCK_REMOTE:I = 0x1

.field private static final BYTE_EF_LOCK_REMOTE_OFFSET:I = 0x2

.field private static final BYTE_EF_LOCK_USER:I = 0x2

.field private static final BYTE_EF_LOCK_USER_OFFSET:I = 0x4

.field static final CFF_DATA_MASK:I = 0xf0

.field static final CFF_DATA_RESET:I = 0xf

.field static final CFF_DATA_SHIFT:I = 0x4

.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field private static final CFIS_ADN_CAPABILITY_ID_OFFSET:I = 0xe

.field private static final CFIS_ADN_EXTENSION_ID_OFFSET:I = 0xf

.field private static final CFIS_BCD_NUMBER_LENGTH_OFFSET:I = 0x2

.field private static final CFIS_TON_NPI_OFFSET:I = 0x3

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final CRASH_RIL:Z = false

.field protected static final DBG:Z = true

.field private static final EVENT_APP_LOCKED:I = 0x23

.field private static final EVENT_APP_NETWORK_LOCKED:I = 0x25

.field private static final EVENT_GET_ACC_DONE:I = 0x20c

.field protected static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_CPHS_DONE:I = 0x21

.field private static final EVENT_GET_EF_FPLMN_DONE:I = 0x209

.field private static final EVENT_GET_EPSLOCI_DONE:I = 0x20b

.field private static final EVENT_GET_GID1_DONE:I = 0x22

.field private static final EVENT_GET_GID2_DONE:I = 0x24

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_GET_ICCID_WHEN_LOCKED_DONE:I = 0x1f8

.field private static final EVENT_GET_IMODER_DONE:I = 0x205

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_IMSI_M_DONE:I = 0x1fa

.field private static final EVENT_GET_IMSI_RETRY:I = 0x320

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_IRM_DONE:I = 0x1fb

.field private static final EVENT_GET_MASTERIMSI_DONE:I = 0x1fc

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field protected static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_OPL_DONE:I = 0x1f6

.field private static final EVENT_GET_PERSO_DONE:I = 0x1f9

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_PSISMSC_DONE:I = 0x207

.field private static final EVENT_GET_ROAMING_DONE:I = 0x200

.field private static final EVENT_GET_SMSP_DONE:I = 0x20a

.field private static final EVENT_GET_SMSS_DONE:I = 0x208

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_CPHS_DONE:I = 0x1f4

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field private static final EVENT_GET_SPN_SHORT_CPHS_DONE:I = 0x1f5

.field private static final EVENT_GET_SPONIMSI1_DONE:I = 0x1fd

.field private static final EVENT_GET_SPONIMSI2_DONE:I = 0x1fe

.field private static final EVENT_GET_SPONIMSI3_DONE:I = 0x1ff

.field protected static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_UICCVER_DONE:I = 0x201

.field private static final EVENT_GET_UICC_DONE:I = 0x204

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_PB_INIT_COMPLETE:I = 0x202

.field private static final EVENT_REFRESH_EF_LOCK_DONE:I = 0x206

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_CSP_DONE:I = 0x1f7

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SIM_PB_READY:I = 0x203

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_SIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field private static final ICCID2_PATH:Ljava/lang/String; = "/data/misc/radio/cicd2"

.field private static final ICCID_PATH:Ljava/lang/String; = "/data/misc/radio/cicd"

.field public static INIT_AUTOPRECONFIG:I = 0x0

.field public static KEEP_CURRENT_CONFIG:I = 0x0

.field static final KEY_GID1:Ljava/lang/String; = "key_gid1"

.field public static final KEY_ICCID:Ljava/lang/String; = "key_iccid"

.field static final KEY_PAYSTATE:Ljava/lang/String; = "key_paystate"

.field protected static final LOG_TAG:Ljava/lang/String; = "SIMRecords"

.field private static final MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

.field private static final PATH_IMODER:Ljava/lang/String; = "/data/misc/radio/imoder"

.field private static final PATH_UICC:Ljava/lang/String; = "/data/misc/radio/uicc"

.field private static PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String; = null

.field static final PROPERTY_SIM_ROAMING:Ljava/lang/String; = "gsm.sim.roaming"

.field static final PROPERTY_UICC_VERSION:Ljava/lang/String; = "gsm.sim.version"

.field private static final RESP_EF_LOCK_REFRESHED:I = 0x3

.field private static final SETUPDATA_RECORDS_LOADED_BITMASK:J = 0x400001208L

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI:I = 0xa3

.field static final TAG_SPDI_PLMN_LIST:I = 0x80

.field private static final WR_IMODER:I = 0x2

.field private static final WR_UICC:I = 0x1

.field public static final propNameChangedICC:Ljava/lang/String; = "ril.isIccChanged"


# instance fields
.field private final ACTION_SIM_ICCID_CHANGED:Ljava/lang/String;

.field private final ACTION_SIM_REFRESH_INIT:Ljava/lang/String;

.field private final DEPRECATED_ACTION_SIM_ICCID_CHANGED:Ljava/lang/String;

.field IsOnsExist:Z

.field NV_cfflag_video:Z

.field NV_cfflag_voice:Z

.field OPL_INDEX:[I

.field OPL_LAC1:[I

.field OPL_LAC2:[I

.field OPL_MCCMNC:[Ljava/lang/String;

.field OPL_count:I

.field PNN_Value:[Ljava/lang/String;

.field private countryISO:Ljava/lang/String;

.field efIMODER:[B

.field efUICC:[B

.field isAvailableCFIS:Z

.field isAvailableCHV1:Z

.field public isAvailableFDN:Z

.field isAvailableMBDN:Z

.field isAvailableMSISDN:Z

.field isAvailableMWIS:Z

.field isAvailableO2PERSO:Z

.field public isAvailableOCSGL:Z

.field public isAvailableOCSGLList:Z

.field public isAvailableSMS:Z

.field public isAvailableSMSP:Z

.field isAvailableSPN:Z

.field isEnabledCSP:Z

.field isRefreshedBySTK:Z

.field mAutoPreconfigService:Landroid/os/Messenger;

.field private mAutoPreconfigServiceConnection:Landroid/content/ServiceConnection;

.field private mCallForwardingStatus:I

.field private mCphsInfo:[B

.field mCspPlmnEnabled:Z

.field private mEFLockRemote:I

.field private mEFLockUser:I

.field mEfCPHS_MWI:[B

.field mEfCff:[B

.field mEfCfis:[B

.field mEfLi:[B

.field mEfMWIS:[B

.field mEfPl:[B

.field private mEonsEnabled:Z

.field mEonsName:Ljava/lang/String;

.field private mEpsloci:[B

.field private mGbaRecordsRequested:Z

.field mHasIsim:Z

.field mImsiRequest:Z

.field mIncreaseTPMR:Z

.field private mIsAPBound:Z

.field mIsEnabledOPL:Z

.field private mIsNeedToReadIccIdOnNwLocked:Z

.field mIsOPLExist:Z

.field private mIsOneSkuSupport:Z

.field private mIsPrevSimStateNwLocked:Z

.field mOldICCID:Ljava/lang/String;

.field mPnnHomeName:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryCountGetImsi:I

.field private mSetupDataRecordsBitMask:J

.field private mSktImsiM:Ljava/lang/String;

.field private mSktIrm:Ljava/lang/String;

.field mSpdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSpnDisplayCondition:I

.field mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

.field private mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

.field private mSponImsi:[Ljava/lang/String;

.field mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

.field private mValidityPeriod:I

.field mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

.field private perso:[B

.field private selectedNwkName:Ljava/lang/String;

.field spnDisplayRuleOverride:I

.field spnOverride:Ljava/lang/String;

.field spn_cphs:Ljava/lang/String;

.field videocallForwardingEnabled:I

.field voicecallForwardingEnabled:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 122
    sput v3, Lcom/android/internal/telephony/uicc/SIMRecords;->INIT_AUTOPRECONFIG:I

    .line 123
    sput v4, Lcom/android/internal/telephony/uicc/SIMRecords;->KEEP_CURRENT_CONFIG:I

    .line 441
    const/16 v0, 0x83

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "302370"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "302720"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "310260"

    aput-object v2, v0, v1

    const-string v1, "405025"

    aput-object v1, v0, v3

    const-string v1, "405026"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "405027"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "405028"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "405029"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "405030"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "405031"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "405032"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "405033"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "405034"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "405035"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "405036"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "405037"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "405038"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "405039"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "405040"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "405041"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "405042"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "405043"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "405044"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "405045"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "405046"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "405047"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "405750"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "405751"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "405752"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "405753"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "405754"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "405755"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "405756"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "405799"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "405800"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "405801"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "405802"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "405803"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "405804"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "405805"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "405806"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "405807"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "405808"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "405809"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "405810"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "405811"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "405812"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "405813"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "405814"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "405815"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "405816"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "405817"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "405818"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "405819"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "405820"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "405821"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "405822"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "405823"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "405824"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "405825"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "405826"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "405827"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "405828"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "405829"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "405830"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "405831"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "405832"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "405833"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "405834"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "405835"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "405836"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "405837"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "405838"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "405839"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "405840"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "405841"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "405842"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "405843"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "405844"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "405845"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "405846"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "405847"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "405848"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "405849"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "405850"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "405851"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "405852"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "405853"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "405875"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "405876"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "405877"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "405878"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "405879"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "405880"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "405881"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "405882"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "405883"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "405884"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "405885"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "405886"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "405908"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "405909"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "405910"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "405911"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "405912"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "405913"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "405914"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "405915"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "405916"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "405917"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "405918"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "405919"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "405920"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "405921"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "405922"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "405923"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "405924"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "405925"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "405926"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "405927"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "405928"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "405929"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "405930"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "405931"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "405932"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "502142"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "502143"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "502145"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "502146"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "502147"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "502148"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .line 469
    const-string v0, "ro.cdma.home.operator.numeric"

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 9
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 511
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 121
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAutoPreconfigService:Landroid/os/Messenger;

    .line 133
    iput v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFLockRemote:I

    .line 134
    iput v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFLockUser:I

    .line 144
    const-string v5, "persist.eons.enabled"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEonsEnabled:Z

    .line 158
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIncreaseTPMR:Z

    .line 162
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    .line 163
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    .line 164
    iput v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    .line 165
    iput v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    .line 166
    iput v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mValidityPeriod:I

    .line 173
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsOPLExist:Z

    .line 176
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->IsOnsExist:Z

    .line 178
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEonsName:Ljava/lang/String;

    .line 183
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGbaRecordsRequested:Z

    .line 189
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiRequest:Z

    .line 190
    new-instance v5, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;

    invoke-direct {v5, p0, v8}, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPrevSimStateNwLocked:Z

    .line 214
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->perso:[B

    .line 215
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableO2PERSO:Z

    .line 231
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    .line 233
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEpsloci:[B

    .line 235
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 237
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    .line 238
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    .line 239
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    .line 240
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    .line 242
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    .line 243
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    .line 255
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->efUICC:[B

    .line 256
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->efIMODER:[B

    .line 261
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    .line 263
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    .line 288
    const-string v5, "com.samsung.action.SIM_ICCID_CHANGED"

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->ACTION_SIM_ICCID_CHANGED:Ljava/lang/String;

    .line 289
    const-string v5, "com.samsung.action.SIM_REFRESH_INIT"

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->ACTION_SIM_REFRESH_INIT:Ljava/lang/String;

    .line 290
    const-string v5, "com.android.action.SIM_ICCID_CHANGED"

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->DEPRECATED_ACTION_SIM_ICCID_CHANGED:Ljava/lang/String;

    .line 292
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOldICCID:Ljava/lang/String;

    .line 294
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMS:Z

    .line 297
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 298
    iput v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnDisplayRuleOverride:I

    .line 300
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledOPL:Z

    .line 301
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableFDN:Z

    .line 302
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCHV1:Z

    .line 303
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSPN:Z

    .line 304
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMSISDN:Z

    .line 305
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    .line 306
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isEnabledCSP:Z

    .line 307
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMWIS:Z

    .line 308
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCFIS:Z

    .line 309
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMSP:Z

    .line 310
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isRefreshedBySTK:Z

    .line 312
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGL:Z

    .line 313
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGLList:Z

    .line 317
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mHasIsim:Z

    .line 478
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAPBound:Z

    .line 482
    iput v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRetryCountGetImsi:I

    .line 492
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsNeedToReadIccIdOnNwLocked:Z

    .line 496
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsOneSkuSupport:Z

    .line 4511
    new-instance v5, Lcom/android/internal/telephony/uicc/SIMRecords$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/uicc/SIMRecords$1;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAutoPreconfigServiceConnection:Landroid/content/ServiceConnection;

    .line 513
    new-instance v5, Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 515
    new-instance v5, Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-direct {v5}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    .line 516
    new-instance v5, Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-direct {v5}, Lcom/android/internal/telephony/uicc/SpnOverride;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    .line 518
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 521
    iput v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 523
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x15

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 524
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x1f

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 526
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x202

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnPbInitComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 529
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x203

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnSimPbReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 533
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 534
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-le v5, v3, :cond_6

    .line 535
    const-string v5, "CTC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 536
    const-string v5, "com.samsung.intent.action.setCardDataInit"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 537
    const-string v5, "com.samsung.intent.action.slot1GetGsmImsi"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    :cond_0
    :goto_0
    const-string v5, "android.intent.action.CSC_UPDATE_NETWORK_DONE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    const-string v5, "android.intent.action.CSC_UPDATE_VOICEMAIL_DONE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 558
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    .line 559
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v5, p0, v3, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 560
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v6, 0x23

    invoke-virtual {v5, p0, v6, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 561
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIMRecords X ctor this="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 563
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_MultiIMSI"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_DisableRoamingMultiIMSI"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 567
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    .line 572
    :cond_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v2

    .line 574
    .local v2, "phoneRestrictionPolicy":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    if-eqz v2, :cond_2

    .line 575
    invoke-virtual {v2, v8}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsNeedToReadIccIdOnNwLocked:Z

    .line 578
    :cond_2
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsNeedToReadIccIdOnNwLocked:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_LoadIccIdOnLock"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsNeedToReadIccIdOnNwLocked:Z

    .line 581
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_ConfigOneSkuVariant"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, "oneSkuVariant":Ljava/lang/String;
    if-eqz v1, :cond_7

    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsOneSkuSupport:Z

    .line 584
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsNeedToReadIccIdOnNwLocked:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsOneSkuSupport:Z

    if-eqz v3, :cond_4

    .line 585
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v4, 0x25

    invoke-virtual {v3, p0, v4, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 590
    :cond_4
    return-void

    .line 543
    .end local v1    # "oneSkuVariant":Ljava/lang/String;
    .end local v2    # "phoneRestrictionPolicy":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 544
    const-string v5, "com.samsung.intent.action.setCardDataInit"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 546
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 547
    const-string v5, "com.samsung.intent.action.setCardDataInit"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v1    # "oneSkuVariant":Ljava/lang/String;
    .restart local v2    # "phoneRestrictionPolicy":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    :cond_7
    move v3, v4

    .line 582
    goto :goto_1
.end method

.method private IsNANetwork(Ljava/lang/String;)Z
    .locals 3
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 5358
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5359
    .local v0, "networkMcc":Ljava/lang/String;
    const-string v1, "31[0-6]|302"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/SIMRecords;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/SIMRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailByNetworkName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/SIMRecords;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/SIMRecords;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->selectedNwkName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/uicc/SIMRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/SIMRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->selectedNwkName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/uicc/SIMRecords;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/SIMRecords;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAPBound:Z

    return p1
.end method

.method private checkCFISavailable([B)V
    .locals 6
    .param p1, "table"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1932
    const-string v1, "Enter checkCFIS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1935
    :try_start_0
    const-string v1, "1"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1937
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTActive(CFIS) : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->CFIS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTAvaiable(CFIS) : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->CFIS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1941
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->CFIS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->CFIS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCFIS:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1960
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableCFIS is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCFIS:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1961
    const-string v1, "KOR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1962
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCFIS:Z

    if-eqz v1, :cond_5

    .line 1965
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x6fcb

    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1966
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1972
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v3

    .line 1941
    goto :goto_0

    .line 1944
    :cond_3
    :try_start_1
    const-string v1, "2"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1946
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1947
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->CFI_STATUS:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCFIS:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1954
    :catch_0
    move-exception v0

    .line 1955
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "ArrayIndexOutOfBoundsException"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1956
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCFIS:Z

    goto :goto_2

    .line 1951
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    :try_start_2
    const-string v1, "ICCType is Unknown"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1968
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f13

    const/16 v3, 0x18

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1969
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto :goto_2
.end method

.method private checkCHV1available([B)V
    .locals 5
    .param p1, "table"    # [B

    .prologue
    const/4 v2, 0x1

    .line 1605
    const-string v1, "Enter  checkCHV1available"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1608
    :try_start_0
    const-string v1, "1"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1612
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTActive(CHV1) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->CHV1_DISABLE:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTAvaiable(CHV1) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->CHV1_DISABLE:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1615
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->CHV1_DISABLE:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->CHV1_DISABLE:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCHV1:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1634
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableCHV1 is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCHV1:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1636
    :goto_2
    return-void

    .line 1615
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1619
    :cond_2
    :try_start_1
    const-string v1, "2"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1621
    const-string v1, "3G - CHV1 available"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1622
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCHV1:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1628
    :catch_0
    move-exception v0

    .line 1629
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Exception"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1630
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCHV1:Z

    goto :goto_2

    .line 1625
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_2
    const-string v1, "ICCType is Unknown"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private checkEONSavailable([B)V
    .locals 6
    .param p1, "table"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1472
    const-string v3, "Enter checkEONS"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1475
    :try_start_0
    const-string v3, "1"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1480
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v3, :cond_0

    .line 1481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTActive(PNN) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->PNN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1482
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTAvaiable(PNN) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->PNN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1483
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->PNN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->PNN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledPNN:Z

    .line 1486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTActive(OPL) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->OPL:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTAvaiable(OPL) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->OPL:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1488
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->OPL:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->OPL:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledOPL:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1509
    :cond_0
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsEnabledPNN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledPNN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsEnabledOPL is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledOPL:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1511
    :goto_3
    return-void

    :cond_1
    move v3, v2

    .line 1483
    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 1488
    goto :goto_1

    .line 1491
    :cond_3
    :try_start_1
    const-string v1, "2"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1493
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1494
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->PLMN_NETWORK_NAME:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledPNN:Z

    .line 1495
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->OPERATOR_PLMN_LIST:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledOPL:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1502
    :catch_0
    move-exception v0

    .line 1503
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Exception"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1504
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledPNN:Z

    .line 1505
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledOPL:Z

    goto :goto_3

    .line 1499
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    :try_start_2
    const-string v1, "ICCType is Unknown"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method private checkFDNavailable([B)V
    .locals 5
    .param p1, "table"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1514
    const-string v1, "Enter  checkFDNavailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1517
    :try_start_0
    const-string v1, "1"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1519
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTActive(FDN) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->FDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTAvaiable(FDN) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->FDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1522
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->FDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->FDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableFDN:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1541
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableFDN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableFDN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1542
    :goto_2
    return-void

    :cond_1
    move v1, v2

    .line 1522
    goto :goto_0

    .line 1525
    :cond_2
    :try_start_1
    const-string v1, "2"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1527
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1528
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->FDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableFDN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1535
    :catch_0
    move-exception v0

    .line 1536
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Exception"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1537
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableFDN:Z

    goto :goto_2

    .line 1532
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_2
    const-string v1, "ICCType is Unknown"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private checkMBDNavailable([B)V
    .locals 6
    .param p1, "table"    # [B

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1842
    const-string v1, "Enter  checkMBDNavailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1845
    :try_start_0
    const-string v1, "1"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1847
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTActive(MBDN) : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MAILBOX_DIALLING_NUMBERS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTAvaiable(MBDN) : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MAILBOX_DIALLING_NUMBERS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1851
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MAILBOX_DIALLING_NUMBERS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MAILBOX_DIALLING_NUMBERS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1869
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableMBDN is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1871
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    if-ne v1, v2, :cond_4

    .line 1872
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1873
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x6fc9

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1880
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 1851
    goto :goto_0

    .line 1854
    :cond_2
    :try_start_1
    const-string v1, "2"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1856
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1857
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->MBDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1864
    :catch_0
    move-exception v0

    .line 1865
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Exception"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1866
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    goto :goto_1

    .line 1861
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_2
    const-string v1, "ICCType is Unknown"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1875
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1876
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v3, 0x6f17

    const/16 v4, 0x6f4a

    const/16 v5, 0xb

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v2, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_2
.end method

.method private checkMSISDNavailable([B)V
    .locals 7
    .param p1, "table"    # [B

    .prologue
    const/16 v6, 0x6f40

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1673
    const-string v1, "Enter  checkMSISDNavailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1676
    :try_start_0
    const-string v1, "1"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1680
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTActive(MSISDN) : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MSISDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTAvaiable(MSISDN) : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MSISDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1684
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MSISDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MSISDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMSISDN:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1703
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMSISDN:Z

    if-ne v1, v2, :cond_1

    .line 1704
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    move-result v3

    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v6, v3, v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 1706
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1709
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableMSISDN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMSISDN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1711
    :goto_2
    return-void

    :cond_2
    move v1, v3

    .line 1684
    goto :goto_0

    .line 1687
    :cond_3
    :try_start_1
    const-string v1, "2"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1689
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1690
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->MSISDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMSISDN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1697
    :catch_0
    move-exception v0

    .line 1698
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Exception"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1699
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMSISDN:Z

    goto :goto_2

    .line 1694
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    :try_start_2
    const-string v1, "ICCType is Unknown"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private checkMWISavailable([B)V
    .locals 6
    .param p1, "table"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1883
    const-string v1, "Enter checkMWIS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1886
    :try_start_0
    const-string v1, "1"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1888
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTActive(MWIS) : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MWIS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTAvaiable(MWIS) : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MWIS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1892
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MWIS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MWIS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMWIS:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1911
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableMWIS is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMWIS:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1912
    const-string v1, "KOR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1913
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMWIS:Z

    if-eqz v1, :cond_5

    .line 1915
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x6fca

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1916
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1929
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v3

    .line 1892
    goto :goto_0

    .line 1895
    :cond_3
    :try_start_1
    const-string v1, "2"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1897
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1898
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->MWI_STATUS:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMWIS:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1905
    :catch_0
    move-exception v0

    .line 1906
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "ArrayIndexOutOfBoundsException"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1907
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMWIS:Z

    goto :goto_2

    .line 1902
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    :try_start_2
    const-string v1, "ICCType is Unknown"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1922
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f11

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1925
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto :goto_2
.end method

.method private checkOCSGLAvailable([B)V
    .locals 8
    .param p1, "table"    # [B

    .prologue
    .line 1578
    const/4 v1, 0x0

    .line 1579
    .local v1, "isAvailable86":Z
    const/4 v2, 0x0

    .line 1581
    .local v2, "isAvailable92":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v3, :cond_2

    .line 1582
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->OPERATOR_CSG_LISTS_AND_INDICATIONS:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGL:Z

    .line 1584
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->ALLOWED_CSG_LISTS_AND_INDICATIONS:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    .line 1586
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->CSG_DISPLAY_CONTROL:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1596
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailableOCSGL is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGL:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1598
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGL:Z

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 1599
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0x4f84

    const/16 v5, 0x64

    new-instance v6, Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1600
    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1602
    :cond_1
    return-void

    .line 1589
    :cond_2
    :try_start_1
    const-string v3, "UST is Null for checking OCSGL"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1591
    :catch_0
    move-exception v0

    .line 1592
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "Exception"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1593
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGL:Z

    goto :goto_0
.end method

.method private checkPSISMSCavailable([B)V
    .locals 4
    .param p1, "table"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1818
    const-string v1, "Enter  checkPSISMSCavailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1821
    :try_start_0
    const-string v1, "2"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1823
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1824
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SM_SERVICE_PARAMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SM_OVER_IP:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAvailablePSISMSC:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1838
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailablePSISMSC is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAvailablePSISMSC:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1839
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 1824
    goto :goto_0

    .line 1829
    :cond_2
    :try_start_1
    const-string v1, "ICCType is Unknown or 2G"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1832
    :catch_0
    move-exception v0

    .line 1833
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Exception"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1834
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAvailablePSISMSC:Z

    goto :goto_1
.end method

.method private checkSDNavailable([B)V
    .locals 5
    .param p1, "table"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1546
    const-string v1, "Enter  checkSDNavailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1549
    :try_start_0
    const-string v1, "1"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1551
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTActive(SDN) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTAvaiable(SDN) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1554
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAvailableSDN:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1572
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsAvailableSDN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAvailableSDN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1573
    :goto_2
    return-void

    :cond_1
    move v1, v2

    .line 1554
    goto :goto_0

    .line 1557
    :cond_2
    :try_start_1
    const-string v1, "2"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1559
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1560
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAvailableSDN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1567
    :catch_0
    move-exception v0

    .line 1568
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Exception"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1569
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAvailableSDN:Z

    goto :goto_2

    .line 1564
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_2
    const-string v1, "ICCType is Unknown"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private checkSMSPavailable([B)V
    .locals 5
    .param p1, "table"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1714
    const-string v1, "Enter  checkSMSPavailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1718
    :try_start_0
    const-string v1, "1"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1722
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTActive(SMSP) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMSP:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTAvaiable(SMSP) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMSP:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1725
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMSP:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMSP:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMSP:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1744
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableSMSP is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMSP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1745
    :goto_2
    return-void

    :cond_1
    move v1, v2

    .line 1725
    goto :goto_0

    .line 1728
    :cond_2
    :try_start_1
    const-string v1, "2"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1730
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1731
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SM_SERVICE_PARAMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMSP:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1738
    :catch_0
    move-exception v0

    .line 1739
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Exception"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1740
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMSP:Z

    goto :goto_2

    .line 1735
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_2
    const-string v1, "ICCType is Unknown"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private checkSMSavailable([B)V
    .locals 8
    .param p1, "table"    # [B

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1748
    const-string v5, "Enter  checkSMSavailable"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1751
    :try_start_0
    const-string v5, "1"

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1753
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-le v5, v3, :cond_2

    const-string v5, "CTC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 1756
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "table[SST_SMS_BYTE]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    aget-byte v5, p1, v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1757
    const-string v3, "gsm.sim.gsmoperator.numeric"

    const-string v5, ""

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1758
    .local v2, "operatorSIM":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1759
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1761
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSMSavailable : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1762
    const/4 v3, 0x0

    aget-byte v3, p1, v3

    const/4 v5, 0x6

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->findTheEnabledServiceInSST(BI)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMS:Z

    .line 1763
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMS:Z

    if-nez v3, :cond_1

    const-string v3, "00101"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1764
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "table[UST_SMS_BYTE]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    aget-byte v5, p1, v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1765
    const/4 v3, 0x1

    aget-byte v3, p1, v3

    const/4 v5, 0x1

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->findTheEnabledServiceInUST(BI)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMS:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1814
    .end local v2    # "operatorSIM":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailableSMS is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMS:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1815
    :goto_1
    return-void

    .line 1770
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v5, :cond_1

    .line 1771
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSSTActive(SMS) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v7, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1772
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSSTAvaiable(SMS) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v7, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1774
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v6, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v6, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMS:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1808
    :catch_0
    move-exception v0

    .line 1809
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "Exception"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1810
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMS:Z

    goto :goto_1

    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    move v3, v4

    .line 1774
    goto :goto_2

    .line 1778
    :cond_4
    :try_start_2
    const-string v5, "2"

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1780
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v3, :cond_1

    .line 1781
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SM_STORAGE:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMS:Z

    goto/16 :goto_0

    .line 1784
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-le v5, v3, :cond_9

    const-string v5, "CTC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "CHC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1787
    :cond_6
    const-string v5, "4"

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1788
    const-string v5, "ril.IsCSIM"

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    const-string v7, "0"

    invoke-static {v5, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1789
    .local v1, "isCsim":I
    if-ne v1, v3, :cond_7

    .line 1790
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v3, :cond_1

    .line 1791
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SM_STORAGE:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMS:Z

    goto/16 :goto_0

    .line 1794
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v5, :cond_1

    .line 1795
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSSTActive(SMS) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v7, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1796
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSSTAvaiable(SMS) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v7, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1797
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v6, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v6, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_3
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMS:Z

    goto/16 :goto_0

    :cond_8
    move v3, v4

    goto :goto_3

    .line 1804
    .end local v1    # "isCsim":I
    :cond_9
    const-string v3, "ICCType is Unknown"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method private checkSPNavailable([B)V
    .locals 5
    .param p1, "table"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1639
    const-string v1, "Enter  checkSPNavailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1642
    :try_start_0
    const-string v1, "1"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1646
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTActive(SPN) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SPN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTAvaiable(SPN) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SPN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1649
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SPN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SPN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSPN:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1668
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableSPN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSPN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1670
    :goto_2
    return-void

    :cond_1
    move v1, v2

    .line 1649
    goto :goto_0

    .line 1652
    :cond_2
    :try_start_1
    const-string v1, "2"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1654
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1655
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SPN:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSPN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1662
    :catch_0
    move-exception v0

    .line 1663
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Exception"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1664
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSPN:Z

    goto :goto_2

    .line 1659
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_2
    const-string v1, "ICCType is Unknown"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private checkSimChanged()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 3635
    const-string v7, "checkSimChanged enter"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3637
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 3640
    .local v5, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.samsung.action.SIM_ICCID_CHANGED"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3641
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.action.SIM_ICCID_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3643
    .local v2, "intent2":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOldICCID:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 3644
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    if-le v7, v6, :cond_1

    .line 3645
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key_iccid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOldICCID:Ljava/lang/String;

    .line 3650
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOldICCID:Ljava/lang/String;

    .line 3652
    .local v4, "old":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 3653
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3655
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    if-le v7, v6, :cond_2

    .line 3656
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key_iccid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3659
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3662
    const-string v6, "ril.isIccChanged"

    const-string v7, "1"

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3663
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3664
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3691
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_2
    return-void

    .line 3647
    .end local v4    # "old":Ljava/lang/String;
    :cond_1
    const-string v7, "key_iccid"

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOldICCID:Ljava/lang/String;

    goto :goto_0

    .line 3658
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v4    # "old":Ljava/lang/String;
    :cond_2
    const-string v6, "key_iccid"

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 3667
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    sget-boolean v7, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v7, :cond_4

    .line 3668
    const-string v7, "old iccid is ******  current is ******"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 3673
    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    move v3, v6

    .line 3675
    .local v3, "isSimChanged":Z
    :goto_4
    if-eqz v3, :cond_7

    .line 3676
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3678
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    if-le v7, v6, :cond_6

    .line 3679
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key_iccid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3682
    :goto_5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3684
    const-string v6, "ril.isIccChanged"

    const-string v7, "1"

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3685
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3686
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 3670
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "isSimChanged":Z
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "old iccid is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  current is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    goto :goto_3

    .line 3673
    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    .line 3681
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "isSimChanged":Z
    :cond_6
    const-string v6, "key_iccid"

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    .line 3688
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_7
    const-string v6, "ril.isIccChanged"

    const-string v7, "0"

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private dispatchGsmMessage(Landroid/telephony/SmsMessage;)I
    .locals 1
    .param p1, "message"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 4007
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 4008
    const/4 v0, 0x0

    return v0
.end method

.method private findTheEnabledServiceInSST(BI)Z
    .locals 2
    .param p1, "b"    # B
    .param p2, "position"    # I

    .prologue
    .line 1008
    const-string v0, "findTheEnabledServiceInSST"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[findTheEnabledService] Byte before = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[findTheEnabledService] Byte before = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1013
    shr-int v0, p1, p2

    int-to-byte p1, v0

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[findTheEnabledService] Byte After = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[findTheEnabledService] Byte After = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1017
    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1018
    const/4 v0, 0x1

    .line 1020
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findTheEnabledServiceInUST(BI)Z
    .locals 3
    .param p1, "b"    # B
    .param p2, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 1025
    const-string v1, "findTheEnabledServiceInUST"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[findTheEnabledService] Byte before = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1028
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[findTheEnabledService] Byte before = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1029
    shr-int v1, p1, p2

    int-to-byte p1, v1

    .line 1030
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[findTheEnabledService] Byte After = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1031
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[findTheEnabledService] Byte After = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1033
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v0, :cond_0

    .line 1036
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getExtFromEf(I)I
    .locals 3
    .param p1, "ef"    # I

    .prologue
    .line 878
    packed-switch p1, :pswitch_data_0

    .line 888
    const/16 v0, 0x6f4a

    .line 890
    .local v0, "ext":I
    :goto_0
    return v0

    .line 881
    .end local v0    # "ext":I
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v2, :cond_0

    .line 882
    const/16 v0, 0x6f4e

    .restart local v0    # "ext":I
    goto :goto_0

    .line 884
    .end local v0    # "ext":I
    :cond_0
    const/16 v0, 0x6f4a

    .line 886
    .restart local v0    # "ext":I
    goto :goto_0

    .line 878
    :pswitch_data_0
    .packed-switch 0x6f40
        :pswitch_0
    .end packed-switch
.end method

.method private getIccIdfromFile()V
    .locals 8

    .prologue
    .line 949
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    const-string v5, "CTC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 951
    const-string v5, "getIccIdfromFile"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 952
    const/4 v3, 0x0

    .line 953
    .local v3, "fos":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 955
    .local v1, "dos":Ljava/io/DataInputStream;
    const/4 v2, 0x0

    .line 956
    .local v2, "file":Ljava/io/File;
    const-string v5, "CTC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 957
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    if-nez v5, :cond_1

    .line 958
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    const-string v5, "/data/misc/radio/cicd"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 965
    .restart local v2    # "file":Ljava/io/File;
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 989
    .end local v1    # "dos":Ljava/io/DataInputStream;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileInputStream;
    :cond_0
    :goto_1
    return-void

    .line 960
    .restart local v1    # "dos":Ljava/io/DataInputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/FileInputStream;
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    const-string v5, "/data/misc/radio/cicd2"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "file":Ljava/io/File;
    goto :goto_0

    .line 963
    :cond_2
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    const-string v5, "/data/misc/radio/cicd2"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "file":Ljava/io/File;
    goto :goto_0

    .line 969
    :cond_3
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    .end local v3    # "fos":Ljava/io/FileInputStream;
    .local v4, "fos":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    new-array v0, v5, [B

    .line 971
    .local v0, "bytes":[B
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 972
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 977
    if-eqz v1, :cond_4

    .line 978
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 979
    const/4 v1, 0x0

    .line 981
    :cond_4
    if-eqz v4, :cond_8

    .line 982
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 983
    const/4 v3, 0x0

    .end local v4    # "fos":Ljava/io/FileInputStream;
    .restart local v3    # "fos":Ljava/io/FileInputStream;
    goto :goto_1

    .line 973
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v5

    .line 977
    :goto_2
    if-eqz v1, :cond_5

    .line 978
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 979
    const/4 v1, 0x0

    .line 981
    :cond_5
    if-eqz v3, :cond_0

    .line 982
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 983
    const/4 v3, 0x0

    goto :goto_1

    .line 976
    :catchall_0
    move-exception v5

    .line 977
    :goto_3
    if-eqz v1, :cond_6

    .line 978
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 979
    const/4 v1, 0x0

    .line 981
    :cond_6
    if-eqz v3, :cond_7

    .line 982
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 983
    const/4 v3, 0x0

    .line 986
    :cond_7
    :goto_4
    throw v5

    .line 985
    :catch_1
    move-exception v6

    goto :goto_4

    .line 976
    .end local v3    # "fos":Ljava/io/FileInputStream;
    .restart local v4    # "fos":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileInputStream;
    .restart local v3    # "fos":Ljava/io/FileInputStream;
    goto :goto_3

    .line 985
    :catch_2
    move-exception v5

    goto :goto_1

    .line 973
    .end local v3    # "fos":Ljava/io/FileInputStream;
    .restart local v4    # "fos":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileInputStream;
    .restart local v3    # "fos":Ljava/io/FileInputStream;
    goto :goto_2

    .line 985
    .end local v3    # "fos":Ljava/io/FileInputStream;
    .restart local v0    # "bytes":[B
    .restart local v4    # "fos":Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    goto :goto_1

    :cond_8
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileInputStream;
    .restart local v3    # "fos":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private getSpnForCurrentLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "spnOverrideString"    # Ljava/lang/String;

    .prologue
    .line 5529
    if-nez p1, :cond_0

    .line 5530
    const/4 v10, 0x0

    .line 5557
    :goto_0
    return-object v10

    .line 5536
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 5537
    .local v2, "curLoc":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 5538
    .local v5, "l":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 5540
    .local v1, "c":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 5541
    .local v9, "spnOverrides":[Ljava/lang/String;
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_4

    aget-object v8, v0, v4

    .line 5542
    .local v8, "so":Ljava/lang/String;
    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 5544
    .local v7, "s":[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 5546
    const/4 v10, 0x0

    aget-object v10, v7, v10

    goto :goto_0

    .line 5549
    :cond_1
    const/4 v10, 0x0

    aget-object v10, v7, v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 5550
    .local v3, "entryLoc":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 5551
    array-length v10, v3

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 5552
    :cond_2
    const/4 v10, 0x1

    aget-object v10, v7, v10

    goto :goto_0

    .line 5541
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5557
    .end local v3    # "entryLoc":[Ljava/lang/String;
    .end local v7    # "s":[Ljava/lang/String;
    .end local v8    # "so":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 8
    .param p1, "start"    # Z
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x7

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 4986
    if-eqz p1, :cond_2

    .line 4989
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-ne v2, v3, :cond_1

    .line 4995
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 5141
    :goto_0
    return-void

    .line 4998
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 5002
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$2;->$SwitchMap$com$android$internal$telephony$uicc$SIMRecords$GetSpnFsmState:[I

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 5139
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_0

    .line 5004
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 5006
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x6f46

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 5008
    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 5010
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_0

    .line 5013
    :pswitch_1
    if-eqz p2, :cond_a

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_a

    .line 5014
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 5015
    .local v1, "data":[B
    aget-byte v2, v1, v5

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    .line 5016
    const/4 v2, 0x1

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 5020
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_OperatorNameRuleForDcm"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5021
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v3, "44010"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5022
    const-string v2, "NTT DOCOMO"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 5029
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spnDisplayCondition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5033
    const-string v2, "51505"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5034
    const-string v2, "SUN"

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    .line 5039
    :cond_4
    const-string v2, "LRA"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 5040
    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 5041
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 5055
    :cond_5
    :goto_2
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_0

    .line 5023
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v3, "44020"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5024
    const-string v2, "SoftBank"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    goto :goto_1

    .line 5044
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5045
    .local v0, "cdmaOperatorNumeric":Ljava/lang/String;
    const-string v2, "000000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "310120"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "316010"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 5046
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operatorNumeric : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5047
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    goto :goto_2

    .line 5050
    :cond_9
    const-string v2, "Do not update PROPERTY_ICC_OPERATOR_ALPHA for CHAMELEON "

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 5057
    .end local v0    # "cdmaOperatorNumeric":Ljava/lang/String;
    .end local v1    # "data":[B
    :cond_a
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x6f14

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 5059
    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 5061
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 5065
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    goto/16 :goto_0

    .line 5069
    :pswitch_2
    if-eqz p2, :cond_f

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_f

    .line 5070
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 5071
    .restart local v1    # "data":[B
    array-length v2, v1

    invoke-static {v1, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 5074
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_OperatorNameRuleForDcm"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5075
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v3, "44010"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5076
    const-string v2, "NTT DOCOMO"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 5081
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN_CPHS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5082
    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 5083
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 5096
    :goto_3
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_0

    .line 5086
    :cond_c
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5087
    .restart local v0    # "cdmaOperatorNumeric":Ljava/lang/String;
    const-string v2, "000000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "310120"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "316010"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 5088
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operatorNumeric : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5089
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    goto :goto_3

    .line 5092
    :cond_e
    const-string v2, "Do not update PROPERTY_ICC_OPERATOR_ALPHA for CHAMELEON "

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 5098
    .end local v0    # "cdmaOperatorNumeric":Ljava/lang/String;
    .end local v1    # "data":[B
    :cond_f
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x6f18

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 5100
    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 5102
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_0

    .line 5106
    :pswitch_3
    if-eqz p2, :cond_14

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_14

    .line 5107
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 5108
    .restart local v1    # "data":[B
    array-length v2, v1

    invoke-static {v1, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 5111
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_OperatorNameRuleForDcm"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5112
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v3, "44010"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5113
    const-string v2, "NTT DOCOMO"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 5118
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5119
    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v2

    if-nez v2, :cond_11

    .line 5120
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 5136
    .end local v1    # "data":[B
    :goto_4
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_0

    .line 5123
    .restart local v1    # "data":[B
    :cond_11
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5124
    .restart local v0    # "cdmaOperatorNumeric":Ljava/lang/String;
    const-string v2, "000000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "310120"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "316010"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 5125
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operatorNumeric : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5126
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    goto :goto_4

    .line 5129
    :cond_13
    const-string v2, "Do not update PROPERTY_ICC_OPERATOR_ALPHA for CHAMELEON "

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 5133
    .end local v0    # "cdmaOperatorNumeric":Ljava/lang/String;
    .end local v1    # "data":[B
    :cond_14
    const-string v2, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 5002
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleEfCspData([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    const/4 v5, 0x1

    .line 5288
    array-length v3, p1

    div-int/lit8 v1, v3, 0x2

    .line 5290
    .local v1, "usedCspGroups":I
    const/16 v2, -0x40

    .line 5292
    .local v2, "valueAddedServicesGroup":B
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 5293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 5294
    mul-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    if-ne v3, v2, :cond_1

    .line 5295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CSP] found ValueAddedServicesGroup, value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5296
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_0

    .line 5300
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 5313
    :goto_1
    return-void

    .line 5302
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 5305
    const-string v3, "[CSP] Set Automatic Network Selection"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5306
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_1

    .line 5293
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5312
    :cond_2
    const-string v3, "[CSP] Value Added Service Group (0xC0), not found!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleFileUpdate(I)V
    .locals 6
    .param p1, "efid"    # I

    .prologue
    const/16 v4, 0x6f40

    const/4 v5, 0x1

    .line 3717
    sparse-switch p1, :sswitch_data_0

    .line 3791
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onSimPhonebookRefresh()V

    .line 3792
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    .line 3797
    :cond_0
    :goto_0
    return-void

    .line 3719
    :sswitch_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3720
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 3724
    :sswitch_1
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3725
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 3729
    :sswitch_2
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3730
    const-string v1, "[CSP] SIM Refresh for EF_CSP_CPHS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3731
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f15

    const/16 v3, 0x21

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 3735
    :sswitch_3
    const-string v1, "SIM Refresh called for EF_FDN"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3736
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    goto :goto_0

    .line 3739
    :sswitch_4
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3740
    const-string v1, "SIM Refresh called for EF_MSISDN"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3741
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    move-result v2

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v5, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 3746
    :sswitch_5
    const-string v1, "SIM Refresh called for EF_CFIS or EF_CFF_CPHS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3747
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadCallForwardingRecords()V

    goto/16 :goto_0

    .line 3752
    :sswitch_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3755
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3756
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x2ff0

    const/16 v3, 0x206

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 3760
    :sswitch_7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f42

    const/16 v3, 0x20a

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3761
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3762
    const-string v1, "loading EF_SMSP on refresh"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3764
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.SIM_REFRESH_INIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3765
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3770
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isRefreshedBySTK:Z

    goto/16 :goto_0

    .line 3776
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_8
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3777
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f7b    # 3.9992E-41f

    const/16 v3, 0x209

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 3781
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onSimPhonebookRefresh()V

    goto/16 :goto_0

    .line 3717
    :sswitch_data_0
    .sparse-switch
        0x2ff0 -> :sswitch_6
        0x6f13 -> :sswitch_5
        0x6f15 -> :sswitch_2
        0x6f17 -> :sswitch_1
        0x6f3a -> :sswitch_9
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_4
        0x6f42 -> :sswitch_7
        0x6f7b -> :sswitch_8
        0x6fc7 -> :sswitch_0
        0x6fcb -> :sswitch_5
    .end sparse-switch
.end method

.method private handleFileUpdateExt(I)V
    .locals 5
    .param p1, "efid"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3804
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 3805
    const-string v0, "ril.ICC_TYPE"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    .line 3807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIMRecords:HandleFileUpdateEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->logv(Ljava/lang/String;)V

    .line 3809
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2fe2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3810
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3812
    sparse-switch p1, :sswitch_data_0

    .line 3886
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isRefreshedBySTK:Z

    .line 3889
    :cond_0
    :goto_0
    return-void

    .line 3815
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fc9

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3816
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto :goto_0

    .line 3820
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3821
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto :goto_0

    .line 3825
    :sswitch_2
    const-string v0, "KOR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3827
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fca

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3828
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto :goto_0

    .line 3835
    :sswitch_3
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto :goto_0

    .line 3839
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fcd

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3840
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto :goto_0

    .line 3845
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fc6

    const/16 v2, 0x1f6

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3847
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3848
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fc5

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3850
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_0

    .line 3854
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3855
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_0

    .line 3860
    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f16

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3861
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_0

    .line 3865
    :sswitch_8
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f15

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3866
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_0

    .line 3870
    :sswitch_9
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2fe7

    const/16 v2, 0x204

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3871
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_0

    .line 3874
    :sswitch_a
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x4f1c

    const/16 v2, 0x205

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3875
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_0

    .line 3879
    :sswitch_b
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x4f84

    const/16 v2, 0x64

    new-instance v3, Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3880
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_0

    .line 3812
    :sswitch_data_0
    .sparse-switch
        0x2fe7 -> :sswitch_9
        0x4f1c -> :sswitch_a
        0x4f84 -> :sswitch_b
        0x6f14 -> :sswitch_3
        0x6f15 -> :sswitch_8
        0x6f16 -> :sswitch_7
        0x6f18 -> :sswitch_3
        0x6f38 -> :sswitch_6
        0x6f46 -> :sswitch_3
        0x6fad -> :sswitch_1
        0x6fc5 -> :sswitch_5
        0x6fc6 -> :sswitch_5
        0x6fc9 -> :sswitch_0
        0x6fca -> :sswitch_2
        0x6fcd -> :sswitch_4
    .end sparse-switch
.end method

.method private handleOPL(Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "messages"    # Ljava/util/ArrayList;

    .prologue
    const/16 v11, 0xe

    const/16 v10, 0xa

    const/4 v9, 0x6

    const/16 v8, 0x10

    const/4 v7, 0x0

    .line 4154
    const-string v2, "ffffffffffffffff"

    .line 4156
    .local v2, "fdata":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4158
    .local v0, "count":I
    iput v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_count:I

    .line 4160
    new-array v5, v0, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    .line 4161
    new-array v5, v0, [I

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC1:[I

    .line 4162
    new-array v5, v0, [I

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC2:[I

    .line 4163
    new-array v5, v0, [I

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_INDEX:[I

    .line 4165
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 4166
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    .line 4167
    .local v1, "data":[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 4170
    .local v4, "sdata":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 4171
    const-string v5, "[handleOPL] EF_OPL contains Null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4173
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v6, v5, v3

    .line 4174
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC1:[I

    aput v7, v5, v3

    .line 4175
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC2:[I

    aput v7, v5, v3

    .line 4176
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_INDEX:[I

    aput v7, v5, v3

    .line 4192
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleOPL]Load OPL_MCCMNC["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleOPL]Load OPL_LAC1["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC1:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleOPL]Load OPL_LAC2["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC2:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4195
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleOPL]Load OPL_INDEX["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_INDEX:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4197
    iget v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_count:I

    .line 4199
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsOPLExist:Z

    .line 4165
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 4178
    :cond_0
    const-string v5, "[handleOPL] EF_OPL contains Data(Not Null)"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4179
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    invoke-virtual {v4, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->MccMncConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 4181
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_1

    .line 4182
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC1:[I

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v3

    .line 4183
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC2:[I

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v3

    .line 4184
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_INDEX:[I

    invoke-virtual {v4, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v3

    goto/16 :goto_1

    .line 4186
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC1:[I

    aput v7, v5, v3

    .line 4187
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC2:[I

    aput v7, v5, v3

    .line 4188
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_INDEX:[I

    aput v7, v5, v3

    goto/16 :goto_1

    .line 4201
    .end local v1    # "data":[B
    .end local v4    # "sdata":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private handlePNN(Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "messages"    # Ljava/util/ArrayList;

    .prologue
    const/4 v9, 0x0

    .line 4117
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4119
    .local v0, "count":I
    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->PNN_Value:[Ljava/lang/String;

    .line 4121
    const-string v2, "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

    .line 4123
    .local v2, "fdata":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 4124
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v1, v6

    check-cast v1, [B

    .line 4126
    .local v1, "data":[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 4128
    .local v4, "sdata":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 4129
    new-instance v5, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v6, v1

    invoke-direct {v5, v1, v9, v6}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 4131
    .local v5, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4132
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v6

    const/16 v7, 0x43

    if-ne v6, v7, :cond_0

    .line 4133
    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 4134
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->PNN_Value:[Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v6, v3

    .line 4142
    :cond_0
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handlePnns] Load PNN Value["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->PNN_Value:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4144
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPNNExist:Z

    .line 4123
    .end local v5    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4136
    .restart local v5    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->PNN_Value:[Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v8

    array-length v8, v8

    invoke-static {v7, v9, v8}, Lcom/android/internal/telephony/uicc/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    goto :goto_1

    .line 4147
    .end local v5    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_2
    const-string v6, "[handlePNNs] data is Null !!!"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    goto :goto_2

    .line 4151
    .end local v1    # "data":[B
    .end local v4    # "sdata":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 3
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    .line 3964
    const-string v1, "ril.modem.board"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3965
    .local v0, "modemName":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 3966
    const-string v1, "handleSimRefresh received without input"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4000
    :cond_0
    :goto_0
    return-void

    .line 3970
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3976
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isRefreshedBySTK:Z

    .line 3978
    iget v1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    packed-switch v1, :pswitch_data_0

    .line 3997
    const-string v1, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3980
    :pswitch_0
    const-string v1, "handleSimRefresh with SIM_FILE_UPDATED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3981
    iget v1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleFileUpdate(I)V

    goto :goto_0

    .line 3984
    :pswitch_1
    const-string v1, "handleSimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3986
    const-string v1, "MDM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "MSM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3987
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onIccRefreshInit()V

    .line 3989
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onSimPhonebookRefresh()V

    goto :goto_0

    .line 3993
    :pswitch_2
    const-string v1, "handleSimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3978
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleSktEf([B)Ljava/lang/String;
    .locals 14
    .param p1, "data"    # [B

    .prologue
    .line 4069
    const-wide/16 v2, 0x0

    .line 4070
    .local v2, "imsi_s1":J
    const-wide/16 v4, 0x0

    .line 4074
    .local v4, "imsi_s2":J
    const/16 v7, 0xa

    new-array v6, v7, [C

    fill-array-data v6, :array_0

    .line 4076
    .local v6, "mintab":[C
    const/4 v7, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    const/4 v10, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v7, v10

    int-to-long v4, v7

    .line 4077
    const/4 v7, 0x5

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    const/4 v10, 0x4

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    const/4 v11, 0x3

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    or-int/2addr v7, v10

    int-to-long v2, v7

    .line 4079
    const-wide/16 v10, 0x0

    cmp-long v7, v2, v10

    if-nez v7, :cond_0

    .line 4080
    const-string v0, "0000000"

    .line 4098
    .local v0, "Min1":Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Min1: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4101
    .local v1, "Min2":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0x64

    div-long v10, v4, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4102
    const-wide/16 v10, 0x64

    rem-long/2addr v4, v10

    .line 4103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0xa

    div-long v10, v4, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0xa

    rem-long v10, v4, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Min2: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4108
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x30

    if-eq v7, v10, :cond_2

    .line 4109
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4111
    :goto_1
    return-object v7

    .line 4082
    .end local v0    # "Min1":Ljava/lang/String;
    .end local v1    # "Min2":Ljava/lang/String;
    :cond_0
    const/16 v7, 0xe

    ushr-long v8, v2, v7

    .line 4083
    .local v8, "temp":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0x64

    div-long v10, v8, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4084
    .restart local v0    # "Min1":Ljava/lang/String;
    const-wide/16 v10, 0x64

    rem-long/2addr v8, v10

    .line 4085
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0xa

    div-long v10, v8, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4086
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0xa

    rem-long v10, v8, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4087
    const-wide/16 v10, 0x3fff

    and-long/2addr v2, v10

    .line 4089
    const/16 v7, 0xa

    ushr-long v10, v2, v7

    const-wide/16 v12, 0xf

    and-long v8, v10, v12

    .line 4090
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0xa

    cmp-long v10, v8, v10

    if-nez v10, :cond_1

    const-wide/16 v8, 0x0

    .end local v8    # "temp":J
    :cond_1
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4091
    const-wide/16 v10, 0x3ff

    and-long v8, v2, v10

    .line 4092
    .restart local v8    # "temp":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0x64

    div-long v10, v8, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4093
    const-wide/16 v10, 0x64

    rem-long/2addr v8, v10

    .line 4094
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0xa

    div-long v10, v8, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4095
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0xa

    rem-long v10, v8, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4111
    .end local v8    # "temp":J
    .restart local v1    # "Min2":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 4074
    nop

    :array_0
    .array-data 2
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
    .end array-data
.end method

.method private handleSms([B)V
    .locals 7
    .param p1, "ba"    # [B

    .prologue
    const/4 v6, 0x0

    .line 4012
    aget-byte v3, p1, v6

    if-eqz v3, :cond_0

    .line 4013
    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4017
    :cond_0
    aget-byte v3, p1, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 4018
    array-length v1, p1

    .line 4022
    .local v1, "n":I
    add-int/lit8 v3, v1, -0x1

    new-array v2, v3, [B

    .line 4023
    .local v2, "pdu":[B
    const/4 v3, 0x1

    add-int/lit8 v4, v1, -0x1

    invoke-static {p1, v3, v2, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 4024
    const-string v3, "3gpp"

    invoke-static {v2, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 4026
    .local v0, "message":Landroid/telephony/SmsMessage;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispatchGsmMessage(Landroid/telephony/SmsMessage;)I

    .line 4028
    .end local v0    # "message":Landroid/telephony/SmsMessage;
    .end local v1    # "n":I
    .end local v2    # "pdu":[B
    :cond_1
    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 4032
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4034
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4035
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 4037
    .local v0, "ba":[B
    aget-byte v6, v0, v9

    if-eqz v6, :cond_0

    .line 4038
    const-string v6, "ENF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4043
    :cond_0
    aget-byte v6, v0, v9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 4044
    array-length v4, v0

    .line 4048
    .local v4, "n":I
    add-int/lit8 v6, v4, -0x1

    new-array v5, v6, [B

    .line 4049
    .local v5, "pdu":[B
    add-int/lit8 v6, v4, -0x1

    invoke-static {v0, v10, v5, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 4050
    const-string v6, "3gpp"

    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 4052
    .local v3, "message":Landroid/telephony/SmsMessage;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispatchGsmMessage(Landroid/telephony/SmsMessage;)I

    .line 4057
    aput-byte v10, v0, v9

    .line 4034
    .end local v3    # "message":Landroid/telephony/SmsMessage;
    .end local v4    # "n":I
    .end local v5    # "pdu":[B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4065
    .end local v0    # "ba":[B
    :cond_2
    return-void
.end method

.method private isCphsMailboxEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5191
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    if-nez v2, :cond_0

    .line 5192
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private isMatchingHplmn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "network"    # Ljava/lang/String;
    .param p2, "sim"    # Ljava/lang/String;

    .prologue
    .line 5390
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isMatchingHplmn(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isMatchingHplmn(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "network"    # Ljava/lang/String;
    .param p2, "sim"    # Ljava/lang/String;
    .param p3, "wild"    # Z

    .prologue
    const/4 v4, 0x5

    const/4 v5, 0x1

    .line 5364
    move-object v1, p1

    .line 5365
    .local v1, "networkPlmn":Ljava/lang/String;
    move-object v2, p2

    .line 5367
    .local v2, "simPlmn":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 5368
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->IsNANetwork(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 5369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5375
    :cond_0
    :goto_0
    if-ne p3, v5, :cond_2

    .line 5381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[dD]"

    const-string v5, "."

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5383
    .local v0, "expr":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    .line 5385
    .end local v0    # "expr":Ljava/lang/String;
    :goto_1
    return v3

    .line 5371
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 5385
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1
.end method

.method private isNeedToShareWithSensor(Ljava/lang/String;)Z
    .locals 2
    .param p1, "operator"    # Ljava/lang/String;

    .prologue
    .line 4205
    if-eqz p1, :cond_1

    .line 4206
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "311480"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "20404"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2044"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4208
    :cond_0
    const/4 v0, 0x1

    .line 4212
    :goto_0
    return v0

    .line 4211
    :cond_1
    const-string v0, "Non VZW SIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4212
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 5
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4939
    if-nez p1, :cond_1

    .line 4952
    :cond_0
    :goto_0
    return v2

    .line 4941
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 4942
    goto :goto_0

    .line 4945
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 4946
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4947
    .local v1, "spdiNet":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 4948
    goto :goto_0
.end method

.method private loadCallForwardingRecords()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4701
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 4702
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fcb

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 4703
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4704
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f13

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4705
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4706
    return-void
.end method

.method private loadEfLiAndEfPl()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x64

    .line 4688
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_0

    .line 4689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 4690
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f05

    new-instance v2, Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4692
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4694
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f05

    new-instance v2, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4696
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4698
    :cond_0
    return-void
.end method

.method private notifyCallForwardIndication()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1978
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v2, v5, :cond_2

    .line 1979
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NAM] SIM Ready - cf icon voice value: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1980
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NAM] SIM Ready - cf icon video value: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1982
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    .line 1984
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    if-eqz v2, :cond_0

    move v4, v3

    :cond_0
    iput v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    .line 1986
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2002
    :goto_1
    return-void

    :cond_1
    move v2, v4

    .line 1982
    goto :goto_0

    .line 1989
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NAM] Not SIM Ready - cf icon voice value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1990
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NAM] Not SIM Ready - cf icon video value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1992
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    .line 1993
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    .line 1994
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1995
    .local v1, "sp2":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1996
    .local v0, "editor2":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cf_iconkey_voice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1997
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cf_iconkey_video"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1998
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cf_imsikey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1999
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1
.end method

.method private notifyEFLockStatus(II)V
    .locals 4
    .param p1, "restype"    # I
    .param p2, "resapdu"    # I

    .prologue
    .line 3944
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3961
    :goto_0
    return-void

    .line 3947
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_EF_LOCK_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3949
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "responseType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3950
    const-string v1, "responseApdu"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3951
    const-string v1, "efLockUser"

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFLockUser:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3952
    const-string v1, "efLockRemote"

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFLockRemote:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3954
    const-string v1, "SIMRecords"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMRecords: notify   [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3955
    const-string v1, "SIMRecords"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMRecords: APDU res [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    const-string v1, "SIMRecords"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMRecords: UserLock [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFLockUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    const-string v1, "SIMRecords"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMRecords: RemoteLock [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFLockRemote:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3960
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private onLocked()V
    .locals 3

    .prologue
    .line 4666
    const-string v0, " fetch EF_LI, EF_PL and EF_ICCID in lock state"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4667
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadEfLiAndEfPl()V

    .line 4669
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2fe2

    const/16 v2, 0x1f8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4671
    return-void
.end method

.method private onNWLocked()V
    .locals 1

    .prologue
    .line 4676
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsOneSkuSupport:Z

    if-eqz v0, :cond_0

    .line 4677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPrevSimStateNwLocked:Z

    .line 4681
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsNeedToReadIccIdOnNwLocked:Z

    if-eqz v0, :cond_1

    .line 4682
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onLocked()V

    .line 4684
    :cond_1
    return-void
.end method

.method private parseEfSpdi([B)V
    .locals 11
    .param p1, "data"    # [B

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 5150
    new-instance v5, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v7, p1

    invoke-direct {v5, p1, v9, v7}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 5152
    .local v5, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    const/4 v3, 0x0

    .line 5154
    .local v3, "plmnEntries":[B
    :goto_0
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5156
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v7

    const/16 v8, 0xa3

    if-ne v7, v8, :cond_0

    .line 5157
    new-instance v6, Lcom/android/internal/telephony/gsm/SimTlv;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v8

    array-length v8, v8

    invoke-direct {v6, v7, v9, v8}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .end local v5    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    .local v6, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    move-object v5, v6

    .line 5160
    .end local v6    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    .restart local v5    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_0
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v7

    const/16 v8, 0x80

    if-ne v7, v8, :cond_3

    .line 5161
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v3

    .line 5166
    :cond_1
    if-nez v3, :cond_4

    .line 5185
    :cond_2
    return-void

    .line 5154
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_0

    .line 5170
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v3

    div-int/lit8 v8, v8, 0x3

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    .line 5172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v7, v1, 0x2

    array-length v8, v3

    if-ge v7, v8, :cond_2

    .line 5174
    new-array v4, v10, [B

    .line 5175
    .local v4, "singlePlmn":[B
    invoke-static {v3, v1, v4, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 5176
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 5177
    .local v0, "encodedPLMN":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->MccMncConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5180
    .local v2, "plmnCode":Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x5

    if-lt v7, v8, :cond_5

    .line 5181
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EF_SPDI network: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5182
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5172
    :cond_5
    add-int/lit8 v1, v1, 0x3

    goto :goto_1
.end method

.method private static declared-synchronized readEfsFile()Ljava/lang/String;
    .locals 8

    .prologue
    .line 4526
    const-class v5, Lcom/android/internal/telephony/uicc/SIMRecords;

    monitor-enter v5

    const/4 v3, 0x0

    .line 4527
    .local v3, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .line 4530
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/efs/imei/ap_key.dat"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4532
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 4534
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 4543
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_0
    monitor-exit v5

    return-object v3

    .line 4536
    :catch_0
    move-exception v2

    .line 4538
    .local v2, "ie":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4539
    :catch_1
    move-exception v4

    goto :goto_0

    .line 4526
    .end local v2    # "ie":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    monitor-exit v5

    throw v4

    .line 4536
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 4535
    :catch_3
    move-exception v4

    goto :goto_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 4526
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private saveFelicaEFs(I)V
    .locals 11
    .param p1, "prop"    # I

    .prologue
    .line 3894
    const/4 v5, 0x0

    .line 3895
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 3897
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v7, 0x0

    .line 3898
    .local v7, "path":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3900
    .local v0, "data":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 3914
    :goto_0
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3915
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3916
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_2
    const-string v8, "SIMRecords"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveEFToFile : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3917
    if-eqz v0, :cond_0

    .line 3918
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 3920
    :cond_0
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 3921
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 3922
    const/4 v1, 0x0

    .line 3923
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    const/4 v5, 0x0

    .line 3925
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "chmod 665 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3931
    :goto_1
    if-eqz v1, :cond_1

    .line 3932
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 3933
    :cond_1
    if-eqz v5, :cond_2

    .line 3934
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 3938
    :cond_2
    :goto_2
    return-void

    .line 3902
    :pswitch_0
    const-string v7, "/data/misc/radio/uicc"

    .line 3903
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->efUICC:[B

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 3904
    goto :goto_0

    .line 3906
    :pswitch_1
    const-string v7, "/data/misc/radio/imoder"

    .line 3907
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->efIMODER:[B

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 3908
    goto :goto_0

    .line 3926
    :catch_0
    move-exception v3

    .line 3927
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    const-string v8, "SIMRecords"

    const-string v9, "saveEFToFile : Error in processed file - "

    invoke-static {v8, v9, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3935
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 3936
    .local v4, "ex":Ljava/io/IOException;
    const-string v8, "SIMRecords"

    const-string v9, "saveEFToFile : close fail!!!"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3926
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v3

    move-object v1, v2

    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 3900
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSpnFromConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 4609
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4610
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 4611
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 4614
    :cond_0
    return-void
.end method

.method private setSysfsForSensor()V
    .locals 7

    .prologue
    .line 4216
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/sensors/grip_sensor/sim_type"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4217
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 4220
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4221
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    if-nez v1, :cond_2

    .line 4222
    :try_start_1
    const-string v4, "sysfs - sensor/sim_type => null"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4235
    :cond_0
    :goto_0
    if-eqz v3, :cond_5

    .line 4237
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v2, v3

    .line 4243
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 4223
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4224
    const-string v4, "There\'s no sysfs - sensor/sim_type"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 4230
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 4231
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sysfs for sensor new File error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4235
    if-eqz v2, :cond_1

    .line 4237
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 4238
    :catch_1
    move-exception v0

    .line 4239
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException caught while closing fileOutputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 4226
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_3
    if-eqz v3, :cond_0

    .line 4227
    const/16 v4, 0x31

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 4232
    :catch_2
    move-exception v0

    move-object v2, v3

    .line 4233
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initSelloutSms createNewFile error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4235
    if-eqz v2, :cond_1

    .line 4237
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 4238
    :catch_3
    move-exception v0

    .line 4239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException caught while closing fileOutputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 4238
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .line 4239
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException caught while closing fileOutputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    move-object v2, v3

    .line 4240
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 4235
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_4

    .line 4237
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 4240
    :cond_4
    :goto_5
    throw v4

    .line 4238
    :catch_5
    move-exception v0

    .line 4239
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException caught while closing fileOutputStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 4235
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 4232
    :catch_6
    move-exception v0

    goto :goto_3

    .line 4230
    :catch_7
    move-exception v0

    goto/16 :goto_2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_5
    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method private setVoiceCallForwardingFlagFromSimRecords()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4272
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4275
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    .line 4277
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    :goto_1
    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    .line 4279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFIS: voicecallForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFIS: videocallForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4304
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 4275
    goto :goto_0

    :cond_1
    move v1, v2

    .line 4277
    goto :goto_1

    .line 4281
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_6

    .line 4283
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_3
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    .line 4287
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    array-length v0, v0

    if-le v0, v1, :cond_5

    .line 4288
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_4

    :goto_4
    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    .line 4294
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFF: voicecallForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFF: videocallForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v0, v2

    .line 4283
    goto :goto_3

    :cond_4
    move v1, v2

    .line 4288
    goto :goto_4

    .line 4292
    :cond_5
    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    goto :goto_5

    .line 4298
    :cond_6
    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    .line 4299
    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    .line 4300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFIS and EF_CFF not valid. voicecallForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFIS and EF_CFF not valid. videocallForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 1
    .param p1, "spn"    # Ljava/lang/String;

    .prologue
    .line 4619
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    .line 4621
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 4622
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 4624
    :cond_0
    return-void
.end method

.method private setVoiceMailByNetworkName(Ljava/lang/String;)V
    .locals 2
    .param p1, "nwkName"    # Ljava/lang/String;

    .prologue
    .line 4629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceMailByNetworkName: NetworkName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4631
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    if-nez v0, :cond_1

    .line 4656
    :cond_0
    :goto_0
    return-void

    .line 4635
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->containsNetworkName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4636
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailNumberByNetworkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 4637
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailTagByNetworkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 4639
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4640
    const-string v0, "DTM"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "KPP"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "KPN"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "XFA"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "XFM"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "XFC"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "XFE"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "XFV"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VDS"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DCO"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4650
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    .line 4654
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceMailByNetworkName: isVoiceMailFixed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private validEfCfis([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 1179
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public IncreaseSMSS()V
    .locals 3

    .prologue
    .line 5731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIncreaseTPMR:Z

    .line 5732
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f43

    const/16 v2, 0x208

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 5733
    return-void
.end method

.method InitAutopreconfig()V
    .locals 13

    .prologue
    .line 4548
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AutoPreconfig : got mccmnc "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4550
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 4551
    .local v6, "preferences":Landroid/content/SharedPreferences;
    const-string v2, ""

    .line 4553
    .local v2, "gid1":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 4554
    const-string v3, "key_gid1"

    .line 4555
    .local v3, "key_gid":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v10

    if-eqz v10, :cond_0

    .line 4556
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "key"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_gid1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4557
    :cond_0
    const-string v10, ""

    invoke-interface {v6, v3, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4558
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AutoPreconfig : got gid1 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4561
    .end local v3    # "key_gid":Ljava/lang/String;
    :cond_1
    const-string v7, ""

    .line 4562
    .local v7, "spCode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v9, v10, 0x1

    .line 4563
    .local v9, "startIdx":I
    add-int/lit8 v0, v9, 0x2

    .line 4564
    .local v0, "endIdx":I
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v0, :cond_3

    .line 4565
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-static {v10, v9, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    .line 4569
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AutoPreconfig : got spcode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4571
    const-string v8, ""

    .line 4572
    .local v8, "spName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 4573
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    .line 4575
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AutoPreconfig : got spname "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4577
    :try_start_0
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 4579
    .local v4, "msg":Landroid/os/Message;
    iget-boolean v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPrevSimStateNwLocked:Z

    if-eqz v10, :cond_4

    .line 4580
    const-string v10, "AutoPreconfig : keep current CSC"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4581
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPrevSimStateNwLocked:Z

    .line 4582
    sget v10, Lcom/android/internal/telephony/uicc/SIMRecords;->KEEP_CURRENT_CONFIG:I

    iput v10, v4, Landroid/os/Message;->what:I

    .line 4583
    const/4 v10, 0x0

    iput-object v10, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4584
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAutoPreconfigService:Landroid/os/Messenger;

    invoke-virtual {v10, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4605
    .end local v4    # "msg":Landroid/os/Message;
    :goto_1
    return-void

    .line 4567
    .end local v8    # "spName":Ljava/lang/String;
    :cond_3
    const-string v10, "AutoPreconfig : spcode is empty, Due to wrong IMSI length"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 4586
    .restart local v4    # "msg":Landroid/os/Message;
    .restart local v8    # "spName":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 4587
    .local v5, "preconfigParamIntent":Landroid/content/Intent;
    const-string v10, "com.sec.android.AutoPreconfig"

    const-string v11, "com.sec.android.AutoPreconfig.AutoPreconfigService"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4588
    const-string v10, "MCCMNC"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4589
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_AutoConfigurationType"

    const-string v12, "DISABLE"

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "SIMBASED_SSKU"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_AutoConfigurationType"

    const-string v12, "DISABLE"

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "USOPEN_ONESKU"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_AutoConfigurationType"

    const-string v12, "DISABLE"

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "SIMBASED_OMC"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 4592
    :cond_5
    const-string v10, "GID1"

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4595
    :goto_2
    const-string v10, "SPCODE"

    invoke-virtual {v5, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4596
    const-string v10, "SPNAME"

    invoke-virtual {v5, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4598
    sget v10, Lcom/android/internal/telephony/uicc/SIMRecords;->INIT_AUTOPRECONFIG:I

    iput v10, v4, Landroid/os/Message;->what:I

    .line 4599
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4600
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAutoPreconfigService:Landroid/os/Messenger;

    invoke-virtual {v10, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4602
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "preconfigParamIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 4603
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mAutoPreconfigService RemoteException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4594
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v4    # "msg":Landroid/os/Message;
    .restart local v5    # "preconfigParamIntent":Landroid/content/Intent;
    :cond_6
    :try_start_2
    const-string v10, "GID1"

    invoke-virtual {v5, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public checkForSetupDataRecordsLoaded()Z
    .locals 4

    .prologue
    .line 5743
    iget-wide v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSetupDataRecordsBitMask:J

    const-wide v2, 0x400001208L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 5744
    const-string v0, "SetupDataRecordsLoaded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 5745
    const/4 v0, 0x1

    .line 5748
    :goto_0
    return v0

    .line 5747
    :cond_0
    const-string v0, "SetupDataRecordsLoaded is not done"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 5748
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public chekcMWISavailable()Z
    .locals 1

    .prologue
    .line 5346
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    if-nez v0, :cond_0

    .line 5347
    const-string v0, "[voicemail]chekcMWISavailable is false"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5348
    const/4 v0, 0x0

    .line 5351
    :goto_0
    return v0

    .line 5350
    :cond_0
    const-string v0, "[voicemail]chekcMWISavailable is true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5351
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispose()V
    .locals 5

    .prologue
    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disposing SIMRecords this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 682
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 683
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    .line 684
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 685
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    .line 687
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnPbInitComplete(Landroid/os/Handler;)V

    .line 690
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSimPbReady(Landroid/os/Handler;)V

    .line 692
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 693
    const-string v1, "CTC"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 694
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 703
    :cond_0
    :goto_0
    const-string v1, "DISABLE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_AutoConfigurationType"

    const-string v4, "DISABLE"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "-1"

    invoke-static {}, Lcom/android/internal/telephony/uicc/SIMRecords;->readEfsFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 705
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAPBound:Z

    if-eqz v1, :cond_1

    .line 706
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAutoPreconfigServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 707
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAPBound:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    .line 716
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    .line 717
    return-void

    .line 697
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 5317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIMRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5318
    const-string v0, " extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5319
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVmConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSpnOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCallForwardingStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSpnState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCphsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCspPlmnEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEfMWIS[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEfCPHS_MWI[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEfCff[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEfCfis[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSpnDisplayCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSpdiNetworks[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPnnHomeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUsimServiceTable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGid1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGid2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEonsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEonsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsOPLExist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsOPLExist:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsEnabledOPL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledOPL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5341
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5342
    return-void
.end method

.method protected fetchSimRecords()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4709
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 4711
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSetupDataRecordsBitMask:J

    .line 4715
    const-string v0, "ril.ICC_TYPE"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    .line 4717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchSimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4719
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 4720
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4723
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4724
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4727
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f3e

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4728
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4730
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    .line 4734
    iput v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRetryCountGetImsi:I

    .line 4737
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2fe2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4738
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4740
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4741
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4743
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "SKT"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4744
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x4f22

    const/16 v2, 0x1fa

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4745
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4747
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x4f55

    const/16 v2, 0x1fb

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4748
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4753
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_MultiIMSI"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_DisableRoamingMultiIMSI"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4757
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f40

    const/16 v2, 0x1fc

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4758
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4760
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f41

    const/16 v2, 0x1fd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4761
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4763
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f42

    const/16 v2, 0x1fe

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4764
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4766
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f43

    const/16 v2, 0x1ff

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4767
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4769
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f50

    const/16 v2, 0x200

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4770
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4773
    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "LGT"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4774
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f30

    const/16 v2, 0x201

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4775
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4778
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f42

    const/16 v2, 0x20a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 4779
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4783
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fc9

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 4784
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4786
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fcd

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4787
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4790
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEonsEnabled:Z

    if-eqz v0, :cond_3

    .line 4791
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fc6

    const/16 v2, 0x1f6

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 4792
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4794
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fc5

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 4795
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4802
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f16

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4803
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4805
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f15

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4806
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4808
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4809
    const-string v0, "SIMRecords"

    const-string v1, "RIL_NTT_FELICA fetchsimrecords entered. "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4810
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2fe7

    const/16 v2, 0x204

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4811
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4812
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x4f1c

    const/16 v2, 0x205

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4813
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4814
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2ff0

    const/16 v2, 0x206

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4815
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4823
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_EnableOnsDisplay"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4824
    const-string v0, "Try to read ONS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4825
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f14

    const/16 v2, 0x1f4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4826
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4829
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f3f

    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4830
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4832
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadEfLiAndEfPl()V

    .line 4854
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fe5

    const/16 v2, 0x207

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 4855
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4858
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f7b    # 3.9992E-41f

    const/16 v2, 0x209

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4859
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4863
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f02

    const/16 v2, 0x1f9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4864
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4868
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fe3

    const/16 v2, 0x20b

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4869
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4872
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f78

    const/16 v2, 0x20c

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4873
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchSimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4875
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 721
    const-string v0, "finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 722
    return-void
.end method

.method public getAllEonsNames(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "MCCMNC"    # Ljava/lang/String;
    .param p2, "LAC"    # I

    .prologue
    .line 5413
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getAllEonsNames(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllEonsNames(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 7
    .param p1, "MCCMNC"    # Ljava/lang/String;
    .param p2, "LAC"    # I
    .param p3, "useLAC"    # Z

    .prologue
    const/4 v5, 0x0

    .line 5417
    const/4 v0, 0x0

    .line 5419
    .local v0, "EonsName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 5421
    .local v4, "operatorNumeric":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 5422
    const-string v6, "MCCMNC is null"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5472
    :goto_0
    return-object v5

    .line 5426
    :cond_0
    if-nez v4, :cond_1

    .line 5427
    const-string v6, "SIMOperatorNumeric is null"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5432
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->isMatchingHplmn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 5434
    .local v3, "isHPLMN":Z
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPNNExist:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledPNN:Z

    if-eqz v5, :cond_3

    .line 5435
    if-eqz v3, :cond_6

    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsOPLExist:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledOPL:Z

    if-nez v5, :cond_6

    .line 5436
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->PNN_Value:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v0, v5, v6

    .line 5453
    :cond_3
    :goto_1
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->IsOnsExist:Z

    if-eqz v5, :cond_4

    if-nez v0, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spn_cphs:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 5454
    if-eqz v3, :cond_9

    .line 5455
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 5461
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 5462
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-gtz v5, :cond_5

    .line 5463
    const/4 v0, 0x0

    .line 5471
    .end local v3    # "isHPLMN":Z
    :cond_5
    :goto_3
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEonsName:Ljava/lang/String;

    move-object v5, v0

    .line 5472
    goto :goto_0

    .line 5437
    .restart local v3    # "isHPLMN":Z
    :cond_6
    :try_start_1
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsOPLExist:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledOPL:Z

    if-eqz v5, :cond_3

    .line 5438
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    iget v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_count:I

    if-ge v2, v5, :cond_3

    .line 5439
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-eqz v5, :cond_8

    .line 5440
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x1

    invoke-direct {p0, p1, v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->isMatchingHplmn(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz p3, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC1:[I

    aget v5, v5, v2

    if-lt p2, v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC2:[I

    aget v5, v5, v2

    if-gt p2, v5, :cond_8

    .line 5442
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_INDEX:[I

    aget v5, v5, v2

    if-eqz v5, :cond_3

    .line 5443
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->PNN_Value:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_INDEX:[I

    aget v6, v6, v2

    add-int/lit8 v6, v6, -0x1

    aget-object v0, v5, v6
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5438
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 5457
    .end local v2    # "i":I
    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    .line 5466
    .end local v3    # "isHPLMN":Z
    :catch_0
    move-exception v1

    .line 5467
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v5, "Got exception while searching for EONS name, falling back to null"

    invoke-virtual {p0, v5, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5468
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public getDisplayCondition()I
    .locals 1

    .prologue
    .line 4882
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    return v0
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 3
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 4897
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnDisplayRuleOverride:I

    if-lez v1, :cond_1

    .line 4898
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnDisplayRuleOverride:I

    .line 4922
    .local v0, "rule":I
    :cond_0
    :goto_0
    return v0

    .line 4899
    .end local v0    # "rule":I
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSPN:Z

    if-nez v1, :cond_2

    .line 4900
    const-string v1, "[getDisplayRule] SPN service disabled (EF_UST)"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4901
    const/4 v0, 0x2

    .restart local v0    # "rule":I
    goto :goto_0

    .line 4902
    .end local v0    # "rule":I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 4903
    :cond_3
    const-string v1, "[getDisplayRule] showing plmn only"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4905
    const/4 v0, 0x2

    .restart local v0    # "rule":I
    goto :goto_0

    .line 4906
    .end local v0    # "rule":I
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4907
    const-string v1, "RWC"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEonsName:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 4908
    const/4 v0, 0x2

    .line 4911
    .restart local v0    # "rule":I
    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 4913
    :cond_5
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 4910
    .end local v0    # "rule":I
    :cond_6
    const/4 v0, 0x1

    .restart local v0    # "rule":I
    goto :goto_1

    .line 4916
    .end local v0    # "rule":I
    :cond_7
    const/4 v0, 0x2

    .line 4917
    .restart local v0    # "rule":I
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const-string v1, "RWC"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEonsName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4919
    :cond_8
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFakeHomeOn()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 5609
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v2, :cond_1

    .line 5667
    :cond_0
    :goto_0
    return-object v1

    .line 5612
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 5650
    .local v0, "simOper":Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v2, :cond_2

    .line 5651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFakeHomeOn() simOper["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], getIMSI()["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 5655
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5656
    const-string v1, "getFakeHomeOn() Check only MCC"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 5657
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/SpnOverride;->getFakeHomeOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5653
    :cond_2
    const-string v2, "getFakeHomeOn() simOper[******], getIMSI()[******]"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 5658
    :cond_3
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5659
    const-string v1, "getFakeHomeOn() Check MCC MNC"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 5660
    const-string v1, "LUX"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5661
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5662
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/SpnOverride;->getFakeHomeOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 5665
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getFakeHomeOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public getFakeRoamingOn()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 5674
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v1, :cond_0

    .line 5675
    const/4 v1, 0x0

    .line 5691
    :goto_0
    return-object v1

    .line 5678
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 5691
    .local v0, "simOper":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getFakeRoamingOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getGid1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    return-object v0
.end method

.method public getGid2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 933
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const-string v0, "CTC"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 935
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 936
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccIdfromFile()V

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    .line 944
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getO2payState()Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 5698
    const-string v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5699
    .local v2, "simState":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    .line 5700
    .local v1, "simOper":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;->NOT_READY:Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;

    .line 5702
    .local v0, "result":Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getO2payState SIMState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]  MCCMNC["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "perso "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->perso:[B

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5704
    const-string v3, "23410"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5705
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableO2PERSO:Z

    if-ne v3, v5, :cond_2

    .line 5706
    const-string v3, "isAvailableO2PERSO is true"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5707
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->perso:[B

    if-nez v3, :cond_0

    .line 5708
    const-string v3, "It should not enter here!!!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5724
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The result of getO2payState is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5725
    return-object v0

    .line 5709
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->perso:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_1

    .line 5710
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;->O2_PostPay:Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;

    goto :goto_0

    .line 5712
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;->O2_PrePay:Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;

    goto :goto_0

    .line 5715
    :cond_2
    const-string v3, "isAvailableO2PERSO is false. Check FDN"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5716
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableFDN:Z

    if-ne v3, v5, :cond_3

    .line 5717
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;->O2_PostPay:Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;

    goto :goto_0

    .line 5719
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;->O2_PrePay:Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;

    goto :goto_0

    .line 5723
    :cond_4
    const-string v3, "SIM state is not READY or SIM card is not O2 SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1456
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1457
    const-string v1, "getOperatorNumeric: IMSI == null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1467
    :goto_0
    return-object v0

    .line 1460
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-nez v1, :cond_2

    .line 1461
    :cond_1
    const-string v1, "getSIMOperatorNumeric: bad mncLength"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1467
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPsismsc()[B
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPsismsc:[B

    return-object v0
.end method

.method public getSMSS()V
    .locals 3

    .prologue
    .line 5736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIncreaseTPMR:Z

    .line 5737
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f43

    const/16 v2, 0x208

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 5738
    return-void
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4928
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnOverride:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4929
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 4931
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSktIMSIM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSktImsiM:Ljava/lang/String;

    return-object v0
.end method

.method public getSktIRM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSktIrm:Ljava/lang/String;

    return-object v0
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 5255
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    return-object v0
.end method

.method public getVideoCallForwardingFlag()I
    .locals 1

    .prologue
    .line 5481
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    return v0
.end method

.method public getVoiceCallForwardingFlag()I
    .locals 1

    .prologue
    .line 1224
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1184
    const/4 v2, 0x0

    .line 1185
    .local v2, "voiceMailWaiting":Z
    const/4 v0, 0x0

    .line 1186
    .local v0, "countVoiceMessages":I
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    if-eqz v5, :cond_3

    .line 1190
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    aget-byte v5, v5, v4

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    move v2, v3

    .line 1192
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " voiceMailWaiting Status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1193
    if-eqz v2, :cond_0

    .line 1194
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    aget-byte v3, v4, v3

    and-int/lit16 v0, v3, 0xff

    .line 1195
    if-nez v0, :cond_0

    .line 1197
    const/4 v0, -0x1

    .line 1201
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " VoiceMessageCount from SIM MWIS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1214
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v4

    .line 1190
    goto :goto_0

    .line 1202
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    if-eqz v3, :cond_1

    .line 1204
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    aget-byte v3, v3, v4

    and-int/lit8 v1, v3, 0xf

    .line 1207
    .local v1, "indicator":I
    const/16 v3, 0xa

    if-ne v1, v3, :cond_5

    .line 1208
    const/4 v0, -0x1

    .line 1212
    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " VoiceMessageCount from SIM CPHS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1209
    :cond_5
    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    .line 1210
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 65
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2013
    const/16 v33, 0x0

    .line 2016
    .local v33, "isRecordLoadResponse":Z
    const/16 v49, -0x1

    .line 2017
    .local v49, "resAPDU":I
    const/16 v50, -0x1

    .line 2019
    .local v50, "resType":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2020
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received message "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " while being destroyed. Ignoring."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3629
    :cond_0
    :goto_0
    return-void

    .line 2025
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 3549
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleMessage(Landroid/os/Message;)V

    .line 3554
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSetupDataRecordsBitMask:J

    const-wide v8, 0x400001208L

    cmp-long v4, v6, v8

    if-eqz v4, :cond_3

    .line 3555
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v4, :sswitch_data_1

    .line 3625
    :cond_3
    :goto_2
    if-eqz v33, :cond_0

    .line 3626
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    goto :goto_0

    .line 2027
    :sswitch_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onReady()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3620
    :catch_0
    move-exception v23

    .line 3622
    .local v23, "exc":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v4, "Exception parsing SIM record"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3625
    if-eqz v33, :cond_0

    .line 3626
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    goto :goto_0

    .line 2031
    .end local v23    # "exc":Ljava/lang/RuntimeException;
    :sswitch_1
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onLocked()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3625
    :catchall_0
    move-exception v4

    if-eqz v33, :cond_4

    .line 3626
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    :cond_4
    throw v4

    .line 2036
    :sswitch_2
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onNWLocked()V

    goto :goto_1

    .line 2042
    :sswitch_3
    const/16 v33, 0x1

    .line 2044
    const-string v4, "EVENT_GET_IMSI_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 2046
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2048
    .local v12, "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_6

    .line 2050
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v21

    .line 2051
    .local v21, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRetryCountGetImsi:I

    const/16 v6, 0x14

    if-ge v4, v6, :cond_5

    .line 2053
    const/16 v4, 0x320

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2054
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRetryCountGetImsi:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRetryCountGetImsi:I

    .line 2057
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception querying IMSI, Exception:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2061
    .end local v21    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_6
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    .line 2065
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x6

    if-lt v4, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0xf

    if-le v4, v6, :cond_8

    .line 2066
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid IMSI "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 2067
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    .line 2070
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI: mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2072
    const-string v4, "IMSI: xxxxxxx"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2075
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x6

    if-lt v4, v6, :cond_a

    .line 2077
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    .line 2078
    .local v43, "mccmncCode":Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v39, v0

    .local v39, "len$":I
    const/16 v26, 0x0

    .local v26, "i$":I
    :goto_3
    move/from16 v0, v26

    move/from16 v1, v39

    if-ge v0, v1, :cond_a

    aget-object v42, v13, v26

    .line 2079
    .local v42, "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2080
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2081
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI: setting1 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2088
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v39    # "len$":I
    .end local v42    # "mccmnc":Ljava/lang/String;
    .end local v43    # "mccmncCode":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_b

    .line 2093
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    .line 2094
    .local v41, "mcc":I
    invoke-static/range {v41 .. v41}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2095
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting2 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2102
    .end local v41    # "mcc":I
    :cond_b
    :goto_4
    :try_start_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 2103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mccmnc="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2108
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2112
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 2113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v58

    .line 2114
    .local v58, "sp":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cf_imsikey"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2116
    .local v11, "CF_Imsi":Ljava/lang/String;
    invoke-interface/range {v58 .. v58}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 2117
    .local v20, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cf_imsikey"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2118
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read CF_ICON from phoneId : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2121
    if-eqz v11, :cond_13

    .line 2123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cf_iconkey_voice"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    .line 2126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cf_iconkey_video"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    .line 2144
    .end local v11    # "CF_Imsi":Ljava/lang/String;
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v58    # "sp":Landroid/content/SharedPreferences;
    :cond_d
    :goto_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_2

    .line 2145
    const-string v4, "CTC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2165
    :cond_e
    const-string v4, "CTC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2167
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_10

    .line 2169
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    .line 2170
    .restart local v41    # "mcc":I
    invoke-static/range {v41 .. v41}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2176
    .end local v41    # "mcc":I
    :cond_10
    :goto_6
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "zqg test mMncLength: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2177
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v46

    .line 2178
    .local v46, "operator":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "zqg test set phone.getPhoneName() = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2179
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 2180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "zqg test set PROPERTY_ICC_OPERATOR_NUMERIC to"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v6

    move-object/from16 v0, v46

    invoke-virtual {v4, v6, v0}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 2078
    .end local v46    # "operator":Ljava/lang/String;
    .restart local v13    # "arr$":[Ljava/lang/String;
    .restart local v26    # "i$":I
    .restart local v39    # "len$":I
    .restart local v42    # "mccmnc":Ljava/lang/String;
    .restart local v43    # "mccmncCode":Ljava/lang/String;
    :cond_11
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_3

    .line 2096
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v39    # "len$":I
    .end local v42    # "mccmnc":Ljava/lang/String;
    .end local v43    # "mccmncCode":Ljava/lang/String;
    :catch_1
    move-exception v19

    .line 2097
    .local v19, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2098
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrupt IMSI! setting3 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2129
    .end local v19    # "e":Ljava/lang/NumberFormatException;
    .restart local v11    # "CF_Imsi":Ljava/lang/String;
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v58    # "sp":Landroid/content/SharedPreferences;
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    .line 2130
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    .line 2131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cf_iconkey_voice"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cf_iconkey_video"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2133
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_5

    .line 2136
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    .line 2137
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    .line 2138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cf_iconkey_voice"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cf_iconkey_video"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2140
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_5

    .line 2171
    .end local v11    # "CF_Imsi":Ljava/lang/String;
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v58    # "sp":Landroid/content/SharedPreferences;
    :catch_2
    move-exception v19

    .line 2172
    .restart local v19    # "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2173
    const-string v4, "Corrupt IMSI!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2194
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v19    # "e":Ljava/lang/NumberFormatException;
    :sswitch_4
    const/16 v33, 0x1

    .line 2196
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2197
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 2199
    .local v18, "data":[B
    const/16 v34, 0x0

    .line 2200
    .local v34, "isValidMbdn":Z
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_15

    .line 2202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_MBI: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2205
    const/4 v4, 0x0

    aget-byte v4, v18, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    .line 2208
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/16 v6, 0xff

    if-eq v4, v6, :cond_14

    .line 2209
    const-string v4, "Got valid mailbox number for MBDN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2210
    const/16 v34, 0x1

    .line 2223
    :cond_14
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2225
    if-eqz v34, :cond_16

    .line 2227
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v6, 0x6fc7

    const/16 v7, 0x6fc8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/4 v9, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 2216
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    const/4 v6, 0x1

    if-ne v4, v6, :cond_14

    .line 2217
    const-string v4, "EF MBI doens\'t exist. read EF MBDN with default record ID 1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2218
    const/16 v34, 0x1

    .line 2219
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    goto :goto_7

    .line 2233
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    .line 2235
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v6, 0x6f17

    const/16 v7, 0x6f4a

    const/4 v8, 0x1

    const/16 v9, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 2248
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    .end local v34    # "isValidMbdn":Z
    :sswitch_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 2249
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 2250
    const/16 v33, 0x1

    .line 2253
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_DisableEditingVMNumber"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 2254
    const-string v4, "SIMRecords"

    const-string v6, "Voicemail number is fixed"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    .line 2259
    :cond_17
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2261
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_19

    .line 2263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or missing EF"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/16 v7, 0xb

    if-ne v4, v7, :cond_18

    const-string v4, "[MAILBOX]"

    :goto_8
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2269
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/4 v6, 0x6

    if-ne v4, v6, :cond_2

    .line 2273
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    .line 2275
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2276
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v6, 0x6f17

    const/16 v7, 0x6f4a

    const/4 v8, 0x1

    const/16 v9, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 2263
    :cond_18
    const-string v4, "[MBDN]"

    goto :goto_8

    .line 2283
    :cond_19
    iget-object v5, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 2285
    .local v5, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VM: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/16 v7, 0xb

    if-ne v4, v7, :cond_1a

    const-string v4, " EF[MAILBOX]"

    :goto_9
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2288
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/4 v6, 0x6

    if-ne v4, v6, :cond_1b

    .line 2293
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    .line 2295
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2296
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v6, 0x6f17

    const/16 v7, 0x6f4a

    const/4 v8, 0x1

    const/16 v9, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 2285
    :cond_1a
    const-string v4, " EF[MBDN]"

    goto :goto_9

    .line 2302
    :cond_1b
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 2303
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    goto/16 :goto_1

    .line 2307
    .end local v5    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    const/16 v33, 0x1

    .line 2309
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2311
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1c

    .line 2312
    const-string v4, "Invalid or missing EF[MSISDN]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2316
    :cond_1c
    iget-object v5, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 2318
    .restart local v5    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 2319
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    .line 2321
    const-string v4, "MSISDN: xxxxxxx"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2325
    .end local v5    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    const/16 v33, 0x0

    .line 2326
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2328
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1d

    .line 2329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 2330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    .line 2331
    const-string v4, "Success to update EF[MSISDN]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2334
    :cond_1d
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 2335
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2337
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 2342
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_8
    const/16 v33, 0x1

    .line 2344
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2345
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 2347
    .restart local v18    # "data":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_MWIS : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2349
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1e

    .line 2350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_MWIS_DONE exception = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6f11

    const/16 v7, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2356
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_1

    .line 2361
    :cond_1e
    const/4 v4, 0x0

    aget-byte v4, v18, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0xff

    if-ne v4, v6, :cond_1f

    .line 2362
    const-string v4, "SIMRecords: Uninitialized record MWIS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6f11

    const/16 v7, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2367
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_1

    .line 2372
    :cond_1f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_SupportOrangeCPHS"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6f11

    const/16 v7, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2376
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2378
    :cond_20
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    goto/16 :goto_1

    .line 2384
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    :sswitch_9
    const/16 v33, 0x1

    .line 2386
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2387
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 2389
    .restart local v18    # "data":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CPHS_MWI: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2391
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_21

    .line 2392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE exception = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2397
    :cond_21
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    goto/16 :goto_1

    .line 2401
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    :sswitch_a
    const/16 v33, 0x1

    .line 2403
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2404
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 2406
    .restart local v18    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_22

    .line 2408
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v21

    .line 2409
    .restart local v21    # "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v21

    if-ne v0, v4, :cond_2

    .line 2411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x2fe2

    const/4 v7, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2412
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_1

    .line 2419
    .end local v21    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_22
    const-string v4, "ro.csc.countryiso_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->countryISO:Ljava/lang/String;

    .line 2420
    const-string v4, "CN"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->countryISO:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 2421
    const/4 v4, 0x0

    move-object/from16 v0, v18

    array-length v6, v0

    move-object/from16 v0, v18

    invoke-static {v0, v4, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->ICCIDbcdToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    .line 2433
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccIdReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2437
    sget-boolean v4, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v4, :cond_25

    .line 2438
    const-string v4, "EVENT_GET_ICCID_DONE mIccId: ******"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2443
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 2444
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkSimChanged()V

    goto/16 :goto_1

    .line 2425
    :cond_23
    move-object/from16 v0, v18

    array-length v4, v0

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->isIccIdHasChar([BI)I

    move-result v4

    const/16 v6, 0xff

    if-ne v4, v6, :cond_24

    .line 2426
    const/4 v4, 0x0

    move-object/from16 v0, v18

    array-length v6, v0

    move-object/from16 v0, v18

    invoke-static {v0, v4, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->ICCIDbcdToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    goto :goto_a

    .line 2428
    :cond_24
    const/4 v4, 0x0

    move-object/from16 v0, v18

    array-length v6, v0

    move-object/from16 v0, v18

    invoke-static {v0, v4, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    goto :goto_a

    .line 2440
    :cond_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_ICCID_DONE mIccId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 2451
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2452
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 2454
    .restart local v18    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 2459
    const-string v4, "ro.csc.countryiso_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->countryISO:Ljava/lang/String;

    .line 2460
    const-string v4, "CN"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->countryISO:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 2461
    const/4 v4, 0x0

    move-object/from16 v0, v18

    array-length v6, v0

    move-object/from16 v0, v18

    invoke-static {v0, v4, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->ICCIDbcdToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    .line 2473
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccIdReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2475
    sget-boolean v4, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v4, :cond_2a

    .line 2476
    const-string v4, "EVENT_GET_ICCID_WHEN_LOCKED_DONE mIccId: ******"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2482
    :goto_d
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v47

    .line 2484
    .local v47, "phoneRestrictionPolicy":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    const/16 v25, 0x0

    .line 2485
    .local v25, "hasSimLockedByAdmin":Z
    if-eqz v47, :cond_26

    .line 2486
    const/4 v4, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v25

    .line 2488
    :cond_26
    if-eqz v25, :cond_27

    .line 2489
    new-instance v30, Landroid/content/Intent;

    const-string v4, "com.android.server.enterprise.ICCID_AVAILABLE"

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2490
    .local v30, "intent2":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_ICCID_WHEN_LOCKED_DONE, icc = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2496
    .end local v30    # "intent2":Landroid/content/Intent;
    :cond_27
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_ConfigPolicyForSettingLanguageBySIM"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 2497
    .local v38, "languagePolicy":Ljava/lang/String;
    if-eqz v38, :cond_2

    const-string v4, "UseIccidToGetCountryCode"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2498
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x4

    if-lt v4, v6, :cond_2

    .line 2499
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    const/4 v6, 0x2

    const/4 v7, 0x4

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 2501
    .local v17, "countryCode":Ljava/lang/String;
    const-string v4, "34"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2502
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    const-string v6, "es"

    const-string v7, "es"

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2465
    .end local v17    # "countryCode":Ljava/lang/String;
    .end local v25    # "hasSimLockedByAdmin":Z
    .end local v38    # "languagePolicy":Ljava/lang/String;
    .end local v47    # "phoneRestrictionPolicy":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    :cond_28
    move-object/from16 v0, v18

    array-length v4, v0

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->isIccIdHasChar([BI)I

    move-result v4

    const/16 v6, 0xff

    if-ne v4, v6, :cond_29

    .line 2466
    const/4 v4, 0x0

    move-object/from16 v0, v18

    array-length v6, v0

    move-object/from16 v0, v18

    invoke-static {v0, v4, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->ICCIDbcdToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    goto/16 :goto_c

    .line 2468
    :cond_29
    const/4 v4, 0x0

    move-object/from16 v0, v18

    array-length v6, v0

    move-object/from16 v0, v18

    invoke-static {v0, v4, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    goto/16 :goto_c

    .line 2478
    :cond_2a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_ICCID_WHEN_LOCKED_DONE mIccId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 2503
    .restart local v17    # "countryCode":Ljava/lang/String;
    .restart local v25    # "hasSimLockedByAdmin":Z
    .restart local v38    # "languagePolicy":Ljava/lang/String;
    .restart local v47    # "phoneRestrictionPolicy":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    :cond_2b
    const-string v4, "33"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2504
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    const-string v6, "fr"

    const-string v7, "fr"

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2505
    :cond_2c
    const-string v4, "48"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2506
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    const-string v6, "pl"

    const-string v7, "pl"

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2507
    :cond_2d
    const-string v4, "40"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 2508
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    const-string v6, "ro"

    const-string v7, "ro"

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2509
    :cond_2e
    const-string v4, "421"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    const/4 v7, 0x2

    const/4 v8, 0x5

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2510
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    const-string v6, "sk"

    const-string v7, "sk"

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 2520
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "countryCode":Ljava/lang/String;
    .end local v18    # "data":[B
    .end local v25    # "hasSimLockedByAdmin":Z
    .end local v38    # "languagePolicy":Ljava/lang/String;
    .end local v47    # "phoneRestrictionPolicy":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    :sswitch_c
    const/16 v33, 0x1

    .line 2522
    :try_start_9
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2523
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 2525
    .restart local v18    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v4, :cond_3a

    .line 2552
    :try_start_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_2f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_30

    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x6

    if-lt v4, v6, :cond_30

    .line 2554
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    .line 2555
    .restart local v43    # "mccmncCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mccmncCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2556
    sget-object v13, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13    # "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v39, v0

    .restart local v39    # "len$":I
    const/16 v26, 0x0

    .restart local v26    # "i$":I
    :goto_e
    move/from16 v0, v26

    move/from16 v1, v39

    if-ge v0, v1, :cond_30

    aget-object v42, v13, v26

    .line 2557
    .restart local v42    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 2558
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2559
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting6 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2565
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v39    # "len$":I
    .end local v42    # "mccmnc":Ljava/lang/String;
    .end local v43    # "mccmncCode":Ljava/lang/String;
    :cond_30
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_31

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_32

    .line 2566
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v4, :cond_35

    .line 2568
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    .line 2570
    .restart local v41    # "mcc":I
    invoke-static/range {v41 .. v41}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting7 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2582
    .end local v41    # "mcc":I
    :cond_32
    :goto_f
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_33

    .line 2585
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_37

    const-string v4, "CTC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 2587
    const-string v4, "gsm.sim.selectnetwork"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 2588
    .local v54, "simselswitch":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simselswitch = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2589
    const-string v4, "CDMA"

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-nez v4, :cond_36

    .line 2590
    const-string v4, "do not set PROPERTY_ICC_OPERATOR_NUMERIC in case of slot1 cdma switching"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2609
    .end local v54    # "simselswitch":Ljava/lang/String;
    :cond_33
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    .line 2556
    .restart local v13    # "arr$":[Ljava/lang/String;
    .restart local v26    # "i$":I
    .restart local v39    # "len$":I
    .restart local v42    # "mccmnc":Ljava/lang/String;
    .restart local v43    # "mccmncCode":Ljava/lang/String;
    :cond_34
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_e

    .line 2572
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v39    # "len$":I
    .end local v42    # "mccmnc":Ljava/lang/String;
    .end local v43    # "mccmncCode":Ljava/lang/String;
    :catch_3
    move-exception v19

    .line 2573
    .restart local v19    # "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2574
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrupt IMSI! setting8 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 2578
    .end local v19    # "e":Ljava/lang/NumberFormatException;
    :cond_35
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MNC length not present in EF_AD setting9 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 2592
    .restart local v54    # "simselswitch":Ljava/lang/String;
    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_10

    .line 2595
    .end local v54    # "simselswitch":Ljava/lang/String;
    :cond_37
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 2596
    const-string v4, "gsm.sim.sixmode"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    const-string v7, "GSM"

    invoke-static {v4, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 2597
    .local v55, "sixmode":Ljava/lang/String;
    const-string v4, "ril.isctc"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    const-string v7, "0"

    invoke-static {v4, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2598
    .local v32, "isCTC":Ljava/lang/String;
    const-string v4, "GSM"

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    const-string v4, "1"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    const-string v4, "2"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    :cond_38
    const-string v4, "0"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 2599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_10

    .line 2603
    .end local v32    # "isCTC":Ljava/lang/String;
    .end local v55    # "sixmode":Ljava/lang/String;
    :cond_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mccmnc="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2604
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_10

    .line 2529
    :cond_3a
    :try_start_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_AD: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2531
    move-object/from16 v0, v18

    array-length v4, v0

    const/4 v6, 0x3

    if-ge v4, v6, :cond_46

    .line 2532
    const-string v4, "Corrupt AD data on SIM"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 2552
    :try_start_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_3b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_3b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3c

    :cond_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_3c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x6

    if-lt v4, v6, :cond_3c

    .line 2554
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    .line 2555
    .restart local v43    # "mccmncCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mccmncCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2556
    sget-object v13, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13    # "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v39, v0

    .restart local v39    # "len$":I
    const/16 v26, 0x0

    .restart local v26    # "i$":I
    :goto_11
    move/from16 v0, v26

    move/from16 v1, v39

    if-ge v0, v1, :cond_3c

    aget-object v42, v13, v26

    .line 2557
    .restart local v42    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2558
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2559
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting6 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2565
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v39    # "len$":I
    .end local v42    # "mccmnc":Ljava/lang/String;
    .end local v43    # "mccmncCode":Ljava/lang/String;
    :cond_3c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_3d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_3e

    .line 2566
    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v4, :cond_41

    .line 2568
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    .line 2570
    .restart local v41    # "mcc":I
    invoke-static/range {v41 .. v41}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting7 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 2582
    .end local v41    # "mcc":I
    :cond_3e
    :goto_12
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_3f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_3f

    .line 2585
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_43

    const-string v4, "CTC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 2587
    const-string v4, "gsm.sim.selectnetwork"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 2588
    .restart local v54    # "simselswitch":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simselswitch = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2589
    const-string v4, "CDMA"

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-nez v4, :cond_42

    .line 2590
    const-string v4, "do not set PROPERTY_ICC_OPERATOR_NUMERIC in case of slot1 cdma switching"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2609
    .end local v54    # "simselswitch":Ljava/lang/String;
    :cond_3f
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    .line 2556
    .restart local v13    # "arr$":[Ljava/lang/String;
    .restart local v26    # "i$":I
    .restart local v39    # "len$":I
    .restart local v42    # "mccmnc":Ljava/lang/String;
    .restart local v43    # "mccmncCode":Ljava/lang/String;
    :cond_40
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_11

    .line 2572
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v39    # "len$":I
    .end local v42    # "mccmnc":Ljava/lang/String;
    .end local v43    # "mccmncCode":Ljava/lang/String;
    :catch_4
    move-exception v19

    .line 2573
    .restart local v19    # "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2574
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrupt IMSI! setting8 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 2578
    .end local v19    # "e":Ljava/lang/NumberFormatException;
    :cond_41
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MNC length not present in EF_AD setting9 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 2592
    .restart local v54    # "simselswitch":Ljava/lang/String;
    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_13

    .line 2595
    .end local v54    # "simselswitch":Ljava/lang/String;
    :cond_43
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 2596
    const-string v4, "gsm.sim.sixmode"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    const-string v7, "GSM"

    invoke-static {v4, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 2597
    .restart local v55    # "sixmode":Ljava/lang/String;
    const-string v4, "ril.isctc"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    const-string v7, "0"

    invoke-static {v4, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2598
    .restart local v32    # "isCTC":Ljava/lang/String;
    const-string v4, "GSM"

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    const-string v4, "1"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    const-string v4, "2"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    :cond_44
    const-string v4, "0"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 2599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_13

    .line 2603
    .end local v32    # "isCTC":Ljava/lang/String;
    .end local v55    # "sixmode":Ljava/lang/String;
    :cond_45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mccmnc="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2604
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_13

    .line 2536
    :cond_46
    :try_start_11
    move-object/from16 v0, v18

    array-length v4, v0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_52

    .line 2537
    const-string v4, "MNC length not present in EF_AD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 2552
    :try_start_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_47

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_47

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_48

    :cond_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_48

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x6

    if-lt v4, v6, :cond_48

    .line 2554
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    .line 2555
    .restart local v43    # "mccmncCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mccmncCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2556
    sget-object v13, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13    # "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v39, v0

    .restart local v39    # "len$":I
    const/16 v26, 0x0

    .restart local v26    # "i$":I
    :goto_14
    move/from16 v0, v26

    move/from16 v1, v39

    if-ge v0, v1, :cond_48

    aget-object v42, v13, v26

    .line 2557
    .restart local v42    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 2558
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2559
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting6 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2565
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v39    # "len$":I
    .end local v42    # "mccmnc":Ljava/lang/String;
    .end local v43    # "mccmncCode":Ljava/lang/String;
    :cond_48
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_49

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_4a

    .line 2566
    :cond_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v4, :cond_4d

    .line 2568
    :try_start_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    .line 2570
    .restart local v41    # "mcc":I
    invoke-static/range {v41 .. v41}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting7 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 2582
    .end local v41    # "mcc":I
    :cond_4a
    :goto_15
    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_4b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_4b

    .line 2585
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_4f

    const-string v4, "CTC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 2587
    const-string v4, "gsm.sim.selectnetwork"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 2588
    .restart local v54    # "simselswitch":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simselswitch = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2589
    const-string v4, "CDMA"

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-nez v4, :cond_4e

    .line 2590
    const-string v4, "do not set PROPERTY_ICC_OPERATOR_NUMERIC in case of slot1 cdma switching"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2609
    .end local v54    # "simselswitch":Ljava/lang/String;
    :cond_4b
    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    .line 2556
    .restart local v13    # "arr$":[Ljava/lang/String;
    .restart local v26    # "i$":I
    .restart local v39    # "len$":I
    .restart local v42    # "mccmnc":Ljava/lang/String;
    .restart local v43    # "mccmncCode":Ljava/lang/String;
    :cond_4c
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_14

    .line 2572
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v39    # "len$":I
    .end local v42    # "mccmnc":Ljava/lang/String;
    .end local v43    # "mccmncCode":Ljava/lang/String;
    :catch_5
    move-exception v19

    .line 2573
    .restart local v19    # "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2574
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrupt IMSI! setting8 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 2578
    .end local v19    # "e":Ljava/lang/NumberFormatException;
    :cond_4d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MNC length not present in EF_AD setting9 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 2592
    .restart local v54    # "simselswitch":Ljava/lang/String;
    :cond_4e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_16

    .line 2595
    .end local v54    # "simselswitch":Ljava/lang/String;
    :cond_4f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 2596
    const-string v4, "gsm.sim.sixmode"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    const-string v7, "GSM"

    invoke-static {v4, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 2597
    .restart local v55    # "sixmode":Ljava/lang/String;
    const-string v4, "ril.isctc"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    const-string v7, "0"

    invoke-static {v4, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2598
    .restart local v32    # "isCTC":Ljava/lang/String;
    const-string v4, "GSM"

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    const-string v4, "1"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    const-string v4, "2"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    :cond_50
    const-string v4, "0"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 2599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_16

    .line 2603
    .end local v32    # "isCTC":Ljava/lang/String;
    .end local v55    # "sixmode":Ljava/lang/String;
    :cond_51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mccmnc="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2604
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_16

    .line 2541
    :cond_52
    const/4 v4, 0x3

    :try_start_15
    aget-byte v4, v18, v4

    and-int/lit8 v4, v4, 0xf

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2542
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting4 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2544
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/16 v6, 0xf

    if-ne v4, v6, :cond_59

    .line 2545
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting5 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 2552
    :cond_53
    :goto_17
    :try_start_16
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_54

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_54

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_55

    :cond_54
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_55

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x6

    if-lt v4, v6, :cond_55

    .line 2554
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    .line 2555
    .restart local v43    # "mccmncCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mccmncCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2556
    sget-object v13, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13    # "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v39, v0

    .restart local v39    # "len$":I
    const/16 v26, 0x0

    .restart local v26    # "i$":I
    :goto_18
    move/from16 v0, v26

    move/from16 v1, v39

    if-ge v0, v1, :cond_55

    aget-object v42, v13, v26

    .line 2557
    .restart local v42    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 2558
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2559
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting6 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2565
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v39    # "len$":I
    .end local v42    # "mccmnc":Ljava/lang/String;
    .end local v43    # "mccmncCode":Ljava/lang/String;
    :cond_55
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_56

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_57

    .line 2566
    :cond_56
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    if-eqz v4, :cond_60

    .line 2568
    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    .line 2570
    .restart local v41    # "mcc":I
    invoke-static/range {v41 .. v41}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting7 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 2582
    .end local v41    # "mcc":I
    :cond_57
    :goto_19
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_58

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_58

    .line 2585
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_62

    const-string v4, "CTC"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 2587
    const-string v4, "gsm.sim.selectnetwork"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 2588
    .restart local v54    # "simselswitch":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simselswitch = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2589
    const-string v4, "CDMA"

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-nez v4, :cond_61

    .line 2590
    const-string v4, "do not set PROPERTY_ICC_OPERATOR_NUMERIC in case of slot1 cdma switching"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2609
    .end local v54    # "simselswitch":Ljava/lang/String;
    :cond_58
    :goto_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_1

    .line 2547
    :cond_59
    :try_start_19
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_53

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_53

    .line 2548
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting5 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto/16 :goto_17

    .line 2552
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    :catchall_1
    move-exception v4

    :try_start_1a
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5a

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v6, :cond_5a

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5b

    :cond_5a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v6, :cond_5b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x6

    if-lt v6, v7, :cond_5b

    .line 2554
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v43

    .line 2555
    .restart local v43    # "mccmncCode":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mccmncCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2556
    sget-object v13, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13    # "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v39, v0

    .restart local v39    # "len$":I
    const/16 v26, 0x0

    .restart local v26    # "i$":I
    :goto_1b
    move/from16 v0, v26

    move/from16 v1, v39

    if-ge v0, v1, :cond_5b

    aget-object v42, v13, v26

    .line 2557
    .restart local v42    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 2558
    const/4 v6, 0x3

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2559
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting6 mMncLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2565
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v39    # "len$":I
    .end local v42    # "mccmnc":Ljava/lang/String;
    .end local v43    # "mccmncCode":Ljava/lang/String;
    :cond_5b
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v6, :cond_5c

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5d

    .line 2566
    :cond_5c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    if-eqz v6, :cond_66

    .line 2568
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    .line 2570
    .restart local v41    # "mcc":I
    invoke-static/range {v41 .. v41}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2571
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting7 mMncLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 2582
    .end local v41    # "mcc":I
    :cond_5d
    :goto_1c
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v6, :cond_5e

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v6, :cond_5e

    .line 2585
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_68

    const-string v6, "CTC"

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 2587
    const-string v6, "gsm.sim.selectnetwork"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 2588
    .restart local v54    # "simselswitch":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simselswitch = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2589
    const-string v6, "CDMA"

    move-object/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    if-nez v6, :cond_67

    .line 2590
    const-string v6, "do not set PROPERTY_ICC_OPERATOR_NUMERIC in case of slot1 cdma switching"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2609
    .end local v54    # "simselswitch":Ljava/lang/String;
    :cond_5e
    :goto_1d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    throw v4

    .line 2556
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    .restart local v13    # "arr$":[Ljava/lang/String;
    .restart local v18    # "data":[B
    .restart local v26    # "i$":I
    .restart local v39    # "len$":I
    .restart local v42    # "mccmnc":Ljava/lang/String;
    .restart local v43    # "mccmncCode":Ljava/lang/String;
    :cond_5f
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_18

    .line 2572
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v39    # "len$":I
    .end local v42    # "mccmnc":Ljava/lang/String;
    .end local v43    # "mccmncCode":Ljava/lang/String;
    :catch_6
    move-exception v19

    .line 2573
    .restart local v19    # "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2574
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrupt IMSI! setting8 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 2578
    .end local v19    # "e":Ljava/lang/NumberFormatException;
    :cond_60
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MNC length not present in EF_AD setting9 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 2592
    .restart local v54    # "simselswitch":Ljava/lang/String;
    :cond_61
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1a

    .line 2595
    .end local v54    # "simselswitch":Ljava/lang/String;
    :cond_62
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 2596
    const-string v4, "gsm.sim.sixmode"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    const-string v7, "GSM"

    invoke-static {v4, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 2597
    .restart local v55    # "sixmode":Ljava/lang/String;
    const-string v4, "ril.isctc"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    const-string v7, "0"

    invoke-static {v4, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2598
    .restart local v32    # "isCTC":Ljava/lang/String;
    const-string v4, "GSM"

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    const-string v4, "1"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    const-string v4, "2"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    :cond_63
    const-string v4, "0"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 2599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1a

    .line 2603
    .end local v32    # "isCTC":Ljava/lang/String;
    .end local v55    # "sixmode":Ljava/lang/String;
    :cond_64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mccmnc="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2604
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1a

    .line 2556
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    .restart local v13    # "arr$":[Ljava/lang/String;
    .restart local v26    # "i$":I
    .restart local v39    # "len$":I
    .restart local v42    # "mccmnc":Ljava/lang/String;
    .restart local v43    # "mccmncCode":Ljava/lang/String;
    :cond_65
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1b

    .line 2572
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v26    # "i$":I
    .end local v39    # "len$":I
    .end local v42    # "mccmnc":Ljava/lang/String;
    .end local v43    # "mccmncCode":Ljava/lang/String;
    :catch_7
    move-exception v19

    .line 2573
    .restart local v19    # "e":Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2574
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Corrupt IMSI! setting8 mMncLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 2578
    .end local v19    # "e":Ljava/lang/NumberFormatException;
    :cond_66
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2579
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MNC length not present in EF_AD setting9 mMncLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 2592
    .restart local v54    # "simselswitch":Ljava/lang/String;
    :cond_67
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1d

    .line 2595
    .end local v54    # "simselswitch":Ljava/lang/String;
    :cond_68
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 2596
    const-string v6, "gsm.sim.sixmode"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v7

    const-string v8, "GSM"

    invoke-static {v6, v7, v8}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 2597
    .restart local v55    # "sixmode":Ljava/lang/String;
    const-string v6, "ril.isctc"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v7

    const-string v8, "0"

    invoke-static {v6, v7, v8}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2598
    .restart local v32    # "isCTC":Ljava/lang/String;
    const-string v6, "GSM"

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_69

    const-string v6, "1"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_69

    const-string v6, "2"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    :cond_69
    const-string v6, "0"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 2599
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1d

    .line 2603
    .end local v32    # "isCTC":Ljava/lang/String;
    .end local v55    # "sixmode":Ljava/lang/String;
    :cond_6a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update mccmnc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2604
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1d

    .line 2615
    :sswitch_d
    const/16 v33, 0x1

    .line 2616
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2617
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 2621
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_e
    const/16 v33, 0x1

    .line 2623
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2624
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 2626
    .restart local v18    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_6b

    .line 2628
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->notifyCallForwardIndication()V

    goto/16 :goto_1

    .line 2633
    :cond_6b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFF_CPHS: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2634
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    .line 2636
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_SupportOrangeCPHS"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 2638
    const/4 v15, 0x0

    .line 2639
    .local v15, "bUpdated":Z
    const/4 v4, 0x0

    aget-byte v4, v18, v4

    and-int/lit8 v4, v4, 0xf

    const/16 v6, 0xa

    if-ne v4, v6, :cond_6f

    const/16 v64, 0x1

    .line 2640
    .local v64, "voiceForwarding_cff_cphs":Z
    :goto_1e
    const/16 v63, 0x0

    .line 2641
    .local v63, "videoForwarding_cff_cphs":Z
    move-object/from16 v0, v18

    array-length v4, v0

    const/4 v6, 0x1

    if-le v4, v6, :cond_6c

    .line 2642
    const/4 v4, 0x1

    aget-byte v4, v18, v4

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    const/16 v6, 0xa

    if-ne v4, v6, :cond_70

    const/16 v63, 0x1

    .line 2646
    :cond_6c
    :goto_1f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    if-nez v4, :cond_6d

    if-eqz v64, :cond_6d

    .line 2647
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    .line 2648
    const/4 v15, 0x1

    .line 2651
    :cond_6d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    if-nez v4, :cond_6e

    if-eqz v63, :cond_6e

    .line 2652
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    .line 2653
    const/4 v15, 0x1

    .line 2656
    :cond_6e
    if-eqz v15, :cond_2

    .line 2657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update Orange CFF CPHS : voicecall - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", videocall - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2658
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2639
    .end local v63    # "videoForwarding_cff_cphs":Z
    .end local v64    # "voiceForwarding_cff_cphs":Z
    :cond_6f
    const/16 v64, 0x0

    goto :goto_1e

    .line 2642
    .restart local v63    # "videoForwarding_cff_cphs":Z
    .restart local v64    # "voiceForwarding_cff_cphs":Z
    :cond_70
    const/16 v63, 0x0

    goto :goto_1f

    .line 2666
    .end local v15    # "bUpdated":Z
    .end local v63    # "videoForwarding_cff_cphs":Z
    .end local v64    # "voiceForwarding_cff_cphs":Z
    :cond_71
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    move-result v4

    if-nez v4, :cond_75

    .line 2672
    const/4 v4, 0x0

    aget-byte v4, v18, v4

    and-int/lit8 v4, v4, 0xf

    const/16 v6, 0xa

    if-ne v4, v6, :cond_73

    const/4 v4, 0x1

    :goto_20
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    .line 2675
    move-object/from16 v0, v18

    array-length v4, v0

    const/4 v6, 0x1

    if-le v4, v6, :cond_72

    .line 2676
    const/4 v4, 0x1

    aget-byte v4, v18, v4

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    const/16 v6, 0xa

    if-ne v4, v6, :cond_74

    const/4 v4, 0x1

    :goto_21
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    .line 2680
    :cond_72
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2672
    :cond_73
    const/4 v4, 0x0

    goto :goto_20

    .line 2676
    :cond_74
    const/4 v4, 0x0

    goto :goto_21

    .line 2682
    :cond_75
    const-string v4, "EVENT_GET_CFF_DONE: EF_CFIS is valid, ignoring EF_CFF_CPHS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2687
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    :sswitch_f
    const/16 v33, 0x1

    .line 2689
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2690
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 2692
    .restart local v18    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 2696
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_1

    .line 2700
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2701
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 2702
    const-string v4, "update failed. "

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2707
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_11
    const/16 v33, 0x1

    .line 2709
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2714
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_76

    .line 2715
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2716
    new-instance v29, Landroid/content/Intent;

    const-string v4, "com.movial.gba_initialized"

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2717
    .local v29, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2737
    .end local v29    # "intent":Landroid/content/Intent;
    :cond_76
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 2738
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGbaRecordsRequested:Z

    .line 2741
    :cond_77
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->handlePNN(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 2745
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_12
    const/16 v33, 0x1

    .line 2747
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2748
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 2751
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 2755
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_13
    const-string v4, "ENF"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "marked read: sms "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2760
    :sswitch_14
    const/16 v33, 0x0

    .line 2762
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2764
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object/from16 v28, v0

    .line 2766
    .local v28, "index":[I
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_78

    move-object/from16 v0, v28

    array-length v4, v0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_79

    .line 2767
    :cond_78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error on SMS_ON_SIM with exp "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " length "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    array-length v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2770
    :cond_79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "READ EF_SMS RECORD index="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x0

    aget v6, v28, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2771
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6f3c

    const/4 v7, 0x0

    aget v7, v28, v7

    const/16 v8, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_1

    .line 2777
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v28    # "index":[I
    :sswitch_15
    const/16 v33, 0x0

    .line 2778
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2779
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_7a

    .line 2780
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSms([B)V

    goto/16 :goto_1

    .line 2782
    :cond_7a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error on GET_SMS with exp "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2786
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_16
    const/16 v33, 0x1

    .line 2789
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIccType ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 2792
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2793
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 2795
    .restart local v18    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 2799
    new-instance v4, Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/uicc/UsimServiceTable;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    .line 2802
    const-string v4, "1"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 2803
    const-string v4, "SST read done."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2808
    :cond_7b
    :goto_22
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkSMSPavailable([B)V

    .line 2809
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkEONSavailable([B)V

    .line 2810
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkFDNavailable([B)V

    .line 2811
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkSDNavailable([B)V

    .line 2812
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkCHV1available([B)V

    .line 2813
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkSPNavailable([B)V

    .line 2814
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkMSISDNavailable([B)V

    .line 2815
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkSMSavailable([B)V

    .line 2816
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkMBDNavailable([B)V

    .line 2817
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkMWISavailable([B)V

    .line 2818
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkCFISavailable([B)V

    .line 2820
    const-string v4, "ATT"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7c

    const-string v4, "AIO"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 2822
    :cond_7c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkOCSGLAvailable([B)V

    .line 2824
    :cond_7d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkPSISMSCavailable([B)V

    goto/16 :goto_1

    .line 2804
    :cond_7e
    const-string v4, "2"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 2805
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UST : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 2830
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    :sswitch_17
    const/16 v33, 0x1

    .line 2831
    const-string v4, "EVENT_GET_EPSLOCI_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2832
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2834
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 2838
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEpsloci:[B

    .line 2839
    const/4 v4, 0x6

    new-array v0, v4, [B

    move-object/from16 v59, v0

    .line 2840
    .local v59, "taieps":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEpsloci: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEpsloci:[B

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2841
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEpsloci:[B

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v8, 0x6

    move-object/from16 v0, v59

    invoke-static {v4, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2842
    invoke-static/range {v59 .. v59}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    const-string v6, "ffffffffffff"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7f

    invoke-static/range {v59 .. v59}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    const-string v6, "FFFFFFFFFFFF"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 2844
    :cond_7f
    const-string v4, "taieps is null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2847
    :cond_80
    invoke-static/range {v59 .. v59}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTaiEps:Ljava/lang/String;

    .line 2848
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTaiEps: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTaiEps:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2853
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v59    # "taieps":[B
    :sswitch_18
    const/16 v33, 0x1

    .line 2855
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2857
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 2861
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    .line 2863
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iCPHS: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2867
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_19
    const/16 v33, 0x0

    .line 2868
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2870
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_SET_MBDN_DONE ex:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2871
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_81

    .line 2872
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 2873
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 2876
    :cond_81
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v4

    if-eqz v4, :cond_83

    .line 2877
    new-instance v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2878
    .restart local v5    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Landroid/os/Message;

    .line 2887
    .local v45, "onCphsCompleted":Landroid/os/Message;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_82

    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_82

    .line 2888
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    const/4 v6, 0x0

    iput-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2890
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2892
    const-string v4, "Callback with MBDN successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2894
    const/16 v45, 0x0

    .line 2897
    :cond_82
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v6, 0x6f17

    const/16 v7, 0x6f4a

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x19

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 2902
    .end local v5    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v45    # "onCphsCompleted":Landroid/os/Message;
    :cond_83
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 2903
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v51

    .line 2904
    .local v51, "resource":Landroid/content/res/Resources;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_84

    const v4, 0x112009a

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 2908
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    new-instance v6, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    const-string v7, "Update SIM voice mailbox error"

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2915
    :goto_23
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 2912
    :cond_84
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_23

    .line 2920
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v51    # "resource":Landroid/content/res/Resources;
    :sswitch_1a
    const/16 v33, 0x0

    .line 2921
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2922
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_85

    .line 2923
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 2924
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 2929
    :goto_24
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 2930
    const-string v4, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2931
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2933
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 2926
    :cond_85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set CPHS MailBox with exception: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_24

    .line 2937
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_1b
    const/16 v33, 0x0

    .line 2938
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2939
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sim REFRESH with exception: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2940
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 2941
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto/16 :goto_1

    .line 2945
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_1c
    const/16 v33, 0x1

    .line 2947
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2948
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 2950
    .restart local v18    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_86

    .line 2952
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6f13

    const/16 v7, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2953
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_1

    .line 2958
    :cond_86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFIS: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2960
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 2961
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    .line 2967
    const/4 v4, 0x1

    aget-byte v4, v18, v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_87

    const/4 v4, 0x1

    :goto_25
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    .line 2969
    const/4 v4, 0x1

    aget-byte v4, v18, v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_88

    const/4 v4, 0x1

    :goto_26
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    .line 2971
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFIS: callForwardingEnabled="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "EF_CFIS: videocallForwardingEnabled="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2976
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_89

    const/4 v4, 0x1

    :goto_27
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    .line 2977
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_8a

    const/4 v4, 0x1

    :goto_28
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    .line 2979
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2981
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_SupportOrangeCPHS"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2982
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6f13

    const/16 v7, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2983
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_1

    .line 2967
    :cond_87
    const/4 v4, 0x0

    goto/16 :goto_25

    .line 2969
    :cond_88
    const/4 v4, 0x0

    goto :goto_26

    .line 2976
    :cond_89
    const/4 v4, 0x0

    goto :goto_27

    .line 2977
    :cond_8a
    const/4 v4, 0x0

    goto :goto_28

    .line 2987
    :cond_8b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFIS: invalid data="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2989
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6f13

    const/16 v7, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2990
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_1

    .line 2996
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    :sswitch_1d
    const/16 v33, 0x1

    .line 2998
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3000
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_8c

    .line 3001
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in fetching EF_CSP data "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3005
    :cond_8c
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 3007
    .restart local v18    # "data":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CSP: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3008
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleEfCspData([B)V

    .line 3010
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_SIMPlmnAction"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3012
    new-instance v29, Landroid/content/Intent;

    const-string v4, "com.android.settings.PLMNACTION"

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3013
    .restart local v29    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3021
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    .end local v29    # "intent":Landroid/content/Intent;
    :sswitch_1e
    const/16 v33, 0x1

    .line 3023
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3025
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_8d

    .line 3026
    const-string v4, "Invalid or missing EF_IMSI_M"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3027
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSktImsiM:Ljava/lang/String;

    goto/16 :goto_1

    .line 3031
    :cond_8d
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 3035
    .restart local v18    # "data":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSktEf([B)Ljava/lang/String;

    move-result-object v27

    .line 3038
    .local v27, "imsi_m":Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mSktImsiM:Ljava/lang/String;

    goto/16 :goto_1

    .line 3043
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    .end local v27    # "imsi_m":Ljava/lang/String;
    :sswitch_1f
    const/16 v33, 0x1

    .line 3045
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3047
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_8e

    .line 3048
    const-string v4, "Invalid or missing EF_SKT_IRM]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3049
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSktIrm:Ljava/lang/String;

    goto/16 :goto_1

    .line 3053
    :cond_8e
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 3057
    .restart local v18    # "data":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSktEf([B)Ljava/lang/String;

    move-result-object v57

    .line 3060
    .local v57, "skt_irm":Ljava/lang/String;
    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mSktIrm:Ljava/lang/String;

    goto/16 :goto_1

    .line 3067
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    .end local v57    # "skt_irm":Ljava/lang/String;
    :sswitch_20
    const/16 v33, 0x1

    .line 3069
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3070
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 3072
    .restart local v18    # "data":[B
    const-string v24, ""

    .line 3074
    .local v24, "gid1":Ljava/lang/String;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_92

    .line 3075
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in get GID1 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3076
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    .line 3102
    :cond_8f
    :goto_29
    const-string v4, "CAN"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 3103
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_95

    .line 3104
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v44

    .line 3105
    .local v44, "num":I
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    .line 3112
    .end local v44    # "num":I
    :cond_90
    :goto_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v58

    .line 3113
    .restart local v58    # "sp":Landroid/content/SharedPreferences;
    invoke-interface/range {v58 .. v58}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 3114
    .restart local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v37, "key_gid1"

    .line 3115
    .local v37, "key_gid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-eqz v4, :cond_91

    .line 3116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_gid1"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 3117
    :cond_91
    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3118
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SimRecord: Load gid1 done: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3080
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v37    # "key_gid":Ljava/lang/String;
    .end local v58    # "sp":Landroid/content/SharedPreferences;
    :cond_92
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    .line 3081
    const-string v4, "XEU"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_93

    const-string v4, "BTU"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_93

    const-string v4, "XAA"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_93

    const-string v4, "LRA"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 3085
    :cond_93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    move-object/from16 v24, v0

    goto/16 :goto_29

    .line 3087
    :cond_94
    const/16 v52, 0x0

    .line 3088
    .local v52, "result":I
    const/4 v14, 0x0

    .line 3089
    .local v14, "b":I
    const/4 v4, 0x0

    aget-byte v4, v18, v4

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v14, v4, 0xf

    .line 3090
    mul-int/lit8 v52, v14, 0x10

    .line 3091
    const/4 v4, 0x0

    aget-byte v4, v18, v4

    and-int/lit8 v14, v4, 0xf

    .line 3092
    add-int v52, v52, v14

    .line 3093
    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    .line 3094
    const/16 v4, 0xff

    move/from16 v0, v52

    if-ne v0, v4, :cond_8f

    .line 3095
    const-string v24, ""

    goto/16 :goto_29

    .line 3108
    .end local v14    # "b":I
    .end local v52    # "result":I
    :cond_95
    const-string v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    goto/16 :goto_2a

    .line 3125
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    .end local v24    # "gid1":Ljava/lang/String;
    :sswitch_21
    const/16 v33, 0x1

    .line 3127
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3128
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 3130
    .restart local v18    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_96

    .line 3131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in get GID2 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3132
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    goto/16 :goto_1

    .line 3135
    :cond_96
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    .line 3136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GID2: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3142
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 3143
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_1

    .line 3147
    :sswitch_23
    const/16 v33, 0x1

    .line 3149
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3150
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 3152
    .restart local v18    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 3157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_SMSP: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3159
    move-object/from16 v0, v18

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v18, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mValidityPeriod:I

    .line 3161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mValidityPeriod: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mValidityPeriod:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3163
    new-instance v31, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.VALIDITY_PERIOD"

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3164
    .local v31, "intentV":Landroid/content/Intent;
    const-string v4, "mValidityPeriod"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mValidityPeriod:I

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3167
    const-string v4, "android.intent.action.VALIDITY_PERIOD"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3170
    const-string v4, "intent VALIDITY_PERIOD broadcasted"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3174
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    .end local v31    # "intentV":Landroid/content/Intent;
    :sswitch_24
    const-string v4, "[handleMessage] EVENT_GET_SPN_CPHS_DONE "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 3176
    const/16 v33, 0x1

    .line 3177
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3178
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 3180
    if-eqz v12, :cond_97

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_97

    .line 3181
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->IsOnsExist:Z

    .line 3183
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 3184
    .restart local v18    # "data":[B
    const/4 v4, 0x0

    move-object/from16 v0, v18

    array-length v6, v0

    move-object/from16 v0, v18

    invoke-static {v0, v4, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 3187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Load EF_SPN_CPHS: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Load EF_SPN_CPHS: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->spn_cphs:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3193
    .end local v18    # "data":[B
    :cond_97
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6f18

    const/16 v7, 0x1f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3195
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_1

    .line 3200
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_25
    const-string v4, "[handleMessage] EVENT_GET_SPN_SHORT_CPHS_DONE "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 3201
    const/16 v33, 0x1

    .line 3202
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3203
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 3205
    if-eqz v12, :cond_2

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 3206
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->IsOnsExist:Z

    .line 3207
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 3208
    .restart local v18    # "data":[B
    const/4 v4, 0x0

    move-object/from16 v0, v18

    array-length v6, v0

    move-object/from16 v0, v18

    invoke-static {v0, v4, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 3211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->spn_cphs:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->spn_cphs:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3220
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    :sswitch_26
    const-string v4, "[handleMessage] EVENT_GET_OPL_DONE "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 3222
    const/16 v33, 0x1

    .line 3224
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3225
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 3228
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleOPL(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 3233
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_27
    const/16 v33, 0x1

    .line 3234
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3235
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 3236
    .restart local v18    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_98

    .line 3237
    const-string v4, "getting EF_PERSO have exception !!!! "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3238
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableO2PERSO:Z

    goto/16 :goto_1

    .line 3242
    :cond_98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_PERSO: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 3243
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->perso:[B

    .line 3244
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableO2PERSO:Z

    goto/16 :goto_1

    .line 3251
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    :sswitch_28
    const/16 v33, 0x1

    .line 3253
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3255
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_99

    .line 3256
    const-string v4, "Invalid or missing EF[masterImsi]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3260
    :cond_99
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 3263
    .restart local v18    # "data":[B
    :try_start_1d
    sget-boolean v4, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v4, :cond_2

    .line 3264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[masterImsi]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x2

    const/16 v7, 0x8

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1d .. :try_end_1d} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto/16 :goto_1

    .line 3266
    :catch_8
    move-exception v19

    .line 3267
    .local v19, "e":Ljava/lang/StringIndexOutOfBoundsException;
    :try_start_1e
    const-string v4, "MASTER_IMSI was not exist in this card"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3272
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    .end local v19    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :sswitch_29
    const/16 v33, 0x1

    .line 3274
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3276
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_9a

    .line 3277
    const-string v4, "Invalid or missing EF[sponImsi1]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3281
    :cond_9a
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 3283
    .restart local v18    # "data":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    aput-object v7, v4, v6
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 3285
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    aget-byte v8, v18, v8

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    const/4 v9, 0x1

    aget-byte v9, v18, v9

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v18

    invoke-static {v0, v8, v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x22b

    move-object/from16 v0, v18

    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v18

    invoke-static {v0, v8, v9}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 3291
    :goto_2b
    :try_start_20
    sget-boolean v4, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sponImsi1]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3286
    :catch_9
    move-exception v22

    .line 3287
    .local v22, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sponImsi1] Ex -"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3288
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    .line 3289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v4, v6

    goto :goto_2b

    .line 3295
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    .end local v22    # "ex":Ljava/lang/Exception;
    :sswitch_2a
    const/16 v33, 0x1

    .line 3297
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3299
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_9b

    .line 3300
    const-string v4, "Invalid or missing EF[sponImsi2]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3304
    :cond_9b
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 3306
    .restart local v18    # "data":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    aput-object v7, v4, v6
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 3308
    :try_start_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    aget-byte v8, v18, v8

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    const/4 v9, 0x1

    aget-byte v9, v18, v9

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v18

    invoke-static {v0, v8, v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x22b

    move-object/from16 v0, v18

    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v18

    invoke-static {v0, v8, v9}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 3314
    :goto_2c
    :try_start_22
    sget-boolean v4, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sponImsi2]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3309
    :catch_a
    move-exception v22

    .line 3310
    .restart local v22    # "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sponImsi2] Ex -"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3311
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    .line 3312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v6, 0x1

    const-string v7, ""

    aput-object v7, v4, v6

    goto :goto_2c

    .line 3318
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    .end local v22    # "ex":Ljava/lang/Exception;
    :sswitch_2b
    const/16 v33, 0x1

    .line 3320
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3322
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_9c

    .line 3323
    const-string v4, "Invalid or missing EF[sponImsi3]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3327
    :cond_9c
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 3329
    .restart local v18    # "data":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    aput-object v7, v4, v6
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 3331
    :try_start_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    aget-byte v8, v18, v8

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    const/4 v9, 0x1

    aget-byte v9, v18, v9

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v18

    invoke-static {v0, v8, v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x22b

    move-object/from16 v0, v18

    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v18

    invoke-static {v0, v8, v9}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 3337
    :goto_2d
    :try_start_24
    sget-boolean v4, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sponImsi3]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3332
    :catch_b
    move-exception v22

    .line 3333
    .restart local v22    # "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sponImsi3] Ex -"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3334
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    .line 3335
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v6, 0x2

    const-string v7, ""

    aput-object v7, v4, v6

    goto :goto_2d

    .line 3342
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    .end local v22    # "ex":Ljava/lang/Exception;
    :sswitch_2c
    const/16 v33, 0x1

    .line 3344
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3346
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_9d

    .line 3347
    const-string v4, "Invalid or missing EF[roaming]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3351
    :cond_9d
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 3353
    .restart local v18    # "data":[B
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v53

    .line 3354
    .local v53, "roaming":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[roaming]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3355
    const-string v4, "gsm.sim.roaming"

    move-object/from16 v0, v53

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3370
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    .end local v53    # "roaming":Ljava/lang/String;
    :sswitch_2d
    const-string v62, ""

    .line 3371
    .local v62, "uiccVer":Ljava/lang/String;
    const-string v61, ""

    .line 3372
    .local v61, "uiccConv":Ljava/lang/String;
    const/16 v33, 0x1

    .line 3374
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3376
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_9e

    .line 3377
    const-string v4, "Invalid or missing EF[VER]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3381
    :cond_9e
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_0
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 3384
    .restart local v18    # "data":[B
    :try_start_25
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    move-result-object v62

    .line 3390
    :goto_2e
    :try_start_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ver]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v62

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3391
    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x6

    if-le v4, v6, :cond_2

    .line 3392
    const/16 v4, 0xa

    const/16 v6, 0xe

    move-object/from16 v0, v62

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v61

    .line 3393
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ver]converterd: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v61

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3394
    const-string v4, "gsm.sim.version"

    move-object/from16 v0, v61

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3385
    :catch_c
    move-exception v22

    .line 3386
    .restart local v22    # "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ver] Ex -"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3387
    const-string v62, ""

    goto :goto_2e

    .line 3401
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    .end local v22    # "ex":Ljava/lang/Exception;
    .end local v61    # "uiccConv":Ljava/lang/String;
    .end local v62    # "uiccVer":Ljava/lang/String;
    :sswitch_2e
    const/16 v33, 0x1

    .line 3403
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3404
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 3406
    .restart local v18    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_9f

    .line 3407
    const-string v4, "getting mIsAvailablePSISMSC have exception !!!! "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3408
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAvailablePSISMSC:Z

    goto/16 :goto_1

    .line 3414
    :cond_9f
    const/4 v4, 0x1

    aget-byte v4, v18, v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v48, v0

    .line 3415
    .local v48, "psismsclength":I
    const/16 v4, 0xff

    move/from16 v0, v48

    if-eq v0, v4, :cond_2

    if-eqz v48, :cond_2

    .line 3416
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v40

    .line 3417
    .local v40, "mPsismsc":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PSISMSC from modem: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3419
    const/4 v4, 0x4

    mul-int/lit8 v6, v48, 0x2

    add-int/lit8 v6, v6, 0x4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPsismsc:[B

    .line 3420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PSISMSC to IMS: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPsismsc:[B

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3421
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAvailablePSISMSC:Z

    goto/16 :goto_1

    .line 3427
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    .end local v40    # "mPsismsc":Ljava/lang/String;
    .end local v48    # "psismsclength":I
    :sswitch_2f
    const/16 v33, 0x0

    .line 3428
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3429
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 3431
    .restart local v18    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 3434
    const-string v4, "SIMRecords"

    const-string v6, "EVENT_GET_SMSS_DONE"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3436
    const/4 v4, 0x0

    aget-byte v4, v18, v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v60, v0

    .line 3437
    .local v60, "tpmr":I
    const-string v4, "SIMRecords"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TPMR message count= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIncreaseTPMR:Z

    if-eqz v4, :cond_a0

    .line 3440
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIncreaseTPMR:Z

    .line 3441
    const/4 v4, 0x0

    aget-byte v4, v18, v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_a1

    .line 3442
    const/4 v4, 0x0

    const/4 v6, 0x0

    aput-byte v6, v18, v4

    .line 3443
    const/16 v60, 0x0

    .line 3448
    :goto_2f
    const-string v4, "SIMRecords"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Increased TPMR : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-byte v7, v18, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tpmr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6f43

    const/16 v7, 0xe

    const/16 v8, 0x6f43

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v4, v6, v0, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 3452
    :cond_a0
    const-string v4, "persist.radio.tpmr_sms"

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3445
    :cond_a1
    const/4 v4, 0x0

    aget-byte v6, v18, v4

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    aput-byte v6, v18, v4

    .line 3446
    add-int/lit8 v60, v60, 0x1

    goto :goto_2f

    .line 3458
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    .end local v60    # "tpmr":I
    :sswitch_30
    const/16 v33, 0x1

    .line 3459
    const-string v4, "EVENT_GET_EF_FPLMN done"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3465
    :sswitch_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onSimPhonebookRefresh()V

    goto/16 :goto_1

    .line 3470
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    goto/16 :goto_1

    .line 3475
    :sswitch_33
    const/16 v33, 0x1

    .line 3476
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3477
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 3481
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->efUICC:[B

    .line 3482
    const-string v4, "SIMRecords"

    const-string v6, "Write UICC in File."

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3483
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->saveFelicaEFs(I)V

    .line 3484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "efUICC: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->efUICC:[B

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3487
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_34
    const/16 v33, 0x1

    .line 3488
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3489
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 3493
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->efIMODER:[B

    .line 3494
    const-string v4, "SIMRecords"

    const-string v6, "Write IMODER in File."

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->saveFelicaEFs(I)V

    .line 3496
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "efIMODER: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->efIMODER:[B

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3500
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_35
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3504
    const/16 v50, 0x3

    .line 3505
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFLockUser:I

    .line 3506
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFLockRemote:I

    .line 3507
    const/16 v33, 0x1

    .line 3509
    const-string v4, "EVENT_REFRESH_EF_LOCK done"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3511
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v4, :cond_a2

    .line 3512
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->notifyEFLockStatus(II)V

    goto/16 :goto_1

    .line 3516
    :cond_a2
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3517
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_a3

    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_a4

    .line 3518
    :cond_a3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->notifyEFLockStatus(II)V

    goto/16 :goto_1

    .line 3522
    :cond_a4
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 3523
    .restart local v18    # "data":[B
    const/4 v4, 0x4

    move-object/from16 v0, v18

    array-length v6, v0

    if-gt v4, v6, :cond_a5

    const/4 v4, 0x2

    move-object/from16 v0, v18

    array-length v6, v0

    if-gt v4, v6, :cond_a5

    .line 3525
    const/4 v4, 0x2

    aget-byte v4, v18, v4

    and-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFLockUser:I

    .line 3526
    const/4 v4, 0x1

    aget-byte v4, v18, v4

    and-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFLockRemote:I

    .line 3527
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->notifyEFLockStatus(II)V

    goto/16 :goto_1

    .line 3529
    :cond_a5
    const-string v4, "EVENT_REFRESH_EF_LOCK AsyncResult corrupted "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3535
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    :sswitch_36
    const/16 v33, 0x1

    .line 3536
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3538
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_a6

    .line 3539
    const-string v4, "Invalid or missing EF[VER]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3542
    :cond_a6
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v18, v0

    .line 3544
    .restart local v18    # "data":[B
    const-string v4, "gsm.sim.acc"

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/IccUtils;->byteArrayToBinaryString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3557
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "data":[B
    :sswitch_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v6, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-ne v4, v6, :cond_3

    .line 3561
    :sswitch_38
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSetupDataRecordsBitMask:J

    const-wide/16 v8, 0x1

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    shl-long/2addr v8, v4

    or-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSetupDataRecordsBitMask:J

    .line 3563
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetupDataRecordsLoaded msg:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " BitMask:0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSetupDataRecordsBitMask:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 3564
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSetupDataRecordsBitMask:J

    const-wide v8, 0x400001208L

    cmp-long v4, v6, v8

    if-nez v4, :cond_3

    .line 3565
    const-string v4, "SetupDataRecordsLoaded Notify"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 3566
    const-string v4, "!@Boot_SVC : SetupDataRecordsLoaded"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 3568
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v46

    .line 3569
    .restart local v46    # "operator":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a7

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 3571
    :cond_a7
    const-string v4, "gsm.sim.sixmode"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    const-string v7, "GSM"

    invoke-static {v4, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 3572
    .restart local v55    # "sixmode":Ljava/lang/String;
    const-string v4, "gsm.sim.gsmoperator.numeric"

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sixmode = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3574
    const-string v4, "GSM"

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a8

    const-string v4, "1"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a8

    const-string v4, "2"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 3575
    :cond_a8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v6

    move-object/from16 v0, v46

    invoke-virtual {v4, v6, v0}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 3579
    :cond_a9
    const-string v4, "CDMA"

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_aa

    const-string v4, "4"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 3580
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->isChinaTelecomSim(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_aa

    .line 3581
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invaild gsm imsi in ctc dual card = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3582
    const-string v4, "gsm.sim.gsmoperator.numeric"

    const-string v6, "46011"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3585
    :cond_aa
    const-string v56, "false"

    .line 3586
    .local v56, "sixmodeslave":Ljava/lang/String;
    const-string v4, "false"

    const-string v6, "gsm.operator.isroaming"

    const-string v7, "false"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 3587
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "IS_CTC"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    .line 3588
    .local v35, "isctc":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "IS_CTC2"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    .line 3589
    .local v36, "isctc2":I
    const/4 v4, 0x1

    move/from16 v0, v35

    if-ne v0, v4, :cond_ab

    const/4 v4, 0x1

    move/from16 v0, v36

    if-ne v0, v4, :cond_ab

    .line 3590
    const-string v4, "persist.radio.multisim.stackid"

    const-string v6, "-1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_ab

    .line 3591
    const-string v4, "true"

    .line 3613
    .end local v35    # "isctc":I
    .end local v36    # "isctc2":I
    .end local v55    # "sixmode":Ljava/lang/String;
    .end local v56    # "sixmodeslave":Ljava/lang/String;
    :cond_ab
    :goto_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSetupDataRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_2

    .line 3596
    :cond_ac
    const/4 v4, 0x7

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v4

    if-nez v4, :cond_ad

    .line 3597
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v6

    move-object/from16 v0, v46

    invoke-virtual {v4, v6, v0}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    goto :goto_30

    .line 3601
    :cond_ad
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3602
    .local v16, "cdmaOperatorNumeric":Ljava/lang/String;
    const-string v4, "000000"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ae

    const-string v4, "310120"

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_af

    const-string v4, "316010"

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_af

    .line 3603
    :cond_ae
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSystemProperty operator : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3604
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v6

    move-object/from16 v0, v46

    invoke-virtual {v4, v6, v0}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 3606
    const-string v4, "gsm.sim.sprintsim"

    const-string v6, "0"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 3608
    :cond_af
    const-string v4, "Do not update PROPERTY_ICC_OPERATOR_NUMERIC for CHAMELEON "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3609
    const-string v4, "gsm.sim.sprintsim"

    const-string v6, "1"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_0
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    goto/16 :goto_30

    .line 2025
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_3
        0x4 -> :sswitch_a
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_c
        0xa -> :sswitch_6
        0xb -> :sswitch_5
        0xc -> :sswitch_d
        0xd -> :sswitch_f
        0xe -> :sswitch_10
        0xf -> :sswitch_11
        0x11 -> :sswitch_16
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_19
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x18 -> :sswitch_e
        0x19 -> :sswitch_1a
        0x1a -> :sswitch_18
        0x1e -> :sswitch_7
        0x1f -> :sswitch_1b
        0x20 -> :sswitch_1c
        0x21 -> :sswitch_1d
        0x22 -> :sswitch_20
        0x23 -> :sswitch_1
        0x24 -> :sswitch_21
        0x25 -> :sswitch_2
        0x1f4 -> :sswitch_24
        0x1f5 -> :sswitch_25
        0x1f6 -> :sswitch_26
        0x1f8 -> :sswitch_b
        0x1f9 -> :sswitch_27
        0x1fa -> :sswitch_1e
        0x1fb -> :sswitch_1f
        0x1fc -> :sswitch_28
        0x1fd -> :sswitch_29
        0x1fe -> :sswitch_2a
        0x1ff -> :sswitch_2b
        0x200 -> :sswitch_2c
        0x201 -> :sswitch_2d
        0x202 -> :sswitch_31
        0x203 -> :sswitch_32
        0x204 -> :sswitch_33
        0x205 -> :sswitch_34
        0x206 -> :sswitch_35
        0x207 -> :sswitch_2e
        0x208 -> :sswitch_2f
        0x209 -> :sswitch_30
        0x20a -> :sswitch_23
        0x20b -> :sswitch_17
        0x20c -> :sswitch_36
        0x320 -> :sswitch_22
    .end sparse-switch

    .line 3555
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_38
        0x9 -> :sswitch_38
        0xc -> :sswitch_37
        0x22 -> :sswitch_38
    .end sparse-switch
.end method

.method public hasIsim()Z
    .locals 1

    .prologue
    .line 808
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mHasIsim:Z

    return v0
.end method

.method public isAvailableVoiceMailInSIM()Z
    .locals 2

    .prologue
    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAvailableMBDN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isCphsMailboxEnabled(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1049
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1050
    :cond_0
    const/4 v0, 0x1

    .line 1052
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 5271
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 5197
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 5199
    const-string v0, "SIMRecords"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5203
    :goto_0
    return-void

    .line 5201
    :cond_0
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 5207
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 5209
    const-string v0, "SIMRecords"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5213
    :goto_0
    return-void

    .line 5211
    :cond_0
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 5235
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 5237
    const-string v0, "SIMRecords"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5241
    :goto_0
    return-void

    .line 5239
    :cond_0
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 5244
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 5246
    const-string v0, "SIMRecords"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5250
    :goto_0
    return-void

    .line 5248
    :cond_0
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 5225
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 5227
    const-string v0, "SIMRecords"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5231
    :goto_0
    return-void

    .line 5229
    :cond_0
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 5216
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 5218
    const-string v0, "SIMRecords"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5222
    :goto_0
    return-void

    .line 5220
    :cond_0
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onAllRecordsLoaded()V
    .locals 26

    .prologue
    .line 4308
    const-string v21, "record load complete"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4309
    const-string v21, "SIMRecords"

    const-string v22, "!@Boot_SVC : SIM onAllRecordsLoaded"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4311
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    .line 4312
    .local v14, "resource":Landroid/content/res/Resources;
    const v21, 0x11200ae

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 4313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSimLanguage([B[B)V

    .line 4318
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceCallForwardingFlagFromSimRecords()V

    .line 4320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 4323
    :cond_0
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 4508
    :cond_1
    :goto_1
    return-void

    .line 4315
    :cond_2
    const-string v21, "Not using EF LI/EF PL"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4330
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v12

    .line 4333
    .local v12, "operator":Ljava/lang/String;
    const-string v21, "LRA"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 4334
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_11

    .line 4336
    const-string v21, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 4337
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/uicc/SIMRecords;->isNeedToShareWithSensor(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 4338
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSysfsForSensor()V

    .line 4343
    :cond_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onAllRecordsLoaded set \'gsm.sim.operator.numeric\' to operator=\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4345
    const/16 v21, 0x7

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v21

    if-nez v21, :cond_e

    .line 4346
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_9

    const-string v21, "CTC"

    sget-object v22, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 4348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v21

    if-nez v21, :cond_5

    .line 4349
    const-string v21, "slot1 gsm sim operater."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4350
    const-string v21, "gsm.sim.gsmoperator.numeric"

    move-object/from16 v0, v21

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4352
    :cond_5
    const-string v21, "gsm.sim.selectnetwork"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4353
    .local v16, "simselswitch":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "simselswitch = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4354
    const-string v21, "CDMA"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v21

    if-nez v21, :cond_8

    .line 4355
    const-string v21, "do not set PROPERTY_ICC_OPERATOR_NUMERIC in case of slot1 cdma switching"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4356
    const-string v21, "gsm.sim.gsmoperator.numeric"

    move-object/from16 v0, v21

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4405
    .end local v16    # "simselswitch":Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v20

    .line 4406
    .local v20, "subController":Lcom/android/internal/telephony/SubscriptionController;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    .line 4411
    .end local v20    # "subController":Lcom/android/internal/telephony/SubscriptionController;
    :cond_7
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v21

    const-string v22, "CscFeature_Common_AutoConfigurationType"

    const-string v23, "DISABLE"

    invoke-virtual/range {v21 .. v23}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4412
    .local v3, "autoCfgFeature0":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "autoCfgFeature : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4415
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_14

    const-string v21, "DISABLE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v22

    const-string v23, "CscFeature_Common_AutoConfigurationType"

    const-string v24, "DISABLE"

    invoke-virtual/range {v22 .. v24}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_14

    .line 4416
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v11, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string v22, ""

    aput-object v22, v11, v21

    const/16 v21, 0x1

    const-string v22, ""

    aput-object v22, v11, v21

    .line 4417
    .local v11, "mFeatureValues":[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v21

    const-string v22, "CscFeature_Common_AutoConfigurationType"

    const-string v23, "DISABLE"

    invoke-virtual/range {v21 .. v23}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 4418
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_12

    .line 4419
    aget-object v21, v11, v8

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v11, v8

    .line 4420
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mFeatureValues["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v11, v8

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4418
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 4358
    .end local v3    # "autoCfgFeature0":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v11    # "mFeatureValues":[Ljava/lang/String;
    .restart local v16    # "simselswitch":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 4361
    .end local v16    # "simselswitch":Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v21

    const-string v22, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 4362
    const-string v21, "gsm.sim.sixmode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v22

    const-string v23, "GSM"

    invoke-static/range {v21 .. v23}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 4363
    .local v17, "sixmode":Ljava/lang/String;
    const-string v21, "gsm.sim.gsmoperator.numeric"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4365
    const-string v21, "gsm.sim.cdmaoperator.numeric"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v22

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4366
    .local v5, "cdmaop":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "cdmaop = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4367
    const-string v21, "4"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    const-string v21, "20404"

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 4368
    const-string v21, "gsm.sim.cdmaoperator.numeric"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v22

    const-string v23, "46003"

    invoke-static/range {v21 .. v23}, Lcom/samsung/android/telephony/MultiSimManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 4370
    :cond_a
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "sixmode = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4371
    const-string v21, "GSM"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    const-string v21, "1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    const-string v21, "2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 4372
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 4376
    :cond_c
    const-string v18, "false"

    .line 4377
    .local v18, "sixmodeslave":Ljava/lang/String;
    const-string v21, "false"

    const-string v22, "gsm.operator.isroaming"

    const-string v23, "false"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 4378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "IS_CTC"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 4379
    .local v9, "isctc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "IS_CTC2"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 4380
    .local v10, "isctc2":I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_6

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_6

    .line 4381
    const-string v21, "persist.radio.multisim.stackid"

    const-string v22, "-1"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 4382
    const-string v21, "true"

    goto/16 :goto_2

    .line 4388
    .end local v5    # "cdmaop":Ljava/lang/String;
    .end local v9    # "isctc":I
    .end local v10    # "isctc2":I
    .end local v17    # "sixmode":Ljava/lang/String;
    .end local v18    # "sixmodeslave":Ljava/lang/String;
    :cond_d
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "update icc_operator_numeric="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 4393
    :cond_e
    sget-object v21, Lcom/android/internal/telephony/uicc/SIMRecords;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4394
    .local v4, "cdmaOperatorNumeric":Ljava/lang/String;
    const-string v21, "000000"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_f

    const-string v21, "310120"

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_10

    const-string v21, "316010"

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_10

    .line 4395
    :cond_f
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "setSystemProperty operator : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 4398
    const-string v21, "gsm.sim.sprintsim"

    const-string v22, "0"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4401
    :cond_10
    const-string v21, "Do not update PROPERTY_ICC_OPERATOR_NUMERIC for CHAMELEON "

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4402
    const-string v21, "gsm.sim.sprintsim"

    const-string v22, "1"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4408
    .end local v4    # "cdmaOperatorNumeric":Ljava/lang/String;
    :cond_11
    const-string v21, "onAllRecordsLoaded empty \'gsm.sim.operator.numeric\' skipping"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4422
    .restart local v3    # "autoCfgFeature0":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v11    # "mFeatureValues":[Ljava/lang/String;
    :cond_12
    array-length v0, v11

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_18

    const-string v21, "SIMBASED_OMC"

    const/16 v22, 0x1

    aget-object v22, v11, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_13

    const-string v21, "SIMBASED_SSKU"

    const/16 v22, 0x1

    aget-object v22, v11, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    :cond_13
    const-string v21, "true"

    const-string v22, "persist.omc.skip_code"

    const-string v23, "false"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 4424
    const-string v21, "skip binding AutoPreconfigService"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4437
    .end local v8    # "i":I
    .end local v11    # "mFeatureValues":[Ljava/lang/String;
    :cond_14
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_20

    .line 4438
    const-string v21, "LRA"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v21

    if-eqz v21, :cond_15

    .line 4439
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "update gsm.apn.sim.operator.numeric = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " for Global LRA"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4440
    const-string v21, "gsm.apn.sim.operator.numeric"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4442
    :cond_15
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "LGT"

    aput-object v23, v21, v22

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 4443
    const-string v21, "ril.simtype"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4444
    .local v15, "simType":Ljava/lang/String;
    if-eqz v15, :cond_17

    const-string v21, "3"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_16

    const-string v21, "18"

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 4445
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v22

    const-string v23, "kr"

    invoke-virtual/range {v21 .. v23}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 4490
    .end local v15    # "simType":Ljava/lang/String;
    :cond_17
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 4491
    .local v19, "sp_o2":Landroid/content/SharedPreferences;
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 4492
    .local v7, "editor_o2":Landroid/content/SharedPreferences$Editor;
    const-string v21, "key_paystate"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getO2payState()Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;->value()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4493
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    new-instance v22, Landroid/os/AsyncResult;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v22 .. v25}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 4499
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isRefreshedBySTK:Z

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 4506
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->isRefreshedBySTK:Z

    goto/16 :goto_1

    .line 4425
    .end local v7    # "editor_o2":Landroid/content/SharedPreferences$Editor;
    .end local v19    # "sp_o2":Landroid/content/SharedPreferences;
    .restart local v8    # "i":I
    .restart local v11    # "mFeatureValues":[Ljava/lang/String;
    :cond_18
    array-length v0, v11

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1a

    const-string v21, "SIMBASED_OMC"

    const/16 v22, 0x1

    aget-object v22, v11, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_19

    const-string v21, "SIMBASED_SSKU"

    const/16 v22, 0x1

    aget-object v22, v11, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1a

    :cond_19
    const-string v21, "00101"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_14

    const-string v21, "99999"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_14

    .line 4428
    :cond_1a
    const-string v21, "Binding AutoPreconfigService"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4429
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 4430
    .local v13, "preconfigIntent":Landroid/content/Intent;
    const-string v21, "com.sec.android.AutoPreconfig"

    const-string v22, "com.sec.android.AutoPreconfig.AutoPreconfigService"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAutoPreconfigServiceConnection:Landroid/content/ServiceConnection;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 4432
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAPBound:Z

    goto/16 :goto_5

    .line 4451
    .end local v8    # "i":I
    .end local v11    # "mFeatureValues":[Ljava/lang/String;
    .end local v13    # "preconfigIntent":Landroid/content/Intent;
    :cond_1b
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1d

    const-string v21, "CTC"

    sget-object v22, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1d

    .line 4453
    const-string v21, "gsm.sim.selectnetwork"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4454
    .restart local v16    # "simselswitch":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "simselswitch = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4455
    const-string v21, "CDMA"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v21

    if-nez v21, :cond_1c

    .line 4456
    const-string v21, "do not set PROPERTY_ICC_OPERATOR_NUMERIC in case of slot1 cdma switching"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 4475
    .end local v16    # "simselswitch":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 4476
    .local v6, "e":Ljava/lang/NumberFormatException;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Corrupt IMSI! "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 4458
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "simselswitch":Ljava/lang/String;
    :cond_1c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x3

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 4463
    .end local v16    # "simselswitch":Ljava/lang/String;
    :cond_1d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v21

    const-string v22, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1f

    .line 4464
    const-string v21, "gsm.sim.sixmode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v22

    const-string v23, "GSM"

    invoke-static/range {v21 .. v23}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 4465
    .restart local v17    # "sixmode":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "sixmode = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4466
    const-string v21, "GSM"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1e

    const-string v21, "1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1e

    const-string v21, "2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 4467
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x3

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 4471
    .end local v17    # "sixmode":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x3

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    .line 4482
    :cond_20
    const-string v21, "onAllRecordsLoaded empty imsi skipping setting mcc"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method public onReady()V
    .locals 0

    .prologue
    .line 4662
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    .line 4663
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4250
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordLoaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4253
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4254
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGbaRecordsRequested:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    if-nez v1, :cond_0

    .line 4255
    const-string v1, "GBA records loaded"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.movial.gba_initialized"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4257
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4258
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGbaRecordsRequested:Z

    .line 4262
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 4263
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onAllRecordsLoaded()V

    .line 4268
    :cond_1
    :goto_0
    return-void

    .line 4264
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    if-gez v1, :cond_1

    .line 4265
    const-string v1, "recordsToLoad <0, programmer error suspected"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 4266
    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .param p1, "fileChanged"    # Z
    .param p2, "fileList"    # [I

    .prologue
    .line 1443
    if-eqz p1, :cond_0

    .line 1447
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    .line 1449
    :cond_0
    return-void
.end method

.method public refreshUiccVer()V
    .locals 3

    .prologue
    .line 5260
    const-string v0, "[refreshUiccVer] refreshed"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5261
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f30

    const/16 v2, 0x201

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 5262
    return-void
.end method

.method protected resetRecords()V
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 725
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    .line 726
    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    const-string v1, "gsm.sim.sprintsim"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_0
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 734
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 735
    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting0 mMncLength"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 737
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    .line 739
    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    .line 740
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    .line 741
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    .line 742
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    .line 743
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    .line 744
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    .line 745
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    .line 748
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSktImsiM:Ljava/lang/String;

    .line 749
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSktIrm:Ljava/lang/String;

    .line 753
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSetupDataRecordsBitMask:J

    .line 756
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 757
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 759
    :cond_1
    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "LRA"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 760
    const-string v1, "SIMRecords: onRadioOffOrNotAvailable set \'gsm.sim.operator.numeric\' to operator=null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 761
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    const-string v1, "CTC"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 763
    const-string v1, "gsm.sim.selectnetwork"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "simselswitch":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetRecords() simselswitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phone.getPhoneId() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 765
    const-string v1, "CDMA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    if-eqz v1, :cond_3

    .line 766
    :cond_2
    const-string v1, "SIMRecords: onRadioOffOrNotAvailable set \'gsm.sim.operator.numeric\' to operator=null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update icc_operator_numeric="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 768
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 769
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 777
    .end local v0    # "simselswitch":Ljava/lang/String;
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 782
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 783
    return-void

    .line 772
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 773
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "line"    # I
    .param p2, "voiceEnable"    # Ljava/lang/Boolean;
    .param p3, "videoEnable"    # Ljava/lang/Boolean;

    .prologue
    .line 5521
    new-instance v0, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 5522
    return-void
.end method

.method public setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 16
    .param p1, "line"    # I
    .param p2, "voiceEnable"    # Ljava/lang/Boolean;
    .param p3, "videoEnable"    # Ljava/lang/Boolean;
    .param p4, "dialingNumber"    # Ljava/lang/String;

    .prologue
    .line 1296
    const/4 v14, 0x0

    .line 1297
    .local v14, "voiceCfEnabled":Z
    const/4 v13, 0x0

    .line 1299
    .local v13, "videoCfEnabled":Z
    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v0, v1, :cond_1

    .line 1433
    :cond_0
    :goto_0
    return-void

    .line 1301
    :cond_1
    if-eqz p2, :cond_2

    .line 1302
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    .line 1304
    :cond_2
    if-eqz p3, :cond_3

    .line 1305
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    .line 1308
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1311
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCFIS:Z

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    if-eqz v1, :cond_10

    .line 1313
    if-eqz p2, :cond_4

    .line 1314
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1315
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1321
    :cond_4
    :goto_3
    if-eqz p3, :cond_5

    .line 1322
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1323
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1332
    :cond_5
    :goto_4
    if-eqz p4, :cond_7

    .line 1333
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_6

    .line 1334
    const/4 v1, 0x0

    const/16 v2, 0x13

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 1338
    :cond_6
    :try_start_1
    new-instance v9, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-direct {v9, v1, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    .local v9, "efCfisRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/16 v11, 0xe

    .line 1341
    .local v11, "recordSize":I
    invoke-virtual {v9, v11}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAdnString(I)[B

    move-result-object v7

    .line 1342
    .local v7, "byteCfisRecord":[B
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v3, 0x2

    invoke-static {v7, v1, v2, v3, v11}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1348
    .end local v7    # "byteCfisRecord":[B
    .end local v9    # "efCfisRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v11    # "recordSize":I
    :cond_7
    :goto_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6fcb

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/16 v15, 0x6fcb

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v15}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1352
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportOrangeCPHS"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    if-eqz v1, :cond_0

    .line 1354
    if-eqz p2, :cond_8

    .line 1355
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xf0

    or-int/lit8 v3, v3, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1364
    :cond_8
    :goto_6
    if-eqz p3, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_9

    .line 1365
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xa0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1374
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/16 v4, 0xe

    const/16 v5, 0x6f13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1428
    :catch_0
    move-exception v10

    .line 1429
    .local v10, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1302
    .end local v10    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1305
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1317
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xfe

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto/16 :goto_3

    .line 1325
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xef

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto/16 :goto_4

    .line 1343
    :catch_1
    move-exception v10

    .line 1344
    .local v10, "ex":Ljava/lang/Exception;
    const-string v1, "Exception for build CF number"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1359
    .end local v10    # "ex":Ljava/lang/Exception;
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xf0

    or-int/lit8 v3, v3, 0x5

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto/16 :goto_6

    .line 1369
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0xf

    or-int/lit8 v3, v3, 0x50

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_7

    .line 1380
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    if-eqz v1, :cond_17

    .line 1381
    const-string v1, "ATT"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "AIO"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    const-string v1, "1"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1384
    const-string v1, "Do not update EF_CFF_CPHS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1386
    :cond_12
    if-eqz p2, :cond_13

    .line 1387
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1388
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xf0

    or-int/lit8 v3, v3, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1395
    :cond_13
    :goto_8
    if-eqz p3, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_14

    .line 1396
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xa0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1404
    :cond_14
    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/16 v4, 0xe

    const/16 v5, 0x6f13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1391
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xf0

    or-int/lit8 v3, v3, 0x5

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_8

    .line 1400
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0xf

    or-int/lit8 v3, v3, 0x50

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_9

    .line 1410
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write cf icon voice value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write cf icon video value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1412
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    const/4 v14, 0x1

    .line 1413
    :goto_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    const/4 v13, 0x1

    .line 1415
    :goto_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1a

    .line 1416
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 1417
    .local v12, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1418
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cf_iconkey_voice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cf_iconkey_video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cf_imsikey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1421
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save CF_ICON to phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1412
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "sp":Landroid/content/SharedPreferences;
    :cond_18
    const/4 v14, 0x0

    goto/16 :goto_a

    .line 1413
    :cond_19
    const/4 v13, 0x0

    goto/16 :goto_b

    .line 1424
    :cond_1a
    const-string v1, "mContext is null, so do not save call forwarding flag on shared preferences"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public setCardDataInit()V
    .locals 3

    .prologue
    .line 992
    const-string v0, "setCardDataInit"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 993
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 994
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const-string v0, "CTC"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 996
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    if-nez v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 1002
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 1003
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    .line 1005
    :cond_1
    return-void

    .line 1000
    :cond_2
    const-string v0, "gsm.sim.gsmoperator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0x6f40

    .line 914
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    .line 915
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set MSISDN: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "xxxxxxx"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 919
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    .local v1, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 923
    return-void
.end method

.method public setSpnDynamic(Ljava/lang/String;)V
    .locals 13
    .param p1, "currentPlmn"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x3

    .line 5563
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 5564
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnDisplayRuleOverride:I

    .line 5566
    const/4 v5, 0x0

    .line 5568
    .local v5, "simOper":Ljava/lang/String;
    const-string v9, "gsm.sim.operator.numeric"

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v10

    const-string v11, ""

    invoke-static {v9, v10, v11}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5570
    if-eqz v5, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v9, v5}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 5604
    :cond_0
    :goto_0
    return-void

    .line 5574
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5575
    .local v8, "spnOverrideString":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/telephony/uicc/SpnOverride;->getDisplayRule(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 5576
    .local v6, "spnDisplayRule":I
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/telephony/uicc/SpnOverride;->getOverrideOnlyOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 5578
    .local v3, "onlyOn":[Ljava/lang/String;
    if-nez v8, :cond_2

    if-ltz v6, :cond_0

    .line 5582
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnForCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5584
    .local v7, "spnForCurrentLocale":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 5585
    iput-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 5586
    iput v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnDisplayRuleOverride:I

    goto :goto_0

    .line 5593
    :cond_3
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v12, :cond_0

    .line 5597
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 5598
    .local v4, "p":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v9, 0x0

    invoke-virtual {p1, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 5599
    :cond_4
    iput-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 5600
    iput v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnDisplayRuleOverride:I

    goto :goto_0

    .line 5597
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setVideoCallForwardingFlag(IZ)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 5505
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVideoCallForwardingFlag(IZLjava/lang/String;)V

    .line 5506
    return-void
.end method

.method public setVideoCallForwardingFlag(IZLjava/lang/String;)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "enable"    # Z
    .param p3, "dialingNumber"    # Ljava/lang/String;

    .prologue
    .line 5513
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 5514
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 5489
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 5490
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "enable"    # Z
    .param p3, "dialingNumber"    # Ljava/lang/String;

    .prologue
    .line 5497
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 5498
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 1083
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    if-eqz v0, :cond_0

    .line 1084
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/uicc/IccVmFixedException;

    const-string v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1086
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1113
    :goto_0
    return-void

    .line 1090
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    .line 1091
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    .line 1093
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    .local v1, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    if-eqz v0, :cond_1

    .line 1098
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/16 v6, 0x14

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1102
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1104
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/16 v6, 0x19

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1109
    :cond_2
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1111
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 8
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1131
    if-eq p1, v1, :cond_1

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1138
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    if-eqz v2, :cond_2

    .line 1142
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xfe

    if-nez p2, :cond_3

    :goto_1
    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 1146
    if-gez p2, :cond_4

    .line 1149
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 1154
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fca

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fca

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1159
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    if-eqz v0, :cond_0

    .line 1161
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xf0

    if-nez p2, :cond_5

    const/4 v0, 0x5

    :goto_3
    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 1164
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f11

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1168
    :catch_0
    move-exception v6

    .line 1169
    .local v6, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-virtual {p0, v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v6    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    move v0, v1

    .line 1142
    goto :goto_1

    .line 1151
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1161
    :cond_5
    const/16 v0, 0xa

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    .line 270
    const-string v0, "xxx"

    .line 272
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mVmConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSpnOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSpnOverride"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spnState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCphsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCspPlmnEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " efMWIS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " efCPHS_MWI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEfCff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEfCfis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getOperatorNumeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
