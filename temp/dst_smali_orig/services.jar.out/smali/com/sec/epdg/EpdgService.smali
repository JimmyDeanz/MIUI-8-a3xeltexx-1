.class public Lcom/sec/epdg/EpdgService;
.super Lcom/sec/epdg/IEpdgManager$Stub;
.source "EpdgService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WorldReadableFiles"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgService$WfcProfileTask;,
        Lcom/sec/epdg/EpdgService$DatabaseAccessTask;,
        Lcom/sec/epdg/EpdgService$MapconDatabaseTask;,
        Lcom/sec/epdg/EpdgService$ServiceStatusChangedRunnable;,
        Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;,
        Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;,
        Lcom/sec/epdg/EpdgService$WifiCallHandover;,
        Lcom/sec/epdg/EpdgService$WifiCallEnabler;,
        Lcom/sec/epdg/EpdgService$LteToWifiHOFailureRunnable;,
        Lcom/sec/epdg/EpdgService$LteToWifiHOSuccessRunnable;,
        Lcom/sec/epdg/EpdgService$WifiToLteHOFailureRunnable;,
        Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;,
        Lcom/sec/epdg/EpdgService$HORunnable;,
        Lcom/sec/epdg/EpdgService$EpdgHandler;,
        Lcom/sec/epdg/EpdgService$EpdgDelayedInit;,
        Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;,
        Lcom/sec/epdg/EpdgService$EpdgSettingObserver;,
        Lcom/sec/epdg/EpdgService$EpdgContentObserver;,
        Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;,
        Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;,
        Lcom/sec/epdg/EpdgService$HoDelayStatus;,
        Lcom/sec/epdg/EpdgService$PolicyUpdateReason;,
        Lcom/sec/epdg/EpdgService$VoWifiStatus;,
        Lcom/sec/epdg/EpdgService$IpType;,
        Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;,
        Lcom/sec/epdg/EpdgService$DnsRetryReason;
    }
.end annotation


# static fields
.field private static final ACTION_IMS_ON_SIMLOADED:Ljava/lang/String; = "com.samsung.ims.action.onsimloaded"

.field private static final EVENT_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final EXTRA_APNTYPE:Ljava/lang/String; = "apntype"

.field public static final EXTRA_APN_NAME:Ljava/lang/String; = "apn_name"

.field public static final EXTRA_CDMAAVAILABILITY:Ljava/lang/String; = "cdmaAvailability"

.field private static final EXTRA_COUNT:Ljava/lang/String; = "count"

.field public static final EXTRA_EPDGALLOWED:Ljava/lang/String; = "epdg_allowed"

.field private static final EXTRA_IKEERROR:Ljava/lang/String; = "ikeerror"

.field private static final EXTRA_IPSECEVENT:Ljava/lang/String; = "ipsecevent"

.field private static final EXTRA_NETWORKTYPE:Ljava/lang/String; = "networkType"

.field private static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_RETRY_REQUIRED:Ljava/lang/String; = "retry_required"

.field public static final EXTRA_SSID:Ljava/lang/String; = "ssid"

.field private static final HANDOFF_TAG:Ljava/lang/String; = "[HANDOFF]"

.field private static final INCOMING_IPSEC:Ljava/lang/String; = "[IPSEC->EPDGService]"

.field private static final INCOMING_RIL:Ljava/lang/String; = "[RIL->EPDGService]"

.field private static final INTENT_ADB_IP_CALL_SETTING_CHANGE:Ljava/lang/String; = "com.sec.commands.ipcall.action_ip_setting_change"

.field private static final INTENT_ADB_IP_CALL_SETTING_NAME:Ljava/lang/String; = "com.sec.commands.ipcall.setting"

.field private static final INTENT_ADB_IP_CALL_SETTING_STATE:Ljava/lang/String; = "com.sec.commands.ipcall.state"

.field private static final INTENT_AIRPLANE_MODE:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field private static final INTENT_DEFAULT_DATA_SUB_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

.field public static final INTENT_EMERGENCY_CALLBACK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

.field public static final INTENT_EMERGENCY_CALLBACK_MODE_CHANGED_END:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_IMS"

.field static final INTENT_EPDG_AVAILABLE:Ljava/lang/String; = "com.sec.epdg.EPDG_AVAILABLE"

.field private static final INTENT_EPDG_DEREGISTER_EVENT:Ljava/lang/String; = "com.sec.epdgservice.EPDG_DEREGISTER"

.field static final INTENT_EPDG_NOT_AVAILABLE:Ljava/lang/String; = "com.sec.epdg.EPDG_NOTAVAILABLE"

.field private static final INTENT_EPDG_REGISTER_EVENT:Ljava/lang/String; = "com.sec.epdgservice.EPDG_REGISTER"

.field static final INTENT_INTERNET_KEEP_ALIVE:Ljava/lang/String; = "com.sec.epdg.INTERNET_KEEP_ALIVE"

.field public static final INTENT_IPSEC_CONNECTION_EVENT:Ljava/lang/String; = "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_ADMIN:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_ADMIN"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_APP:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_APP"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_EPDN:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_EPDN"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_IMS:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_IMS"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_INTERNET:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_INTERNET"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_MMS:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_MMS"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_XCAP:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_XCAP"

.field private static final INTENT_ISIM_LOADED:Ljava/lang/String; = "android.intent.action.ISIM_LOADED"

.field public static final INTENT_NATT_KEEP_ALIVE_TIMER_EXPIRED:Ljava/lang/String; = "com.sec.epdg.NATT_KEEP_ALIVE_TIMER_EXPIRED"

.field public static final INTENT_PERIODIC_DPD_TIMER_EXPIRED:Ljava/lang/String; = "com.sec.epdg.PERIODIC_DPD_TIMER_EXPIRED"

.field public static final INTENT_RETRY_TIMER_EXPIRED:Ljava/lang/String; = "com.sec.epdg.RETRY_TIMER_EXPIRED"

.field private static final INTENT_SCREEN_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field private static final INTENT_SCREEN_ON:Ljava/lang/String; = "android.intent.action.SCREEN_ON"

.field private static final INTENT_SIM_STATE:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field static final INTENT_WFC_EPDG_ALLOWED:Ljava/lang/String; = "com.sec.epdg.WFC_EPDG_ALLOWED"

.field private static final INTENT_WFC_SWITCH_PROFILE:Ljava/lang/String; = "action_wfc_switch_profile_broadcast"

.field private static final INTENT_WIFI_CALL_ENABLE:Ljava/lang/String; = "action_wifi_call_enable_broadcast"

.field private static final INTENT_WIFI_LINK_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.net.wifi.LINK_CONFIGURATION_CHANGED"

.field private static final MAX_FQDN_RETRY_COUNT:I = 0x5

.field private static final NETWORK_PING_PONG_DELAY:I = 0x3e8

.field static final NOTIFY_L2W_REGISTRANT:I = 0x1

.field static final NOTIFY_W2L_REGISTRANT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[EPDGService]"

.field private static final VIDEO_SETTING:I = 0x1

.field private static final VOICECALL_TYPE_CS:I = 0x1

.field private static final VOICECALL_TYPE_KEY:Ljava/lang/String; = "voicecall_type"

.field private static final VOICECALL_TYPE_VOLTE:I = 0x0

.field private static final VOLTE_SETTING:I = 0x0

.field private static final VOWIFI_MDN_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field private static final WIFI_CALL_ENABLE_DEFAULT_VALUE:I = 0x0

.field private static final WIFI_DISABLED:I = 0x0

.field private static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field private static final WIFI_RSSI_DISABLE:I = -0x64

.field private static bIsSim2Ready:Z

.field private static bIsSimReady:Z

.field private static isCpThresholdTurnOn:Z

.field private static isNotRequiredTimer:Z

.field private static isOnDemandApnConnectionFailed:Z

.field private static mActiveRat:I

.field private static mCellularAvailable:Z

.field private static mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

.field private static mConnMgr:Landroid/net/ConnectivityManager;

.field private static mContext:Landroid/content/Context;

.field private static mCopyLogCnt:I

.field private static mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

.field private static mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mDefaultEnableEpdg:I

.field private static mDefaultSubID:I

.field private static mDeregiForHOFail:Z

.field private static mDisabledByNoRan:Z

.field private static mDisconnectRequired:Z

.field private static mEnableEpdg:Z

.field private static mEnableEpdgHandOver:Z

.field private static mEnableVolte:Z

.field private static mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

.field private static mEpdgHandler:Landroid/os/Handler;

.field private static mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

.field private static mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

.field private static mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

.field private static mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

.field private static mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

.field private static mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

.field private static final mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

.field private static mIsAirplaneMode:Z

.field private static mIsCsAvailable:Z

.field private static mIsEpdgInitialized:Z

.field private static mIsIsimReady:Z

.field private static mIsLteAvailable:Z

.field private static mIsRequiredToSendCdmaIndication:Z

.field private static mIsRssiDisabledForProfiling:Z

.field private static mIsSimCardRemoved:Z

.field private static mIsVoPSEnabled:Z

.field private static mIsWifiRssiInPollingZone:Z

.field private static mL2WAfterEpdgStatusQuery:Z

.field private static mPreviousE911CallCount:I

.field private static mPreviousNonE911CallCount:I

.field private static mRoaming:Z

.field private static mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

.field private static mSsacVoiceEnabled:Z

.field private static mW2LAfterEpdgStatusQuery:Z

.field private static mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

.field private static mWifiCallingPrefState:I

.field private static mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;


# instance fields
.field public final CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

.field public final CONTENT_URI_IWLANSETTINGS:Landroid/net/Uri;

.field private ROAMING_MODE_SETTING:Ljava/lang/String;

.field private final VOWIFI_ROAMING_PREF_CELLULAR:I

.field private final VOWIFI_ROAMING_PREF_WIFI:I

.field private final W2LHANDOFFAILURE:Ljava/lang/String;

.field private anArray:[I

.field private final mAirplaneModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mBlackListCountry:Ljava/lang/String;

.field private final mBootCompletedReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mCdmaOff:Ljava/lang/Runnable;

.field private final mCdmaOn:Ljava/lang/Runnable;

.field private mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

.field private mCurrentNetwork:Landroid/net/Network;

.field private mCurrentSim2Imsi:Ljava/lang/String;

.field private mCurrentSimImsi:Ljava/lang/String;

.field private final mDataRetryIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mDefaultDataSubChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mDnsPinger:Lcom/sec/epdg/DnsPinger;

.field private final mEcbmIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

.field private mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

.field private mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

.field private mFqdnRetryCount:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mIPCallAdbCommandReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mIfaceObserver:Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

.field private mImsCallListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

.field private mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

.field private final mImsReadyReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

.field private mInternetIntfName:Ljava/lang/String;

.field private mInternetKeepAlive:Landroid/content/Intent;

.field private final mInternetKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mIsScreenOn:Z

.field private mKeepAliveExpired:Z

.field private mKeepAliveRunning:Z

.field private final mL2WHandoverProfilingOn:Ljava/lang/Runnable;

.field private mLastSsid:Ljava/lang/String;

.field private final mLteOff:Ljava/lang/Runnable;

.field private final mLteOn:Ljava/lang/Runnable;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private final mNattKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mNetworkStatusChangedRunnable:Ljava/lang/Runnable;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPingerHandlerThread:Landroid/os/HandlerThread;

.field private final mPollingRssiOff:Ljava/lang/Runnable;

.field private final mPollingRssiOn:Ljava/lang/Runnable;

.field private final mPreferedModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mPrevSim2Imsi:Ljava/lang/String;

.field private mPrevSimImsi:Ljava/lang/String;

.field private mRegistedNetworkStateChangeReceiver:Z

.field private mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

.field private final mRoamingUri:Landroid/net/Uri;

.field private final mScreenOffIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mScreenOnIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mShutdownIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private mUpdateNetRegiRetryCount:I

.field private final mWiFiCallEnableIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mWifiCallingOff:Ljava/lang/Runnable;

.field private final mWifiLinkChangedIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mWifiMgrState:I

.field private final mWifiOff:Ljava/lang/Runnable;

.field private final mWifiOn:Ljava/lang/Runnable;

.field private final mWifiOnUri:Landroid/net/Uri;

.field private final mWifiRssiIntentReceived:Ljava/lang/Runnable;

.field private final mWifiStateIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsAirplaneMode:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsVoPSEnabled:Z

    sput v1, Lcom/sec/epdg/EpdgService;->mPreviousE911CallCount:I

    sput v1, Lcom/sec/epdg/EpdgService;->mPreviousNonE911CallCount:I

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsWifiRssiInPollingZone:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsRssiDisabledForProfiling:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    sget v0, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    new-array v0, v0, [Lcom/sec/epdg/IPSecDataConnSM;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    sput v1, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mRoaming:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsIsimReady:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mEnableEpdgHandOver:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mEnableVolte:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsSimCardRemoved:Z

    sput v1, Lcom/sec/epdg/EpdgService;->mDefaultEnableEpdg:I

    sput v2, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isOnDemandApnConnectionFailed:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z

    sput v1, Lcom/sec/epdg/EpdgService;->mCopyLogCnt:I

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsRequiredToSendCdmaIndication:Z

    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mSsacVoiceEnabled:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mDisabledByNoRan:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z

    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsLteAvailable:Z

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsCsAvailable:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    const/4 v0, -0x1

    sput v0, Lcom/sec/epdg/EpdgService;->mWifiCallingPrefState:I

    sget-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/epdg/IEpdgManager$Stub;-><init>()V

    iput-boolean v2, p0, Lcom/sec/epdg/EpdgService;->mIsScreenOn:Z

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    const-string v0, "wifi_call_when_roaming"

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->ROAMING_MODE_SETTING:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->ROAMING_MODE_SETTING:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mRoamingUri:Landroid/net/Uri;

    const-string v0, "wifi_on"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOnUri:Landroid/net/Uri;

    const-string v0, "N/w Issue: W2L handoff failure"

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->W2LHANDOFFAILURE:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mPrevSimImsi:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mPrevSim2Imsi:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveRunning:Z

    iput-boolean v2, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveExpired:Z

    iput-boolean v2, p0, Lcom/sec/epdg/EpdgService;->mRegistedNetworkStateChangeReceiver:Z

    const-string v0, "content://iwlansettings/todos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->CONTENT_URI_IWLANSETTINGS:Landroid/net/Uri;

    const-string v0, "content://iwlansettings/todos/epdgsettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    iput v2, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    iput v2, p0, Lcom/sec/epdg/EpdgService;->mUpdateNetRegiRetryCount:I

    iput v2, p0, Lcom/sec/epdg/EpdgService;->VOWIFI_ROAMING_PREF_CELLULAR:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/epdg/EpdgService;->VOWIFI_ROAMING_PREF_WIFI:I

    new-instance v0, Lcom/sec/epdg/EpdgService$1;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$1;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$2;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$2;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsReadyReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$3;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$3;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    new-instance v0, Lcom/sec/epdg/EpdgService$4;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$4;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsCallListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    new-instance v0, Lcom/sec/epdg/EpdgService$5;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$5;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mDefaultDataSubChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$6;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$6;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mDataRetryIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$7;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$7;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mNattKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$8;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$8;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mInternetKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$9;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$9;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mScreenOffIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$10;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$10;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mScreenOnIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$11;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$11;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mAirplaneModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$12;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$12;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiLinkChangedIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$13;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$13;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mPreferedModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$14;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$14;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWiFiCallEnableIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$15;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$15;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mIPCallAdbCommandReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$16;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$16;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mEcbmIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$17;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$17;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mShutdownIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$18;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$18;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiStateIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;-><init>(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$1;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mIfaceObserver:Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

    iput v2, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mBlackListCountry:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    new-instance v0, Lcom/sec/epdg/EpdgService$19;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$19;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mBootCompletedReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$20;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$20;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v0, Lcom/sec/epdg/EpdgService$21;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$21;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mL2WHandoverProfilingOn:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/epdg/EpdgService$22;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$22;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiRssiIntentReceived:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/epdg/EpdgService$23;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$23;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mPollingRssiOn:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/epdg/EpdgService$24;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$24;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mPollingRssiOff:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/epdg/EpdgService$25;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$25;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOn:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/epdg/EpdgService$26;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$26;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/epdg/EpdgService$27;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$27;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mLteOn:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/epdg/EpdgService$28;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$28;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mLteOff:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/epdg/EpdgService$29;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$29;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mCdmaOn:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/epdg/EpdgService$30;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$30;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mCdmaOff:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/epdg/EpdgService$31;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$31;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiCallingOff:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/epdg/EpdgService$32;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$32;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mNetworkStatusChangedRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/epdg/EpdgService$33;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$33;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->criticalInit(Landroid/content/Context;)V

    return-void
.end method

.method private declared-synchronized MoveToBasedOnSettings(I)V
    .locals 3
    .param p1, "voLte"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoveToBasedOnSettings : volte or vops("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") VoWifi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") 1x available ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOLTE_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "[EPDGService]"

    const-string v1, "Volte Off or vops disabled, Cdma scanning will start. Start the TEPDG1XSCANNING timer"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    :cond_2
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized MoveToBasedOnVopsOrSsac(I)V
    .locals 3
    .param p1, "networkSetting"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoveToBasedOnVopsOrSsac :  VoWifi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") VOPS ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsVoPSEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") SSAC Voice("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSsacVoiceEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startTEPDGLTETimerIfRequired()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ReadEpdgSettingFromIMS()V
    .locals 8

    .prologue
    const-string v5, "[EPDGService]"

    const-string v6, "ReadEpdgSettingFromIMS"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    .local v2, "strEpgdEnabled":Ljava/lang/String;
    const-string v3, ""

    .local v3, "strEpgdHandoverEnabled":Ljava/lang/String;
    const-string v4, ""

    .local v4, "strVolteEnabled":Ljava/lang/String;
    const/4 v5, 0x3

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    .local v0, "reqField":[I
    iget-object v5, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v5, v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getIMSSettingValues([I)Landroid/util/SparseArray;

    move-result-object v1

    .local v1, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    const/16 v5, 0x7a

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "strEpgdEnabled":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "strEpgdEnabled":Ljava/lang/String;
    const/16 v5, 0x7b

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "strEpgdHandoverEnabled":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "strEpgdHandoverEnabled":Ljava/lang/String;
    const/16 v5, 0x60

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "strVolteEnabled":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .end local v1    # "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v4    # "strVolteEnabled":Ljava/lang/String;
    :cond_0
    const-string v5, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "strEpgdEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "strEpgdHandoverEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableVolte:Z

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->SupportIR94Only()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    const/4 v5, 0x1

    :goto_0
    sput-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    :cond_3
    sget-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-eqz v5, :cond_4

    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableEpdgHandOver:Z

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorDT()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    sget-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableVolte:Z

    if-eqz v5, :cond_7

    const-string v6, "ril.epdg.handover.enable"

    sget-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableEpdgHandOver:Z

    if-eqz v5, :cond_6

    const-string v5, "true"

    :goto_1
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    :cond_6
    const-string v5, "false"

    goto :goto_1

    :cond_7
    const-string v5, "ril.epdg.handover.enable"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v6, "ril.epdg.handover.enable"

    sget-boolean v5, Lcom/sec/epdg/EpdgService;->mEnableEpdgHandOver:Z

    if-eqz v5, :cond_9

    const-string v5, "true"

    :goto_3
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v5, "false"

    goto :goto_3

    :array_0
    .array-data 4
        0x7a
        0x7b
        0x60
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/Boolean;
    .locals 1

    .prologue
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V

    return-void
.end method

.method static synthetic access$1000()Lcom/sec/epdg/handover/EpdgImsListener;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/sec/epdg/EpdgService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10002(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10100()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;
    .locals 1

    .prologue
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgTemporaryBlocked()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10200(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->setIsWifiRssiInPollingZone(Z)V

    return-void
.end method

.method static synthetic access$10300(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isEpdgAvailabilityRecommended()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10400(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiGoodEnough()V

    return-void
.end method

.method static synthetic access$10500(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startTimersIfNeeded()V

    return-void
.end method

.method static synthetic access$10600(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->updateCpEpdgHoThreshold(Z)V

    return-void
.end method

.method static synthetic access$10700(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->sendWifiStatusChangedNotification(Z)V

    return-void
.end method

.method static synthetic access$10800(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startTEPDGLTETimerIfRequired()V

    return-void
.end method

.method static synthetic access$10900(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onNetworkStatusChanged()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11000(Lcom/sec/epdg/EpdgService;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->onServiceStatusChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$11100(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mNetworkStatusChangedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$11200(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onDbAccessCompleted()V

    return-void
.end method

.method static synthetic access$11300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setVowifiSetting(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/epdg/EpdgService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->handleSimStateChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->handleImsStateChange(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/os/Handler;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/epdg/EpdgService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/epdg/EpdgService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/epdg/EpdgService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->handleDefaultSubChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->getSMForApnType(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onSystemSelectTimerFinish()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onInternetKeepAliveTimerExpiry()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setIsScreenOn(Z)V

    return-void
.end method

.method static synthetic access$2200()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSimCardRemoved()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getIsScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    return-void
.end method

.method static synthetic access$2600()Landroid/content/Context;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700()Lcom/sec/epdg/EpdgTimers;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/epdg/EpdgService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->sendEpdgDeregisterBroadcastIfRequired(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->moveToLteBasedOnMapcon()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isImsDeRegiRequiredNet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100()Lcom/sec/epdg/EpdgService$WfcProfileTask;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/sec/epdg/EpdgService$WfcProfileTask;)Lcom/sec/epdg/EpdgService$WfcProfileTask;
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService$WfcProfileTask;

    .prologue
    sput-object p0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/sec/epdg/EpdgService;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRoamingUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/sec/epdg/EpdgService;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOnUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->sendWifiDelayRequest(Z)V

    return-void
.end method

.method static synthetic access$3700()[Lcom/sec/epdg/IPSecDataConnSM;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->isValidAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900()Lcom/sec/epdg/EpdgService$IpType;
    .locals 1

    .prologue
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getConfiguredWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isKeepAliveRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startTimerOrPerformDns(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/sec/epdg/EpdgService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->initEpdgService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/sec/epdg/EpdgService;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/sec/epdg/EpdgService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToTestApp(II)V

    return-void
.end method

.method static synthetic access$4500()I
    .locals 1

    .prologue
    sget v0, Lcom/sec/epdg/EpdgService;->mCopyLogCnt:I

    return v0
.end method

.method static synthetic access$4502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    sput p0, Lcom/sec/epdg/EpdgService;->mCopyLogCnt:I

    return p0
.end method

.method static synthetic access$4600()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z

    return v0
.end method

.method static synthetic access$4602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z

    return p0
.end method

.method static synthetic access$4700(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->movePdnFromWifi()V

    return-void
.end method

.method static synthetic access$4800()I
    .locals 1

    .prologue
    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    return v0
.end method

.method static synthetic access$4900()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z

    return v0
.end method

.method static synthetic access$4902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z

    return p0
.end method

.method static synthetic access$500()Lcom/sec/epdg/EpdgRilSharedData;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/epdg/EpdgService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startHandOverWifiToLte(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/sec/epdg/EpdgService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->handleRetryTimerExpired(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgRilInterface;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/epdg/EpdgService;)Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->notifyL2WHandoverResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->notifyW2LHandoverResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->handleEpdgSettingsReadEvent()V

    return-void
.end method

.method static synthetic access$5700(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->handleMapconChange()V

    return-void
.end method

.method static synthetic access$5800(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isHandoverRequiredOnCdmaIndication()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->pingAsyncInternet()V

    return-void
.end method

.method static synthetic access$6000(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    return-void
.end method

.method static synthetic access$6100()Lcom/sec/epdg/EpdgService$IpType;
    .locals 1

    .prologue
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200(Lcom/sec/epdg/EpdgService$IpType;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService$IpType;

    .prologue
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    return-void
.end method

.method static synthetic access$6400(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    return-void
.end method

.method static synthetic access$6500(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->stopPeriodicDpdIfNecessary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startPeriodicDpdIfNecessary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->startWifiRssiIntentDelayTimerIfRequired(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/sec/epdg/EpdgService;->stopWifiRssiIntentDelayTimerIfRequired()V

    return-void
.end method

.method static synthetic access$6900(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->getSMForApnName(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Lcom/sec/epdg/EpdgContentReader;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/sec/epdg/EpdgService;ZZZZZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/sec/epdg/EpdgContentReader;)Lcom/sec/epdg/EpdgContentReader;
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgContentReader;

    .prologue
    sput-object p0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->MoveToBasedOnSettings(I)V

    return-void
.end method

.method static synthetic access$7200(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->onVolteProvisioningStateChanged(I)V

    return-void
.end method

.method static synthetic access$7300(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->onVoWifiProvisioningStateChanged(I)V

    return-void
.end method

.method static synthetic access$7400()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z

    return v0
.end method

.method static synthetic access$7402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z

    return p0
.end method

.method static synthetic access$7500()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    return-object v0
.end method

.method static synthetic access$7600()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z

    return v0
.end method

.method static synthetic access$7602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z

    return p0
.end method

.method static synthetic access$7700(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setEpdgTemporaryBlocked(Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V

    return-void
.end method

.method static synthetic access$7800()Lcom/sec/epdg/EpdgService$HoDelayStatus;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->onVopsStatusChanged(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/epdg/EpdgService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    return-void
.end method

.method static synthetic access$8000(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getHasPendingCdmaIndication()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8100(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setHasPendingCdmaIndication(Z)V

    return-void
.end method

.method static synthetic access$8200()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsImsCallConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8300()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsWifiRssiInPollingZone()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8400()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSsacVoiceEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8500(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->setIsSsacVoiceEnabled(Z)V

    return-void
.end method

.method static synthetic access$8600(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->MoveToBasedOnVopsOrSsac(I)V

    return-void
.end method

.method static synthetic access$8700(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->changeApBlocking(Z)V

    return-void
.end method

.method static synthetic access$8800(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->initAfterimsReady()V

    return-void
.end method

.method static synthetic access$8900(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->updateNetRegist()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/epdg/EpdgService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->is3gNetwork(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9000(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$VoWifiStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiCallingOff:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    sput p0, Lcom/sec/epdg/EpdgService;->mWifiCallingPrefState:I

    return p0
.end method

.method static synthetic access$9300(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9400(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->updateMapconTable(Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/sec/epdg/EpdgService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mBlackListCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/sec/epdg/EpdgService$IpType;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService$IpType;

    .prologue
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/sec/epdg/EpdgService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    return v0
.end method

.method static synthetic access$9802(Lcom/sec/epdg/EpdgService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    return p1
.end method

.method static synthetic access$9900()Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private changeApBlocking(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeApBlocking :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wifiConnected  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "blocking State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sget-object v1, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->BLACKLIST_COUNTRY:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    :cond_1
    :goto_1
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeApBlocking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sget-object v1, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->AP_NOT_ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->sendEpdgDeregisterBroadcastIfRequired(Z)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "[EPDGService]"

    const-string v1, "AP blocked - do not need de-register "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    goto :goto_1
.end method

.method private checkAndUpdateWifiAvailability()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSimCardRemoved()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[EPDGService]"

    const-string v1, "checkAndUpdateWifiAvailability: No Sim card. Ignore all notifications"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    if-nez v0, :cond_0

    const-string v0, "[EPDGService]"

    const-string v1, "check AP is allowed for EPDG service first"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/epdg/EpdgService$WfcProfileTask;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/epdg/EpdgService$WfcProfileTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    sget-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    goto :goto_0
.end method

.method private checkVopsStatus(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v1, 0x1

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVopsStatus: service state is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getVoPS(Landroid/telephony/ServiceState;)I

    move-result v0

    .local v0, "vops":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const-string v2, "[EPDGService]"

    const-string v3, "checkVopsStatus: Inappropriate vops status, returning"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v0, v1, :cond_2

    .local v1, "vopsEnabled":Z
    :goto_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsVoPSEnabled()Z

    move-result v2

    if-eq v2, v1, :cond_0

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVopsStatus: Vops status is changed to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->onVopsStatusChanged(I)V

    goto :goto_0

    .end local v1    # "vopsEnabled":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static copyVpnLog(I)V
    .locals 12
    .param p0, "num"    # I

    .prologue
    const/4 v3, 0x0

    .local v3, "fin":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .local v6, "fout":Ljava/io/FileOutputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/log/vpnclientpm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "dest":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v9, "/data/data/com.ipsec.service/vpnclientpm.txt"

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v4, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .local v7, "fout":Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    :try_start_2
    new-array v0, v9, [B

    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .local v8, "len":I
    if-lez v8, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .end local v0    # "buffer":[B
    .end local v8    # "len":I
    :catch_0
    move-exception v5

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .local v5, "fnfe":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v9, "[EPDGService]"

    const-string v10, "FileNotFoundException "

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_0
    :goto_2
    if-eqz v6, :cond_1

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    return-void

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "len":I
    :cond_2
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_3

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_3
    :goto_4
    if-eqz v7, :cond_7

    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "buffer":[B
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "len":I
    .restart local v5    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_9
    const-string v9, "[EPDGService]"

    const-string v10, "Exception occured"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v3, :cond_4

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :cond_4
    :goto_6
    if-eqz v6, :cond_1

    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_3

    :catch_6
    move-exception v2

    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_7
    move-exception v2

    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_7
    if-eqz v3, :cond_5

    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    :cond_5
    :goto_8
    if-eqz v6, :cond_6

    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :cond_6
    :goto_9
    throw v9

    :catch_8
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "[EPDGService]"

    const-string v11, "Exception : close exception"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "[EPDGService]"

    const-string v11, "Exception : close exception"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v2

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_5

    :catch_c
    move-exception v5

    goto/16 :goto_1

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_d
    move-exception v5

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "len":I
    :cond_7
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private criticalInit(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "[EPDGService]"

    const-string v1, "Enter step 1 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EpdgServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgHandler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$EpdgHandler;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Looper;)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$EpdgDelayedInit;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/EpdgService$EpdgDelayedInit;-><init>(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "[EPDGService]"

    const-string v1, "Exit step 1 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enableReceiver(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getRegistedNetworkStateChangeReceiver()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setRegistedNetworkStateChangeReceiver(Z)V

    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->registerListener()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getRegistedNetworkStateChangeReceiver()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setRegistedNetworkStateChangeReceiver(Z)V

    :cond_2
    sget-object v0, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->unregisterListener()V

    goto :goto_0
.end method

.method public static getAllApnSettings()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/IWlanApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getIWlanApnList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "epdgApnType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .local v2, "apnName":Ljava/lang/String;
    if-nez p0, :cond_0

    const-string v7, "[EPDGService]"

    const-string v8, "(null apnType)"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v6

    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/epdg/IWlanApnSetting;

    .local v4, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v5

    .local v5, "remoteUri":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v3

    .local v3, "apnType":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apnType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mapped to apnName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v2

    goto :goto_0

    .end local v3    # "apnType":Ljava/lang/String;
    .end local v4    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    .end local v5    # "remoteUri":Ljava/lang/String;
    :cond_2
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find apnName for apnType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getConfiguredWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;
    .locals 3

    .prologue
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfiguredWifiIntfIpType: returning ip type as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    return-object v0
.end method

.method public static getConnMgrInstance()Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getCpThresholdConditionForHandover()Z
    .locals 2

    .prologue
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mEnableEpdgHandOver:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const-string v0, "[EPDGService]"

    const-string v1, "It is true that CpThresholdCondition for handover"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "It is false that CpThresholdCondition for handover"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .local v0, "newSsid":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current Ssid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;
    .locals 3

    .prologue
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentWifiIntfIpType: returning ip type as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    return-object v0
.end method

.method public static getEpdgFqdn()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getEpdgFQDN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEpdgServiceContext()Landroid/content/Context;
    .locals 2

    .prologue
    const-string v0, "[EPDGService]"

    const-string v1, "Returning epdg service context"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getEpdgServiceHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getEpdgSettings()Lcom/sec/epdg/EpdgSettings;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    return-object v0
.end method

.method private static getEpdgTemporaryBlocked()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;
    .locals 1

    .prologue
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    goto :goto_0
.end method

.method private getHasPendingCdmaIndication()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsRequiredToSendCdmaIndication:Z

    goto :goto_0
.end method

.method public static getIpmeStatus()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getIpmeStatus()Z

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized getIsAirplaneMode()Z
    .locals 4

    .prologue
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsAirplaneMode: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->mIsAirplaneMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsAirplaneMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getIsCellularAvailable()Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-class v8, Lcom/sec/epdg/EpdgService;

    monitor-enter v8

    :try_start_0
    sget-object v9, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .local v5, "tm":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .local v2, "isRoaming":Z
    sget-object v9, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "voicecall_type"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, "callType":I
    const/4 v0, 0x0

    .local v0, "bIsCellularAvailable":Z
    const-string v9, "gsm.sim.state"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "simState":Ljava/lang/String;
    const-string v9, "READY"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "true"

    const-string v10, "gsm.operator.isroaming"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataRoamingEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    :goto_0
    monitor-exit v8

    return v6

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorRogers()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v1, :cond_1

    :cond_3
    sget v9, Lcom/sec/epdg/EpdgService;->mWifiCallingPrefState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    const-string v7, "[EPDGService]"

    const-string v9, "mWifiCallingPrefState is NEVER_USE_CS"

    invoke-static {v7, v9}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "bIsCellularAvailable":Z
    .end local v1    # "callType":I
    .end local v4    # "simState":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v8

    throw v6

    .restart local v0    # "bIsCellularAvailable":Z
    .restart local v1    # "callType":I
    .restart local v4    # "simState":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/telephony/TelephonyManager;->getServiceState(I)I

    move-result v9

    if-nez v9, :cond_7

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v9

    if-nez v9, :cond_7

    move v0, v7

    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    sget v10, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    invoke-virtual {v9, v10}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v3

    .local v3, "netType":I
    :goto_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez v3, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_a

    :cond_5
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v9

    if-nez v9, :cond_a

    move v0, v7

    :cond_6
    :goto_3
    move v6, v0

    goto :goto_0

    .end local v3    # "netType":I
    :cond_7
    move v0, v6

    goto :goto_1

    :cond_8
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v9

    if-nez v9, :cond_9

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v9

    if-nez v9, :cond_9

    move v0, v7

    :goto_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .restart local v3    # "netType":I
    goto :goto_2

    .end local v3    # "netType":I
    :cond_9
    move v0, v6

    goto :goto_4

    .restart local v3    # "netType":I
    :cond_a
    move v0, v6

    goto :goto_3
.end method

.method public static declared-synchronized getIsCsAvailable()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v2, Lcom/sec/epdg/EpdgService;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartCdmaRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->mIsCsAvailable:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    monitor-exit v2

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    :cond_2
    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static getIsDynamicFqdn()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getIsDynamicFQDN()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getIsEpdgAvailable()Z
    .locals 6

    .prologue
    const-class v3, Lcom/sec/epdg/EpdgService;

    monitor-enter v3

    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    const-string v2, "ril.epdg.available"

    const-string v4, "false"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "epdgAvailable":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIsEpdgAvailable: returning: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v1

    .end local v0    # "epdgAvailable":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static getIsImsCallConnected()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "result":Z
    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_BLOCKHANDOFF:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsImsCallConnected: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static declared-synchronized getIsLteAvailable()Z
    .locals 3

    .prologue
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartLteRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getIsLteAvailable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsVoPSEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSsacVoiceEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getIsNetworkRoaming()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method private static getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->isOnDemandApnConnectionFailed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static getIsRssiDisabledForProfiling()Z
    .locals 3

    .prologue
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIsRssiDisabledForProfiling: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsRssiDisabledForProfiling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsRssiDisabledForProfiling:Z

    return v0
.end method

.method private declared-synchronized getIsScreenOn()Z
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIsScreenOn: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/epdg/EpdgService;->mIsScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mIsScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getIsSimCardRemoved()Z
    .locals 3

    .prologue
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIsSimCardRemoved: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsSimCardRemoved:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsSimCardRemoved:Z

    return v0
.end method

.method private static declared-synchronized getIsSsacVoiceEnabled()Z
    .locals 4

    .prologue
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsSsacVoiceEnabled: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->mSsacVoiceEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mSsacVoiceEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getIsVoPSEnabled()Z
    .locals 4

    .prologue
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsVoPSEnabled: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->mIsVoPSEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsVoPSEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getIsWiFiPreferredInRoaming()Lcom/sec/epdg/EpdgConstants$TriState;
    .locals 4

    .prologue
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->ROAMING_MODE_SETTING:Ljava/lang/String;

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgConstants$TriState;->getValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "prefWifi":I
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsWiFiPreferredInRoaming :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sec/epdg/EpdgConstants$TriState;->get(I)Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v1

    .end local v0    # "prefWifi":I
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_0
.end method

.method private static getIsWifiRssiInPollingZone()Z
    .locals 3

    .prologue
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIsWifiRssiInPollingZone: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsWifiRssiInPollingZone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsWifiRssiInPollingZone:Z

    return v0
.end method

.method public static declared-synchronized getIsimState()Z
    .locals 2

    .prologue
    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/sec/epdg/EpdgService;->mIsIsimReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getIwlanContextState(Ljava/lang/String;)Lcom/sec/epdg/IWlanState;
    .locals 4
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIwlanContextState() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized getPreviousE911CallCount()I
    .locals 4

    .prologue
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreviousE911CallCount: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/epdg/EpdgService;->mPreviousE911CallCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/sec/epdg/EpdgService;->mPreviousE911CallCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPreviousNonE911CallCount()I
    .locals 4

    .prologue
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreviousNonE911CallCount: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/epdg/EpdgService;->mPreviousNonE911CallCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/sec/epdg/EpdgService;->mPreviousNonE911CallCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getRegistedNetworkStateChangeReceiver()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mRegistedNetworkStateChangeReceiver:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getSMForApnName(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 7
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :goto_1
    return-object v3

    .restart local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No SM for apnName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getSMForApnType(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 7
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :goto_1
    return-object v3

    .restart local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No SM for apnType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized getSimState()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const-class v2, Lcom/sec/epdg/EpdgService;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getSimState() SimState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SimState2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    if-eq v3, v0, :cond_1

    :cond_0
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v3

    if-ne v3, v0, :cond_2

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit v2

    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static getTargetRilNetwork()I
    .locals 4

    .prologue
    const/16 v0, 0xff

    .local v0, "mTargetRilNetwork":I
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current mActiveRat is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    const/16 v0, 0x19

    :goto_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning mTargetRilNetwork is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    sget v1, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    const/16 v0, 0x21

    goto :goto_0

    :cond_1
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private getVoWifiStatus()Lcom/sec/epdg/EpdgService$VoWifiStatus;
    .locals 6

    .prologue
    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_call_enable"

    sget v5, Lcom/sec/epdg/EpdgService;->mDefaultEnableEpdg:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .local v2, "settingState":I
    invoke-static {v2}, Lcom/sec/epdg/EpdgConstants$TriState;->get(I)Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v1

    .local v1, "isWifiCallEnableSetting":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v3, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsSettings;->readVolteProvisionedState()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    .local v0, "isVolteProvisioned":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v0, :cond_0

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v1, :cond_0

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    :goto_0
    return-object v3

    :cond_0
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v0, :cond_2

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-eq v3, v1, :cond_2

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v1, :cond_1

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-eq v3, v0, :cond_4

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v1, :cond_4

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v0, :cond_3

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v0, :cond_5

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v1, :cond_5

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0
.end method

.method private handleDefaultSubChange(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    const-string v2, "[EPDGService]"

    const-string v3, "Inside handleDefaultSubChange: "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "subscription"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, "subscription":I
    if-le v1, v4, :cond_0

    const v2, 0x7ffffffb

    if-ge v1, v2, :cond_0

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDefaultSubChange() subscription is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .local v0, "phoneID":I
    const-string v2, "sys.default.data.phoneid"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDefaultSubChange() phoneID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput v1, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/throttle/ThrottleController;->onSimChanged()V

    .end local v0    # "phoneID":I
    :cond_0
    new-instance v2, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private handleEpdgSettingsReadEvent()V
    .locals 28

    .prologue
    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-nez v2, :cond_1

    const-string v2, "[EPDGService]"

    const-string v3, "handleEpdgSettingsReadEvent() mEnableEpdg is false. Stop to init."

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->sendWfcEpdgAllowedIntent()V

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v2, :cond_16

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorXaa()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmoMvno()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgOmadmSettings;->init()V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/epdg/EpdgRilSharedData;->makeInstance(I)Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v2

    sput-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    const-string v2, "[EPDGService]"

    const-string v3, "Using EpdgRilAdapter "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgRilAdapter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgRilAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-static {}, Lcom/sec/epdg/ipc/EpdgModem;->getInstance()Lcom/sec/epdg/ipc/EpdgModem;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    sput-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v4

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getHoDelayTimer()I

    move-result v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->getHoDelayTimer()I

    move-result v7

    sget-object v8, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xScanTimer()I

    move-result v8

    sget-object v9, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiIntentDelayTimer()I

    move-result v9

    sget-object v10, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v10}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/epdg/EpdgSettings;->getWifiIpConfigTimer()I

    move-result v10

    invoke-static/range {v2 .. v10}, Lcom/sec/epdg/EpdgTimers;->getInstance(Landroid/os/Handler;IIIIIIII)Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sput-object v2, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TepdgLteTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tepdg1xTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tepdg1xScanTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xScanTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    sput-object v2, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/epdg/EpdgService$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    :goto_1
    sput-object v2, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0xe1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->makeEpdgServiceUp()V

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDataRetryEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDataRetryEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->isRetryEnabledForAlwaysOnApn()Z

    move-result v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/epdg/throttle/ThrottleController;->createInstance(Landroid/content/Context;ZZ)V

    const-string v2, "[EPDGService]"

    const-string v3, "Creating the Handover State machines"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    sget v2, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_4

    invoke-static/range {v18 .. v18}, Lcom/sec/epdg/IWlanApnContext;->getNewIWlanApnContextInstance(I)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v22

    .local v22, "iwlanApnContext":Lcom/sec/epdg/IWlanApnContext;
    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-static {v3, v4, v0, v5, v6}, Lcom/sec/epdg/IPSecDataConnSM;->getNewStateMachineInstance(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v3

    aput-object v3, v2, v18

    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .end local v18    # "i":I
    .end local v22    # "iwlanApnContext":Lcom/sec/epdg/IWlanApnContext;
    :cond_3
    sget-object v2, Lcom/sec/epdg/EpdgService$HoDelayStatus;->DONOT_WAIT:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    goto/16 :goto_1

    .restart local v18    # "i":I
    :cond_4
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    .local v13, "b":Landroid/os/IBinder;
    invoke-static {v13}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/epdg/EpdgService;->mNMService:Landroid/os/INetworkManagementService;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mNMService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mIfaceObserver:Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    new-instance v17, Landroid/content/IntentFilter;

    invoke-direct/range {v17 .. v17}, Landroid/content/IntentFilter;-><init>()V

    .local v17, "filter":Landroid/content/IntentFilter;
    new-instance v25, Landroid/content/IntentFilter;

    invoke-direct/range {v25 .. v25}, Landroid/content/IntentFilter;-><init>()V

    .local v25, "periodicDpdFilter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v11

    .local v11, "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :cond_5
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/epdg/IWlanApnSetting;

    .local v23, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual/range {v23 .. v23}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v26

    .local v26, "remoteUri":Ljava/lang/String;
    if-eqz v26, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.sec.epdg.RETRY_TIMER_EXPIRED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_4

    .end local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v17    # "filter":Landroid/content/IntentFilter;
    .end local v23    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    .end local v25    # "periodicDpdFilter":Landroid/content/IntentFilter;
    .end local v26    # "remoteUri":Ljava/lang/String;
    :catch_0
    move-exception v14

    .local v14, "e":Landroid/os/RemoteException;
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not register InterfaceObserver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v17    # "filter":Landroid/content/IntentFilter;
    .restart local v25    # "periodicDpdFilter":Landroid/content/IntentFilter;
    :cond_6
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mDataRetryIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mNattKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sec.epdg.NATT_KEEP_ALIVE_TIMER_EXPIRED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getRegistedNetworkStateChangeReceiver()Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/epdg/EpdgService;->setRegistedNetworkStateChangeReceiver(Z)V

    :cond_7
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isInternetKeepAliveEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mInternetKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sec.epdg.INTERNET_KEEP_ALIVE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "PingerHandlerThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/epdg/EpdgService;->mPingerHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mPingerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/sec/epdg/DnsPinger;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v4, "[EPDGService]"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/epdg/EpdgService;->mPingerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/epdg/DnsPinger;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/epdg/EpdgService;->mDnsPinger:Lcom/sec/epdg/DnsPinger;

    :cond_8
    new-instance v24, Landroid/content/IntentFilter;

    invoke-direct/range {v24 .. v24}, Landroid/content/IntentFilter;-><init>()V

    .local v24, "mWifiStateIntentReceiverFilter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.net.wifi.SEC_NETWORK_STATE_CHANGED"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mWifiStateIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mScreenOnIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mScreenOffIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mAirplaneModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    if-eqz v2, :cond_9

    const-string v2, "[EPDGService]"

    const-string v3, "registerForCallStateChange..."

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mImsCallListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;->registerForCallStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_1
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    :goto_5
    sget-object v2, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->registerListener()V

    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    if-eqz v2, :cond_a

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mEcbmIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mEcbmIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_IMS"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_a
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mShutdownIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_b
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v2, :cond_e

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vowifi_mdn"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    const-string v2, "[EPDGService]"

    const-string v3, "Parameter is not present, create it with default value"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vowifi_mdn"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_c
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEpdgSettingsReadEvent(): MDN is set, value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vowifi_mdn"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_call_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "[EPDGService]"

    const-string v3, "vowifi enable parameter is not present, create it with default value"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_call_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_d
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEpdgSettingsReadEvent(): wifi call enable is set, value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_call_enable"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vowifi_mdn"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vowifi_mdn"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->resetVowifiMdnCache(Landroid/content/Context;)V

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_call_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    const-string v2, "[EPDGService]"

    const-string v3, "Turning off vowifi as SIM mdn and vowifi mdn parameter is different"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_call_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_e
    :goto_7
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_14

    const/16 v19, 0x1

    .local v19, "isAirplaneModeEnabled":Z
    :goto_8
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEpdgSettingsReadEvent(): isAirplaneModeEnabled is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Lcom/sec/epdg/EpdgService;->setIsAirplaneMode(Z)V

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vowifi_mdn"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    const-string v2, "[EPDGService]"

    const-string v3, "Parameter is not present, create it with default value"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vowifi_mdn"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_f
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEpdgSettingsReadEvent(): MDN is set, value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vowifi_mdn"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v2

    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mRoaming:Z

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    sput v2, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    const-string v2, "sys.default.data.phoneid"

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEpdgSettingsReadEvent(): mDefaultDataPhoneID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDefaultSubID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_SupportWifiCall"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x0

    :goto_9
    sput v2, Lcom/sec/epdg/EpdgService;->mDefaultEnableEpdg:I

    sget-object v2, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v27

    .local v27, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    :cond_11
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isSharePreferredModeViaProperty()Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_call_preferred"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .local v15, "epdgPrefMode":I
    const-string v2, "ril.epdg.preferred.mode"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v13    # "b":Landroid/os/IBinder;
    .end local v15    # "epdgPrefMode":I
    .end local v17    # "filter":Landroid/content/IntentFilter;
    .end local v18    # "i":I
    .end local v19    # "isAirplaneModeEnabled":Z
    .end local v24    # "mWifiStateIntentReceiverFilter":Landroid/content/IntentFilter;
    .end local v25    # "periodicDpdFilter":Landroid/content/IntentFilter;
    .end local v27    # "wifi":Landroid/net/NetworkInfo;
    :cond_12
    :goto_a
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    goto/16 :goto_0

    .restart local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v13    # "b":Landroid/os/IBinder;
    .restart local v17    # "filter":Landroid/content/IntentFilter;
    .restart local v18    # "i":I
    .restart local v24    # "mWifiStateIntentReceiverFilter":Landroid/content/IntentFilter;
    .restart local v25    # "periodicDpdFilter":Landroid/content/IntentFilter;
    :catch_1
    move-exception v14

    .local v14, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v14}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto/16 :goto_5

    .end local v14    # "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    :catch_2
    move-exception v16

    .local v16, "exception":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "[EPDGService]"

    const-string v3, "In catch block, setting not found exception"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .end local v16    # "exception":Landroid/provider/Settings$SettingNotFoundException;
    :cond_13
    const-string v2, "[EPDGService]"

    const-string v3, "Vowifi is already turned off"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_8

    .restart local v19    # "isAirplaneModeEnabled":Z
    :cond_15
    const/4 v2, 0x1

    goto :goto_9

    .end local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v13    # "b":Landroid/os/IBinder;
    .end local v17    # "filter":Landroid/content/IntentFilter;
    .end local v18    # "i":I
    .end local v19    # "isAirplaneModeEnabled":Z
    .end local v24    # "mWifiStateIntentReceiverFilter":Landroid/content/IntentFilter;
    .end local v25    # "periodicDpdFilter":Landroid/content/IntentFilter;
    :cond_16
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorXaa()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmoMvno()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getRegistedNetworkStateChangeReceiver()Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/epdg/EpdgService;->stopEpdgService(Z)V

    goto/16 :goto_0

    :cond_17
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmoMvno()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getRegistedNetworkStateChangeReceiver()Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/epdg/EpdgService;->enableReceiver(Z)V

    :cond_18
    invoke-static {}, Lcom/sec/epdg/EpdgOmadmSettings;->writeToEFSFile()V

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v4

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getHoDelayTimer()I

    move-result v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->getHoDelayTimer()I

    move-result v7

    sget-object v8, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xScanTimer()I

    move-result v8

    sget-object v9, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiIntentDelayTimer()I

    move-result v9

    sget-object v10, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v10}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/epdg/EpdgSettings;->getWifiIpConfigTimer()I

    move-result v10

    invoke-static/range {v2 .. v10}, Lcom/sec/epdg/EpdgTimers;->getInstance(Landroid/os/Handler;IIIIIIII)Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sput-object v2, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TepdgLteTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tepdg1xTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tepdg1xScanTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xScanTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    :cond_19
    :goto_b
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->isRetryEnabledForAlwaysOnApn()Z

    move-result v20

    .local v20, "isDataRetryEnabled":Z
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v21

    .local v21, "isThrottlingEnabled":Z
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After db read: isDataRetryEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/sec/epdg/throttle/ThrottleController;->onSettingUpdated(ZZ)V

    sget-object v2, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/handover/EpdgImsListener;->onEpdgSettingChanged(Lcom/sec/epdg/EpdgSettings;)V

    goto/16 :goto_a

    .end local v20    # "isDataRetryEnabled":Z
    .end local v21    # "isThrottlingEnabled":Z
    :cond_1a
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    goto :goto_b
.end method

.method private handleImsStateChange(I)V
    .locals 5
    .param p1, "action"    # I

    .prologue
    const/4 v4, 0x1

    const-string v0, "[EPDGService]"

    const-string v1, "Inside handleImsStateChange: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS_STATE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->ReadEpdgSettingFromIMS()V

    const/4 v0, 0x0

    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentSimImsi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEnableEpdg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    sput-boolean v4, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bIsSimReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsEpdgInitialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->notifySimChangedEvent()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgService;->stopEpdgService(Z)V

    goto :goto_0
.end method

.method private handleMapconChange()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    .local v0, "apnType":Ljava/lang/String;
    sget-object v5, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .local v3, "wifi":Landroid/net/NetworkInfo;
    sget-object v5, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voicecall_type"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, "callType":I
    if-nez v1, :cond_0

    move v2, v4

    .local v2, "isVolteEnabled":Z
    :cond_0
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    iput v4, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    :cond_1
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorDtac()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v2, :cond_5

    :cond_2
    const-string v5, "[EPDGService]"

    const-string v6, "CellularAvailable & LTE preferred or LTE only, disable wifi profiling"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v5

    if-eqz v5, :cond_3

    sput-boolean v4, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :cond_3
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    :cond_6
    :goto_1
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsWifiOnlyAllowed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/EpdgService$DnsRetryReason;->MAPCON_CHANGE:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v4, v5}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "[EPDGService]"

    const-string v5, "DNS is successful, start profiling"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_1

    :cond_8
    const-string v4, "[EPDGService]"

    const-string v5, "DNS failed for all tries"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_1
.end method

.method private handleRetryTimerExpired(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->getSMForApnName(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v1

    .local v1, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    if-nez v1, :cond_0

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid SM found for apnName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :goto_0
    return-void

    .restart local v1    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_0
    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .local v0, "dataRetryExpired":Landroid/os/Message;
    if-eqz v0, :cond_1

    const-string v2, "[EPDGService]"

    const-string v3, "handleRetryTimerExpired: Sending DATA_RETRY_TIMER_EXPIRED to state machine"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xd

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorRogers()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->triggerPendingAttachReq()V

    const-string v2, "[EPDGService]"

    const-string v3, "trigger pending attach req"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRetryTimerExpired: Unable to obtain message for SM with apnName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "dataRetryExpired":Landroid/os/Message;
    .end local v1    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_2
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    const-string v2, "[EPDGService]"

    const-string v3, "Do not retry L2W handover. SSID changed: "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSimInsertChange()V
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSimCardRemoved()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->setIsSimCardRemoved(Z)V

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .local v6, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    iput v3, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    :goto_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    :cond_0
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prev imsi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mPrevSimImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Prev imsi2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mPrevSim2Imsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Current IMSI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Current IMSI2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mPrevSimImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mPrevSim2Imsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleController;->onSimChanged()V

    .end local v6    # "wifi":Landroid/net/NetworkInfo;
    :cond_3
    new-instance v0, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    move-object v1, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;ZZZ)V

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    return-void

    .restart local v6    # "wifi":Landroid/net/NetworkInfo;
    :cond_5
    iput v7, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    goto/16 :goto_0
.end method

.method private handleSimRemovedChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "[EPDGService]"

    const-string v2, "Inside handleSimRemovedChange()"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v1, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    :cond_0
    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V

    iput v3, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    :cond_1
    sget-boolean v1, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-eqz v1, :cond_2

    :try_start_0
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v3, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "[EPDGService]"

    const-string v2, "mSimStateChangeReceiver was not registered."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSimStateChange(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .local v1, "action":Ljava/lang/String;
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSimStateChange: action is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    .local v3, "simSlot":I
    const/4 v5, -0x1

    .local v5, "subscription":I
    sget-object v6, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "android.intent.action.ISIM_LOADED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v9}, Lcom/sec/epdg/EpdgService;->setIsimState(Z)V

    sget-boolean v6, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v6, :cond_0

    invoke-static {v11}, Lcom/sec/epdg/EpdgService;->setIsSimCardRemoved(Z)V

    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getSimState()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "[EPDGService]"

    const-string v7, "handleSimStateChange: SIM is already loaded"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, v9, :cond_2

    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->notifySimChangedEvent()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "ss"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "simState":Ljava/lang/String;
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_STATE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "LOADED"

    .local v2, "loadedstate":Ljava/lang/String;
    const-string v0, "ABSENT"

    .local v0, "absentState":Ljava/lang/String;
    if-eqz v4, :cond_d

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "slot"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v6, "subscription"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_SLOT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "subscription: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v6, "LOADED"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSimStateChange() Sim State is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v6, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v6, :cond_5

    invoke-static {v11}, Lcom/sec/epdg/EpdgService;->setIsSimCardRemoved(Z)V

    :cond_5
    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    if-eqz v6, :cond_8

    if-ne v3, v9, :cond_6

    sput-boolean v9, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    :goto_2
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsimState()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "[EPDGService]"

    const-string v7, "handleSimStateChange: Isim is already loaded"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, v9, :cond_7

    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    :goto_3
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->notifySimChangedEvent()V

    goto/16 :goto_1

    :cond_6
    sput-boolean v9, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    goto :goto_2

    :cond_7
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    goto :goto_3

    :cond_8
    if-ne v3, v9, :cond_9

    sput-boolean v9, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    :goto_4
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->notifySimChangedEvent()V

    goto/16 :goto_1

    :cond_9
    sput-boolean v9, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    goto :goto_4

    :cond_a
    const-string v6, "ABSENT"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-ne v3, v9, :cond_b

    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mPrevSim2Imsi:Ljava/lang/String;

    iput-object v12, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    :goto_5
    invoke-static {v9}, Lcom/sec/epdg/EpdgService;->setIsSimCardRemoved(Z)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_c

    sget v6, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    if-ne v6, v5, :cond_1

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->handleSimRemovedChange()V

    goto/16 :goto_1

    :cond_b
    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mPrevSimImsi:Ljava/lang/String;

    iput-object v12, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    goto :goto_5

    :cond_c
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->handleSimRemovedChange()V

    goto/16 :goto_1

    :cond_d
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSimStateChange() Sim State is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v0    # "absentState":Ljava/lang/String;
    .end local v2    # "loadedstate":Ljava/lang/String;
    .end local v4    # "simState":Ljava/lang/String;
    :cond_e
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSimStateChange: Invalid action received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private initAfterimsReady()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getVoWifiStatus()Lcom/sec/epdg/EpdgService$VoWifiStatus;

    move-result-object v0

    .local v0, "status":Lcom/sec/epdg/EpdgService$VoWifiStatus;
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V

    new-instance v1, Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/EpdgService$EpdgSettingObserver;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiOnUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->BOOTUP_CHECKING:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mRoamingUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    :cond_1
    return-void
.end method

.method private initEpdgService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "[EPDGService]"

    const-string v1, "Enter step 2 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    sget-object v0, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ISIM_LOADED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isIndependentEpdg()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[EPDGService]"

    const-string v1, "EPDG service was started without ims service."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    :cond_1
    :goto_0
    const-string v0, "[EPDGService]"

    const-string v1, "Exit step 2 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableIMS"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    invoke-static {v0, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v0, :cond_1

    const-string v0, "[EPDGService]"

    const-string v1, "registerForServiceStateChange..."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->registerForServiceStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mImsReadyReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.ims.action.onsimloaded"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string v0, "[EPDGService]"

    const-string v1, "imsservice is not installed."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static is1xAvailable()Z
    .locals 2

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const-string v0, "[EPDGService]"

    const-string v1, "1x is available"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "1x is NOT available"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private is3gNetwork(I)Z
    .locals 1
    .param p1, "netType"    # I

    .prologue
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAnyPdnConnectedOverWifi()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAnyPdnConnectedOverWifi: returning result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static isBlockHandOverApn(Ljava/lang/String;)Z
    .locals 5
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Z
    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .local v0, "operator":Ljava/lang/String;
    const-string v3, "26201"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "mms"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "xcap"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isEpdgAvailabilityRecommended()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "result":Z
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_0

    const-string v1, "[EPDGService]"

    const-string v2, "TEpdg timer running..  wait for it to expire. No timers starting."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[EPDGService]"

    const-string v2, "OnDemand PDN connection failed. Waiting for the state to be reset."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "[EPDGService]"

    const-string v2, "Wifi signal is good from monitor. But wifi is not connected"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEpdgAvailable()Z
    .locals 2

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHandoverRequiredOnCdmaIndication()Z
    .locals 2

    .prologue
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIPv6AddressScopeGlobal(Ljava/lang/String;)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .local v2, "result":Z
    const-string v4, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isIPv6AddressScopeGlobal: Received address is: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Suppressed"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .local v1, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCGlobal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCLinkLocal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCNodeLocal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCOrgLocal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCSiteLocal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isIPv6AddressScopeGlobal(): returning result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :goto_1
    return v3

    :cond_2
    move-object v3, p1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v3, "[EPDGService]"

    const-string v4, "Address is not proper ip address"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isImsDeRegiRequiredNet()Z
    .locals 5

    .prologue
    const/16 v4, 0xd

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/16 v3, 0xe

    if-eq v2, v3, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    if-eq v2, v4, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    return v1

    :cond_3
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorMTN()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTurkcell()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "true"

    const-string v3, "ril.epdg.handover.enable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v2

    if-ne v2, v4, :cond_4

    const-string v1, "[EPDGService]"

    const-string v2, "handover will be triggered, no need to send de-regi"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto :goto_0

    :cond_4
    const-string v0, "[EPDGService]"

    const-string v2, "de-regi needed "

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    goto :goto_0
.end method

.method private declared-synchronized isKeepAliveExpired()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveExpired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isKeepAliveRunning()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static isOngoingConnectionOverWifi(Ljava/lang/String;)Z
    .locals 8
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .local v3, "result":Z
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_5

    aget-object v4, v0, v1

    .local v4, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    const/4 v3, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/throttle/ThrottleController;->isThrottleTimerRunning(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    .end local v4    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_5
    const-string v5, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isOngoingConnectionOverWifi: returning result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public static isPdnConnectedOverWifi(Ljava/lang/String;)Z
    .locals 8
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .local v3, "result":Z
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .local v4, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    const/4 v3, 0x1

    .end local v4    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_0
    const-string v5, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPdnConnectedOverWifi: returning result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for apnType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .restart local v4    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isRegistrationRequired(ZZZZZ)Z
    .locals 4
    .param p1, "vowifiChanged"    # Z
    .param p2, "newValueW"    # Z
    .param p3, "voLteChanged"    # Z
    .param p4, "newValueL"    # Z
    .param p5, "vopsOrSsacChanged"    # Z

    .prologue
    const/16 v3, 0xd

    const/4 v1, 0x0

    move v0, p1

    .local v0, "bVowifiChanged":Z
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v2

    if-ne v2, p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "[EPDGService]"

    const-string v3, "re-regi is not required. IMS on LTE and VoLTE is on"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "[EPDGService]"

    const-string v3, "re-regi is not required. voice is 1x"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    if-eq v2, v3, :cond_3

    const-string v2, "[EPDGService]"

    const-string v3, "re-regi is not required. No LTE"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "[EPDGService]"

    const-string v3, "re-regi is not required. wifi preferred"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz p5, :cond_6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    if-eq v2, v3, :cond_5

    const-string v2, "[EPDGService]"

    const-string v3, "re-regi is not required. No LTE"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "[EPDGService]"

    const-string v3, "re-regi is not required. wifi preferred"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-nez v0, :cond_7

    if-nez p3, :cond_7

    if-nez p5, :cond_7

    const-string v2, "[EPDGService]"

    const-string v3, "re-regi is not required. nothing changed"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "[EPDGService]"

    const-string v2, "IMS RegistrationRequired - HO delay"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private isValidAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "result":Z
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidAddress: returning result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoEnabled()Lcom/sec/epdg/EpdgConstants$TriState;
    .locals 4

    .prologue
    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->readCurrentVideoSettingState()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    .local v0, "videoSetting":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v1, v0, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoSetting("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v1, v0, :cond_1

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_0
.end method

.method public static isVoWifiEnabled()Z
    .locals 2

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVolteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;
    .locals 4

    .prologue
    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->readCurrentVolteSettingState()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    .local v0, "volteSetting":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v1, v0, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "volteSetting("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v1, v0, :cond_1

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_0
.end method

.method public static isW2LRecommended(I)Z
    .locals 5
    .param p0, "rilCid"    # I

    .prologue
    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v3, p0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .local v0, "apnType":Ljava/lang/String;
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isW2LRecommended: rilCid is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apnType is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "result":Z
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->isBlockHandOverApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "[EPDGService]"

    const-string v3, "isW2LRecommended: null apnType"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_1
    const-string v2, "cbs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v3, p0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getIsW2LRequested()Z

    move-result v1

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isW2LRecommended: result is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getVoWifiSessionConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isW2LRecommended: VoWifi Session Connected result is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->isW2LRecommended(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isWifiCallingEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v4, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-eq v3, v4, :cond_0

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v4, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v3, v4, :cond_3

    :cond_0
    move v0, v2

    .local v0, "bVoWifi":Z
    :goto_0
    sget-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_4

    :cond_1
    move v2, v0

    :cond_2
    :goto_1
    return v2

    .end local v0    # "bVoWifi":Z
    :cond_3
    move v0, v1

    goto :goto_0

    .restart local v0    # "bVoWifi":Z
    :cond_4
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgTemporaryBlocked()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-eq v3, v4, :cond_2

    move v2, v1

    goto :goto_1
.end method

.method private isWifiConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private movePdnFromWifi()V
    .locals 6

    .prologue
    const-string v3, "[EPDGService]"

    const-string v4, "movePdnFromWifi()"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .local v0, "apnType":Ljava/lang/String;
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "movePdnFromWifi, apnType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .end local v0    # "apnType":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private moveToLteBasedOnMapcon()V
    .locals 4

    .prologue
    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    .local v1, "cid":I
    :goto_0
    sget v2, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-gt v1, v2, :cond_0

    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .local v0, "apnType":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private notifyL2WHandoverResult(ZLjava/lang/String;)V
    .locals 6
    .param p1, "result"    # Z
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getIsBroadcastHONotiEnabled()Z

    move-result v5

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/epdg/mapcon/MapconTable;->notifyHandoverResult(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;ZZ)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "notifyL2WHandoverResult(): APN is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifySimChangedEvent()V
    .locals 2

    .prologue
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "[EPDGService]"

    const-string v1, "Epdg service is not yet initialized, calling epdg initialization"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgService;->bootCompleted()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->handleSimInsertChange()V

    goto :goto_0
.end method

.method private notifyW2LHandoverResult(ZLjava/lang/String;)V
    .locals 6
    .param p1, "result"    # Z
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getIsBroadcastHONotiEnabled()Z

    move-result v5

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/epdg/mapcon/MapconTable;->notifyHandoverResult(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;ZZ)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "notifyW2LHandoverResult(): APN is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDbAccessCompleted()V
    .locals 2

    .prologue
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1d

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private onInternetKeepAliveTimerExpiry()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v2, 0xd

    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive: onInternetKeepAliveTimerExpiry()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setKeepAliveRunning(Z)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    if-ne v0, v4, :cond_1

    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-ne v0, v2, :cond_1

    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive:Timer=Expired,EPDG=AVAILABLE,RAT=LTE so Send keep alive packet+start the timer again"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->pingAsyncInternet()V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    if-ne v0, v4, :cond_2

    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-eq v0, v2, :cond_2

    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive:Timer=Expired,EPDG=AVAILABLE,RAT!=LTE so Start keep alive timer again"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    if-ne v0, v3, :cond_0

    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-ne v0, v2, :cond_0

    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive:Timer=Expired,EPDG=UNAVAILABLE,RAT=LTE so Set keep alive expired flag"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/sec/epdg/EpdgService;->setKeepAliveExpired(Z)V

    goto :goto_0
.end method

.method private onNetworkStatusChanged()V
    .locals 11

    .prologue
    const/16 v10, 0xd

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSimCardRemoved()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "[EPDGService]"

    const-string v7, "onNetworkStatusChanged: No Sim card. Ignore all notifications"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v3, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    .local v3, "mExistingActiveRat":I
    const-string v6, "[EPDGService]"

    const-string v7, "onNetworkStatusChanged"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    sget v7, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v5

    .local v5, "voiceNetType":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    sget v7, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v2

    .local v2, "dataNetType":I
    :goto_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    move v4, v5

    .local v4, "netType":I
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "ril.epdg.handover.enable"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v1

    .local v1, "currentCellular":Z
    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/sec/epdg/EpdgService;->bootCompleted()V

    goto :goto_0

    .end local v1    # "currentCellular":Z
    .end local v2    # "dataNetType":I
    .end local v4    # "netType":I
    .end local v5    # "voiceNetType":I
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v5

    .restart local v5    # "voiceNetType":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    .restart local v2    # "dataNetType":I
    goto :goto_1

    .restart local v4    # "netType":I
    :cond_3
    const-string v7, "ril.epdg.handover.enable"

    sget-boolean v6, Lcom/sec/epdg/EpdgService;->mEnableEpdgHandOver:Z

    if-eqz v6, :cond_4

    const-string v6, "true"

    :goto_3
    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v6, "false"

    goto :goto_3

    .end local v4    # "netType":I
    :cond_5
    move v4, v2

    .restart local v4    # "netType":I
    goto :goto_2

    .restart local v1    # "currentCellular":Z
    :cond_6
    sget-boolean v6, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v6, :cond_7

    const-string v6, "[EPDGService]"

    const-string v7, "Epdg service is not yet initialized, ignore onNetworkStatusChanged"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v6, :cond_8

    sget-boolean v6, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    if-eq v6, v1, :cond_8

    if-nez v1, :cond_11

    const-string v6, "[EPDGService]"

    const-string v7, "Celluler is not available, disable Wifi thresholds if Idle"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v6}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v6, v7, :cond_8

    invoke-static {v8}, Lcom/sec/epdg/EpdgService;->setIsRssiDisabledForProfiling(Z)V

    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    :cond_8
    :goto_4
    sget v6, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-ne v4, v6, :cond_9

    sget-boolean v6, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    if-eq v6, v1, :cond_10

    :cond_9
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    .local v0, "apnType":Ljava/lang/String;
    if-eqz v4, :cond_a

    if-nez v1, :cond_15

    :cond_a
    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v7, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v6, v7}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "[EPDGService]"

    const-string v7, "OoS & LTE preferred, enable wifi profiling"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    :cond_b
    :goto_5
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v6

    sget-boolean v7, Lcom/sec/epdg/EpdgService;->mRoaming:Z

    if-eq v6, v7, :cond_c

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v6

    sput-boolean v6, Lcom/sec/epdg/EpdgService;->mRoaming:Z

    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v6, :cond_c

    sget-object v6, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->ROAMING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v6}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    :cond_c
    const-string v6, "ATT"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    sget-boolean v6, Lcom/sec/epdg/EpdgService;->mDisabledByNoRan:Z

    if-eqz v6, :cond_e

    if-nez v5, :cond_d

    if-eqz v2, :cond_e

    :cond_d
    if-ne v1, v8, :cond_e

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "[EPDGService]"

    const-string v7, "ATT IR94,RAN is available, enable wifi profiling"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    sput-boolean v9, Lcom/sec/epdg/EpdgService;->mDisabledByNoRan:Z

    :cond_e
    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgService;->is3gNetwork(I)Z

    move-result v6

    if-eqz v6, :cond_f

    sget v6, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    invoke-direct {p0, v6}, Lcom/sec/epdg/EpdgService;->is3gNetwork(I)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_f
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Active Rat Changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    invoke-static {v8}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput v4, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    const-wide/16 v6, 0x3e8

    invoke-direct {p0, v6, v7, v4}, Lcom/sec/epdg/EpdgService;->startTimerForPdnXfer(JI)V

    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    if-eqz v6, :cond_10

    sget v6, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-ne v6, v10, :cond_18

    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartLteRunning()Z

    move-result v6

    if-nez v6, :cond_17

    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mLteOn:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .end local v0    # "apnType":Ljava/lang/String;
    :cond_10
    :goto_6
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCellularAvailable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsRssiDisabledForProfiling()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "[EPDGService]"

    const-string v7, "Celluler is available, enable Wifi thresholds"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/sec/epdg/EpdgService;->setIsRssiDisabledForProfiling(Z)V

    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto/16 :goto_4

    .restart local v0    # "apnType":Ljava/lang/String;
    :cond_12
    const-string v6, "ATT"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_call_enable"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_b

    if-nez v5, :cond_b

    if-nez v2, :cond_b

    const-string v6, "[EPDGService]"

    const-string v7, "ATT IR94, no RAN, disable Wifi Call"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v6

    if-eqz v6, :cond_13

    sput-boolean v8, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_13
    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    sput-boolean v8, Lcom/sec/epdg/EpdgService;->mDisabledByNoRan:Z

    goto/16 :goto_5

    :cond_14
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "[EPDGService]"

    const-string v7, "Rat us unknown, enable wifi profiling"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    goto/16 :goto_5

    :cond_15
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v6, 0x12

    if-eq v4, v6, :cond_b

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "[EPDGService]"

    const-string v7, "CellularAvailable & LTE preferred, disable wifi profiling"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v6

    if-eqz v6, :cond_16

    sput-boolean v8, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_16
    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    goto/16 :goto_5

    :cond_17
    const-string v6, "[EPDGService]"

    const-string v7, "When LTE becomes available, smart lte is running, so in connected mode, smart lte decides the lte availability based upon signal strength"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_18
    if-ne v3, v10, :cond_10

    const-string v6, "[EPDGService]"

    const-string v7, "RAT change from LTE to other RAT, calling LTE off"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mLteOff:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_6
.end method

.method private onServiceStatusChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSimCardRemoved()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[EPDGService]"

    const-string v1, "onServiceStatusChanged: No Sim card. Ignore all notifications"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onNetworkStatusChanged()V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->checkVopsStatus(Landroid/telephony/ServiceState;)V

    goto :goto_0
.end method

.method private onSystemSelectTimerFinish()V
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "[EPDGService]"

    const-string v1, "Wifi connected when TEpdg timer done"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[EPDGService]"

    const-string v1, "Smart Wifi already running"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiOn:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->islteToWifiHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->TEPDG_TIMER_EXPIRED:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[EPDGService]"

    const-string v1, "DNS is successful, adding routes"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_0

    :cond_1
    const-string v0, "[EPDGService]"

    const-string v1, "DNS failed for all tries"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "[EPDGService]"

    const-string v1, "Epdg FQDN is already resolved, received duplicate wifi connect"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi not connected when TEpdg timer done"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onVoWifiProvisioningStateChanged(I)V
    .locals 1
    .param p1, "isProvisioned"    # I

    .prologue
    if-nez p1, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->resetVowifiMdnCache(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setVoWifiRoamingPreference(I)V

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setVowifiSetting(I)V

    :cond_0
    return-void
.end method

.method private onVolteProvisioningStateChanged(I)V
    .locals 3
    .param p1, "isProvisioned"    # I

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->resetVowifiMdnCache(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->setVoWifiRoamingPreference(I)V

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setVowifiSetting(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_call_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_1
.end method

.method private onVopsStatusChanged(I)V
    .locals 6
    .param p1, "vops_enabled"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    if-ne p1, v5, :cond_1

    move v0, v5

    :goto_0
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setIsVoPSEnabled(Z)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->MoveToBasedOnVopsOrSsac(I)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private onWifiConnected()V
    .locals 3

    .prologue
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[EPDGService]"

    const-string v2, "IPv6 support is enabled and wifi ip config timer is running, no need to perform wifi connected. It will happen after config timer expiry"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "[EPDGService]"

    const-string v2, "Wifi is Connected"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_1

    const-string v1, "[EPDGService]"

    const-string v2, "TEpdg timer running"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService$DnsRetryReason;->WIFI_RECONNECT:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "[EPDGService]"

    const-string v2, "DNS is successful, start profiling"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_0

    :cond_2
    const-string v1, "[EPDGService]"

    const-string v2, "DNS failed for all tries"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x36

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    sget-object v1, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "[EPDGService]"

    const-string v2, "DNS resolved, start WiFi profiling"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_0

    :cond_4
    const-string v1, "[EPDGService]"

    const-string v2, "Epdg FQDN is already resolved, received duplicate wifi connect"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onWifiGoodEnough()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-interface {v2, v0}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgAvailability(Z)V

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->updateCpEpdgHoThreshold(Z)V

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgService;->sendEpdgAvailableIntent(ZZ)V

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->sendWifiStatusChangedNotification(Z)V

    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsWifiRssiInPollingZone()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    :goto_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isInternetKeepAliveEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isKeepAliveExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    const-string v0, "[EPDGService]"

    const-string v2, "InternetKeepAlive:onWifiGoodEnough:RAT=LTE,EPDG=AVAILABLE so send keep alive packet"

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setKeepAliveExpired(Z)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->pingAsyncInternet()V

    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive:onWifiGoodEnough:Starting the keep alive timer for Internet PDN"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isKeepAliveRunning()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive:onWifiGoodEnough:Starting the keep alive timer for Internet PDN"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    goto :goto_1
.end method

.method private performDnsIfPossible()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    if-nez v0, :cond_0

    const-string v0, "[EPDGService]"

    const-string v1, "check AP is allowed for EPDG service first"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/epdg/EpdgService$WfcProfileTask;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/epdg/EpdgService$WfcProfileTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    sget-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getConfiguredWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->WIFI_IPTYPE_CHANGE:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[EPDGService]"

    const-string v1, "DNS is successful, start profiling"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_0

    :cond_2
    const-string v0, "[EPDGService]"

    const-string v1, "DNS fail in all attempts"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "[EPDGService]"

    const-string v1, "Configured ip type is already ipv4v6, no need to perform DNS"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pingAsyncInternet()V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mDnsPinger:Lcom/sec/epdg/DnsPinger;

    if-nez v0, :cond_0

    const-string v0, "[EPDGService]"

    const-string v1, "mDnsPigner not intialized"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentNetwork:Landroid/net/Network;

    if-nez v0, :cond_1

    const-string v0, "[EPDGService]"

    const-string v1, "mCurrentNetwork is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mDnsPinger:Lcom/sec/epdg/DnsPinger;

    const-string v1, "8.8.8.8"

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mCurrentNetwork:Landroid/net/Network;

    const/16 v3, 0xbb8

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/epdg/DnsPinger;->pingDnsAsync(Ljava/net/InetAddress;Landroid/net/Network;II)I

    goto :goto_0
.end method

.method private printEpdgSettingsThreshold()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWifiRssiA :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiRoveInWifiOnly:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInWifiOnly()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiRoveOutWifiOnly:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveOutWifiOnly()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiRoveInVoice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInVoice()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLteRsrp1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLteRsrp2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLteRsrp3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static resetDataDependency()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-static {v0, v0}, Lcom/sec/epdg/EpdgService;->setDataDependency(ZZ)V

    return-void
.end method

.method public static resetVowifiMdnCache(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vowifi_mdn"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    .locals 11
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0xd

    const/4 v9, -0x1

    const/4 v3, 0x0

    .local v3, "result":Z
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->printEpdgSettingsThreshold()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v8}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->printProfilingState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "TimerStatus :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgTimers;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v6, "[EPDGService]"

    const-string v7, "L2W handover failed : (null apnType)"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    :goto_0
    return v6

    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v6}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    if-eq v6, v7, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v6

    if-ne v6, v10, :cond_1

    sget-object v6, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v6}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v6, v7, :cond_1

    const-string v6, "[EPDGService]"

    const-string v7, "Block L2W as registration is not done"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v7, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v6, v7}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "[EPDGService]"

    const-string v7, "1x scanning is on, wait for TEPDG1XSCANNING"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorORO()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .local v0, "callState":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v5

    .local v5, "voiceNetType":I
    if-eqz v0, :cond_3

    if-eq v5, v10, :cond_3

    const-string v6, "[EPDGService]"

    const-string v7, "Block L2W on CS calling"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    goto :goto_0

    .end local v0    # "callState":I
    .end local v5    # "voiceNetType":I
    :cond_3
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v2

    .local v2, "networkType":I
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retryL2WHandoverIfRequired(): apnType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " networkType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v9, v2, :cond_7

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/sec/epdg/mapcon/PolicyManager;->isL2WRecommended(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    sget-object v7, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne v6, v7, :cond_4

    const-string v6, "[EPDGService]"

    const-string v7, "delay L2W handover until regi-done"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_4
    :try_start_0
    const-string v6, "[EPDGService]"

    const-string v7, "Firing L2W handover"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->startHandoverLteToWifi(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .local v4, "ret":I
    if-eq v4, v9, :cond_5

    const/4 v3, 0x1

    .end local v4    # "ret":I
    :cond_5
    :goto_1
    move v6, v3

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "L2W Handover not required."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6
    const-string v6, "[EPDGService]"

    const-string v7, "L2W is not recommended"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Do not retry L2W handover. apnType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " networkType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    .locals 8
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .local v2, "result":Z
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->printEpdgSettingsThreshold()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->printProfilingState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "TimerStatus :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgTimers;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v4, "[EPDGService]"

    const-string v5, "W2L handover failed : (null apnType)"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    :goto_0
    return v4

    :cond_0
    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v5, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v4, v5}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "[EPDGService]"

    const-string v5, "TEPDGLTE timer running, W2L not recommended"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getVoWifiSessionConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "[EPDGService]"

    const-string v5, "VoWIFI session is connected. So skip W2L Handover."

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v1

    .local v1, "networkType":I
    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "rule":Ljava/lang/String;
    const/4 v4, -0x1

    if-eq v4, v1, :cond_7

    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->isW2LRecommended(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    sget-object v5, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne v4, v5, :cond_3

    const-string v4, "[EPDGService]"

    const-string v5, "delay W2L handover until regi-done"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getHasPendingCdmaIndication()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "[EPDGService]"

    const-string v5, "W2L recommended but LTE is not available, send cdma availability to IMS"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V

    invoke-direct {p0, v7}, Lcom/sec/epdg/EpdgService;->setHasPendingCdmaIndication(Z)V

    :cond_4
    :try_start_0
    const-string v4, "[EPDGService]"

    const-string v5, "Firing W2L handover"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->startHandOverWifiToLte(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_1
    move v4, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "W2L handover not required."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getHasPendingCdmaIndication()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "[EPDGService]"

    const-string v5, "W2L not recommended, still send cdma availability to IMS"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V

    invoke-direct {p0, v7}, Lcom/sec/epdg/EpdgService;->setHasPendingCdmaIndication(Z)V

    :cond_6
    const-string v4, "[EPDGService]"

    const-string v5, "W2L handover not recommended"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Do not retry W2L handover. apnType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " networkType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendEpdgAvailableIntent(ZZ)V
    .locals 5
    .param p1, "videoHandoverAllow"    # Z
    .param p2, "forced"    # Z

    .prologue
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendEpdgAvailableIntent: videoHandoverAllow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " forced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, "wifiIntent":Landroid/content/Intent;
    const/4 v0, 0x0

    .local v0, "videoHandover":Z
    if-eqz p2, :cond_0

    move v0, p1

    :goto_0
    const-string v2, "com.sec.epdg.EPDG_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "EPDG_AVAILABLE"

    invoke-static {v2}, Lcom/sec/epdg/EpdgDumpState;->dumpLastEpdgState(Ljava/lang/String;)V

    const-string v2, "VIDEO_HANDOVER_ALLOW"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send EPDG Available broadcast with video handover: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsWifiRssiInPollingZone()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private sendEpdgDeregisterBroadcastIfRequired(Z)Z
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    if-eq v3, v4, :cond_3

    :cond_2
    if-eqz p1, :cond_0

    :cond_3
    const-string v3, "[EPDGService]"

    const-string v4, "sendEpdgDeregisterBroadcast: send deregi"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z

    :goto_1
    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.epdgservice.EPDG_DEREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "deregiIntent":Landroid/content/Intent;
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    move v1, v2

    goto :goto_0

    .end local v0    # "deregiIntent":Landroid/content/Intent;
    :cond_4
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z

    goto :goto_1
.end method

.method private sendEpdgRegisterBroadcast(Z)V
    .locals 4
    .param p1, "cdmaAvailability"    # Z

    .prologue
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEpdgRegisterBroadcast with cdmaAvailability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_1

    const-string v1, "[EPDGService]"

    const-string v2, "Call in progress, dont send cdmaAvailability to IMS"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.epdgservice.EPDG_REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "epdgRegisterIntent":Landroid/content/Intent;
    const-string v1, "cdmaAvailability"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static sendIpsecConnFailIntent(Ljava/lang/String;Lcom/sec/epdg/IWlanError;I)V
    .locals 3
    .param p0, "apnType"    # Ljava/lang/String;
    .param p1, "error"    # Lcom/sec/epdg/IWlanError;
    .param p2, "count"    # I

    .prologue
    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "infoToIMSCII":Landroid/content/Intent;
    const-string v1, "apntype"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ikeerror"

    invoke-static {p1}, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->getWFCErrorCode(Lcom/sec/epdg/IWlanError;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "count"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0    # "infoToIMSCII":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V
    .locals 4
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "destMsg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->arg1:I

    .local v0, "cid":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const-string v1, "[IPSEC->EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event received for cid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p2, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "[IPSEC->EPDGService]"

    const-string v2, "Event received for invalid cid neglect it"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendIpsecConnResultToTestApp(II)V
    .locals 15
    .param p1, "cid"    # I
    .param p2, "event"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "apnType":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "ipsecEvent":Ljava/lang/String;
    const/4 v11, -0x1

    .local v11, "networkType":I
    sget-object v12, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v13, p1, -0x1

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "apnName after getIwlanApnNameFromCid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v11

    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "networkType returned:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    :cond_1
    const-string v10, "Unknown"

    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " apnName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ipsecEvent:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sparse-switch v11, :sswitch_data_0

    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Illegal NetworkType:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/sec/epdg/IWlanEnum;->toTestAppEventStatus(I)Ljava/lang/String;

    move-result-object v10

    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ipsecEvent returned to UI:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    new-instance v5, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_INTERNET"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, "infoToUiForInternet":Landroid/content/Intent;
    const-string v12, "networkType"

    invoke-virtual {v5, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "ipsecevent"

    invoke-virtual {v5, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v5}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .end local v5    # "infoToUiForInternet":Landroid/content/Intent;
    :sswitch_1
    new-instance v4, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_IMS"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "infoToUiForIms":Landroid/content/Intent;
    const-string v12, "networkType"

    invoke-virtual {v4, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "ipsecevent"

    invoke-virtual {v4, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v4}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .end local v4    # "infoToUiForIms":Landroid/content/Intent;
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_APP"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "infoToUiForApp":Landroid/content/Intent;
    const-string v12, "networkType"

    invoke-virtual {v2, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "ipsecevent"

    invoke-virtual {v2, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v2}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .end local v2    # "infoToUiForApp":Landroid/content/Intent;
    :sswitch_3
    new-instance v6, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_MMS"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v6, "infoToUiForMms":Landroid/content/Intent;
    const-string v12, "networkType"

    invoke-virtual {v6, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "ipsecevent"

    invoke-virtual {v6, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v6}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v12, "mms"

    invoke-static {v12}, Lcom/sec/epdg/EpdgService;->getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "xcap"

    invoke-static {v13}, Lcom/sec/epdg/EpdgService;->getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v9, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_XCAP"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v9, "infoToUiForXcap1":Landroid/content/Intent;
    const-string v12, "networkType"

    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "ipsecevent"

    invoke-virtual {v9, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v9}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v6    # "infoToUiForMms":Landroid/content/Intent;
    .end local v9    # "infoToUiForXcap1":Landroid/content/Intent;
    :sswitch_4
    new-instance v8, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_XCAP"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v8, "infoToUiForXcap":Landroid/content/Intent;
    const-string v12, "networkType"

    invoke-virtual {v8, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "ipsecevent"

    invoke-virtual {v8, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v8}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v12, "xcap"

    invoke-static {v12}, Lcom/sec/epdg/EpdgService;->getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "mms"

    invoke-static {v13}, Lcom/sec/epdg/EpdgService;->getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v7, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_MMS"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, "infoToUiForMms1":Landroid/content/Intent;
    const-string v12, "networkType"

    invoke-virtual {v7, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "ipsecevent"

    invoke-virtual {v7, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v7}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v7    # "infoToUiForMms1":Landroid/content/Intent;
    .end local v8    # "infoToUiForXcap":Landroid/content/Intent;
    :sswitch_5
    new-instance v3, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_EPDN"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "infoToUiForEpdn":Landroid/content/Intent;
    const-string v12, "networkType"

    invoke-virtual {v3, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "ipsecevent"

    invoke-virtual {v3, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v3}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v3    # "infoToUiForEpdn":Landroid/content/Intent;
    :sswitch_6
    new-instance v1, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_ADMIN"

    invoke-direct {v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "infoToUiForAdmin":Landroid/content/Intent;
    const-string v12, "networkType"

    invoke-virtual {v1, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "ipsecevent"

    invoke-virtual {v1, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v1}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_3
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xf -> :sswitch_5
        0x17 -> :sswitch_6
        0x1b -> :sswitch_4
    .end sparse-switch
.end method

.method private sendWifiDelayRequest(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendWifiDelayRequest "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    sput-boolean v3, Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z

    :cond_0
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x51

    iput v2, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput v2, v0, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_1

    const/16 v3, 0x3e8

    :cond_1
    iput v3, v0, Landroid/os/Message;->arg2:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    return-void

    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    const/16 v3, 0xfa0

    :cond_5
    iput v3, v0, Landroid/os/Message;->arg2:I

    goto :goto_1
.end method

.method private sendWifiStatusChangedNotification(Z)V
    .locals 12
    .param p1, "isWifiConnected"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .local v6, "newSsid":Ljava/lang/String;
    if-eqz p1, :cond_0

    sget-object v7, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    const/4 v3, 0x0

    .local v3, "isSsidChanged":Z
    iget-object v7, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    if-nez v7, :cond_3

    if-eqz v6, :cond_3

    :cond_2
    const-string v7, "[EPDGService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SSID changed. Old Ssid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", New SSID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v7, v10}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_3
    const-string v7, "[EPDGService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wifi connected: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Ssid changed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v7

    invoke-virtual {v7, p1, v6}, Lcom/sec/epdg/throttle/ThrottleController;->handleWifiStatusChanged(ZLjava/lang/String;)V

    const-string v7, "[EPDGService]"

    const-string v10, "Send Wifi status changed event to State Machines"

    invoke-static {v7, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_7

    aget-object v1, v0, v2

    .local v1, "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-static {v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v5

    .local v5, "msg":Landroid/os/Message;
    const/16 v7, 0xa

    iput v7, v5, Landroid/os/Message;->what:I

    if-eqz p1, :cond_5

    move v7, v8

    :goto_1
    iput v7, v5, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_4

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_6

    move v7, v8

    :goto_2
    iput v7, v5, Landroid/os/Message;->arg2:I

    :cond_4
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move v7, v9

    goto :goto_1

    :cond_6
    move v7, v9

    goto :goto_2

    .end local v1    # "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_7
    if-eqz p1, :cond_8

    sget-boolean v7, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    if-eqz v7, :cond_9

    sput-boolean v8, Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z

    :goto_3
    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    :cond_8
    return-void

    :cond_9
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_3
.end method

.method private static setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V
    .locals 0
    .param p0, "ipType"    # Lcom/sec/epdg/EpdgService$IpType;

    .prologue
    sput-object p0, Lcom/sec/epdg/EpdgService;->mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    return-void
.end method

.method private static setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V
    .locals 0
    .param p0, "ipType"    # Lcom/sec/epdg/EpdgService$IpType;

    .prologue
    sput-object p0, Lcom/sec/epdg/EpdgService;->mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    return-void
.end method

.method private static setDataDependency(ZZ)V
    .locals 3
    .param p0, "value"    # Z
    .param p1, "force"    # Z

    .prologue
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Dependency from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p0, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method

.method private static setDataDependencyIfRequired()V
    .locals 4

    .prologue
    sget-object v1, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .local v0, "mobileNetInfo":Landroid/net/NetworkInfo;
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current NetworkInfo for Mobile Internet PDN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->setDataDependencyIfRequired(I)V

    :cond_0
    return-void
.end method

.method private static setDataDependencyIfRequired(I)V
    .locals 5
    .param p0, "ratType"    # I

    .prologue
    sget-object v2, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .local v1, "wifi":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .local v0, "dataDependency":Z
    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :sswitch_0
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data Dependency : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sec/epdg/EpdgService;->setDataDependency(ZZ)V

    .end local v0    # "dataDependency":Z
    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private setEpdgTemporaryBlocked(Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V
    .locals 5
    .param p1, "reason"    # Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .prologue
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-object p1, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sget-object v3, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->BLACKLIST_COUNTRY:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v3, "country_detector"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .local v1, "countryDetector":Landroid/location/CountryDetector;
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mBlackListCountry:Ljava/lang/String;

    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blacklist country code :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mBlackListCountry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    if-nez v2, :cond_1

    new-instance v2, Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    invoke-direct {v2, p0}, Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    .end local v0    # "country":Landroid/location/Country;
    .end local v1    # "countryDetector":Landroid/location/CountryDetector;
    :cond_2
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEpdgTemporaryBlocked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "country":Landroid/location/Country;
    .restart local v1    # "countryDetector":Landroid/location/CountryDetector;
    :cond_3
    const-string v2, "UNKNOWN"

    goto :goto_1
.end method

.method private setHasPendingCdmaIndication(Z)V
    .locals 1
    .param p1, "isRequiredToSendCdmaIndication"    # Z

    .prologue
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean p1, Lcom/sec/epdg/EpdgService;->mIsRequiredToSendCdmaIndication:Z

    goto :goto_0
.end method

.method private setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    sget-object v1, Lcom/sec/epdg/EpdgService$HoDelayStatus;->DONOT_WAIT:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-eq v0, v1, :cond_0

    sput-object p1, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHoDelay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->REGISTRATION_FINISHED:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static declared-synchronized setIsAirplaneMode(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsAirplaneMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setIsCsAvailable(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsCsAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setIsEpdgAvailable(Z)V
    .locals 4
    .param p0, "value"    # Z

    .prologue
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIsEpdgAvailable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ril.epdg.available"

    if-eqz p0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    const-string v0, "false"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setIsLteAvailable(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsLteAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static setIsOnDemandApnConnectionFailed(Z)V
    .locals 0
    .param p0, "isOnDemandApnConnectionFailedStatus"    # Z

    .prologue
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->isOnDemandApnConnectionFailed:Z

    return-void
.end method

.method private static setIsRssiDisabledForProfiling(Z)V
    .locals 3
    .param p0, "value"    # Z

    .prologue
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsRssiDisabledForProfiling: value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsRssiDisabledForProfiling:Z

    return-void
.end method

.method private declared-synchronized setIsScreenOn(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgService;->mIsScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static setIsSimCardRemoved(Z)V
    .locals 3
    .param p0, "state"    # Z

    .prologue
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsSimCardRemoved: state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsSimCardRemoved:Z

    return-void
.end method

.method private static declared-synchronized setIsSsacVoiceEnabled(Z)V
    .locals 4
    .param p0, "value"    # Z

    .prologue
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIsSsacVoiceEnabled: value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mSsacVoiceEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized setIsVoPSEnabled(Z)V
    .locals 4
    .param p0, "value"    # Z

    .prologue
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIsVoPSEnabled: value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsVoPSEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static setIsWifiRssiInPollingZone(Z)V
    .locals 3
    .param p0, "value"    # Z

    .prologue
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsWifiRssiInPollingZone: value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsWifiRssiInPollingZone:Z

    return-void
.end method

.method private static declared-synchronized setIsimState(Z)V
    .locals 4
    .param p0, "state"    # Z

    .prologue
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIsimState: state is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsIsimReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized setKeepAliveExpired(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveExpired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setKeepAliveRunning(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V
    .locals 17
    .param p1, "reason"    # Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    .prologue
    sget-object v12, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .local v12, "status":Lcom/sec/epdg/EpdgService$VoWifiStatus;
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_2

    sget-object v11, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->LTE_IWLAN_EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .local v11, "mcPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :goto_0
    sget-object v10, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .local v10, "emPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_3

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .local v2, "appPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    :goto_1
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .local v3, "appPrfOrd2":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_4

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_CELLULAR_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .local v4, "appPrfOrd3":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    :goto_2
    const/4 v9, 0x0

    .local v9, "bootupChangeRequired":Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVolteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v7

    .local v7, "bVolteTriState":Lcom/sec/epdg/EpdgConstants$TriState;
    const-string v13, "ATT"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isVoWifiWave2()Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "[EPDGService]"

    const-string v14, "update app policy for ATT wave1"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v15, "imsvoicecall"

    sget-object v16, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    invoke-virtual/range {v13 .. v16}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    :cond_0
    sget-object v13, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v13, v7, :cond_5

    :cond_1
    :goto_3
    return-void

    .end local v2    # "appPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .end local v3    # "appPrfOrd2":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .end local v4    # "appPrfOrd3":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .end local v7    # "bVolteTriState":Lcom/sec/epdg/EpdgConstants$TriState;
    .end local v9    # "bootupChangeRequired":Z
    .end local v10    # "emPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    .end local v11    # "mcPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :cond_2
    sget-object v11, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    goto :goto_0

    .restart local v10    # "emPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    .restart local v11    # "mcPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :cond_3
    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_1

    .restart local v2    # "appPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .restart local v3    # "appPrfOrd2":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    :cond_4
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_2

    .restart local v4    # "appPrfOrd3":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .restart local v7    # "bVolteTriState":Lcom/sec/epdg/EpdgConstants$TriState;
    .restart local v9    # "bootupChangeRequired":Z
    :cond_5
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    if-eqz v13, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v5

    .local v5, "bRoaming":Z
    :goto_4
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    if-eqz v13, :cond_7

    sget-object v13, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getIsWiFiPreferredInRoaming()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v14

    if-ne v13, v14, :cond_7

    const/4 v8, 0x1

    .local v8, "bWifiPf":Z
    :goto_5
    sget-object v13, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v13, v7, :cond_8

    const/4 v6, 0x1

    .local v6, "bVolteState":Z
    :goto_6
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->PREFERRED_MODE_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_9

    if-nez v5, :cond_9

    const-string v13, "[EPDGService]"

    const-string v14, "setPolicyTable - policy changed but it is home"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v5    # "bRoaming":Z
    .end local v6    # "bVolteState":Z
    .end local v8    # "bWifiPf":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .restart local v5    # "bRoaming":Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    .restart local v8    # "bWifiPf":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_6

    .restart local v6    # "bVolteState":Z
    :cond_9
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    if-eqz v13, :cond_a

    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->BOOTUP_CHECKING:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_a

    if-eqz v5, :cond_13

    if-eqz v8, :cond_13

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v13

    const-string v14, "ims"

    invoke-virtual {v13, v14}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_13

    const/4 v9, 0x1

    const-string v13, "[EPDGService]"

    const-string v14, "setPolicyTable - need update :power down at home and boot up in roaming area and WIFI preferred"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_7
    const-string v13, "[EPDGService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setPolicyTable- VoWIFI :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "roaming : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "reason :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Volte status: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v13, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v13, v12, :cond_1d

    if-eqz v6, :cond_18

    if-eqz v8, :cond_16

    if-eqz v5, :cond_16

    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_15

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    :cond_b
    :goto_8
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v15, "imsvoicecall"

    invoke-virtual {v13, v14, v15, v4}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    if-eqz v8, :cond_c

    if-eqz v5, :cond_c

    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_1b

    sget-object v11, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLAN_LTE_EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    :goto_9
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_1c

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    :cond_c
    :goto_a
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v15, "idle"

    invoke-virtual {v13, v14, v15, v2}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-eq v0, v13, :cond_d

    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOLTE_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_e

    :cond_d
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v15, "imsvideovoicecall"

    invoke-virtual {v13, v14, v15, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    :cond_e
    :goto_b
    if-nez v9, :cond_11

    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->PREFERRED_MODE_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_f

    if-nez v5, :cond_11

    :cond_f
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_10

    if-nez v5, :cond_11

    :cond_10
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->ROAMING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_12

    if-eqz v8, :cond_12

    :cond_11
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v15, "ims"

    invoke-virtual {v13, v14, v15, v11}, Lcom/sec/epdg/mapcon/PolicyManager;->updateMapconTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    :cond_12
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_1

    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v15, "emergency"

    invoke-virtual {v13, v14, v15, v10}, Lcom/sec/epdg/mapcon/PolicyManager;->updateMapconTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    goto/16 :goto_3

    :cond_13
    if-nez v5, :cond_14

    if-eqz v8, :cond_14

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v13

    const-string v14, "ims"

    invoke-virtual {v13, v14}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14

    const/4 v9, 0x1

    const-string v13, "[EPDGService]"

    const-string v14, "setPolicyTable - need update :power down in roaming + WIFI perferred and boot up in home area"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_14
    const-string v13, "[EPDGService]"

    const-string v14, "setPolicyTable- skip "

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_15
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto/16 :goto_8

    :cond_16
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_17

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    :goto_c
    goto/16 :goto_8

    :cond_17
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_c

    :cond_18
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_19

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    :goto_d
    if-eqz v8, :cond_b

    if-eqz v5, :cond_b

    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_1a

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    :goto_e
    goto/16 :goto_8

    :cond_19
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_d

    :cond_1a
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_e

    :cond_1b
    sget-object v11, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    goto/16 :goto_9

    :cond_1c
    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto/16 :goto_a

    :cond_1d
    sget-object v13, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v13, v12, :cond_e

    if-eqz v6, :cond_1f

    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_1e

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    :goto_f
    const/4 v13, 0x2

    new-array v1, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "imsvoicecall"

    aput-object v14, v1, v13

    const/4 v13, 0x1

    const-string v14, "imsvideovoicecall"

    aput-object v14, v1, v13

    .local v1, "appList":[Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14, v1, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v15, "idle"

    invoke-virtual {v13, v14, v15, v2}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    sget-object v10, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    goto/16 :goto_b

    .end local v1    # "appList":[Ljava/lang/String;
    :cond_1e
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_f

    :cond_1f
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_20

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    :goto_10
    goto :goto_f

    :cond_20
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_10
.end method

.method public static declared-synchronized setPreviousE911CallCount(I)V
    .locals 4
    .param p0, "count"    # I

    .prologue
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviousE911CallCount: count is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput p0, Lcom/sec/epdg/EpdgService;->mPreviousE911CallCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setPreviousNonE911CallCount(I)V
    .locals 4
    .param p0, "count"    # I

    .prologue
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviousNonE911CallCount: count is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput p0, Lcom/sec/epdg/EpdgService;->mPreviousNonE911CallCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized setRegistedNetworkStateChangeReceiver(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgService;->mRegistedNetworkStateChangeReceiver:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setVoWifiRoamingPreference(I)V
    .locals 2
    .param p1, "pref"    # I

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->ROAMING_MODE_SETTING:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V
    .locals 6
    .param p1, "status"    # Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .prologue
    const/4 v5, 0x0

    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne p1, v2, :cond_5

    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sput-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v2, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    :cond_0
    :goto_0
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWiFiCallEnabled is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v2, v3, :cond_6

    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->shouldSendEpdgDeregWhenNoCellularAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    invoke-static {v5}, Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V

    invoke-direct {p0, v5}, Lcom/sec/epdg/EpdgService;->enableReceiver(Z)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sput-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne p1, v2, :cond_0

    sput-object p1, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v2, v3, :cond_8

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    goto :goto_1

    :cond_7
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    goto :goto_1

    :cond_8
    sget-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v2, v3, :cond_3

    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v2, :cond_a

    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v0

    .local v0, "BEST_RSRP":I
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v1

    .local v1, "LOW_RSRP":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v1

    :cond_9
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    goto/16 :goto_1

    .end local v0    # "BEST_RSRP":I
    .end local v1    # "LOW_RSRP":I
    :cond_a
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->enableReceiver(Z)V

    goto/16 :goto_1
.end method

.method private setVowifiSetting(I)V
    .locals 3
    .param p1, "enable"    # I

    .prologue
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_call_enable"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_wifi_call_enable_broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "wifiCall":Landroid/content/Intent;
    const-string v1, "wifi_call_enable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private shouldSendEpdgDeregWhenNoCellularAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->shouldWaitForDeregWhenWiffiCallingOff()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private startAlarmForInternetKeepAlive(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAlarmForInternetKeepAlive: Updating the alarm with delay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setKeepAliveRunning(Z)V

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.epdg.INTERNET_KEEP_ALIVE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mInternetKeepAlive:Landroid/content/Intent;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mInternetKeepAlive:Landroid/content/Intent;

    const/high16 v4, 0x8000000

    invoke-static {v1, v2, v3, v4}, Lcom/sec/epdg/EpdgUtils;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private startHandOverWifiToLte(I)I
    .locals 4
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Wifi RSSI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved Wifi RSSI Level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getSavedWifiRssiLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    new-instance v1, Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;

    invoke-direct {v1, p0, p1}, Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    new-instance v2, Lcom/sec/epdg/EpdgService$WifiToLteHOFailureRunnable;

    invoke-direct {v2, p0, p1}, Lcom/sec/epdg/EpdgService$WifiToLteHOFailureRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isWifiTolteHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private startHandoverLteToWifi(I)I
    .locals 8
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v4

    if-ne v7, v4, :cond_0

    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot trigger L2W HO: (EPDG NOT AVAILABLE) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot trigger L2W HO: (WIFI NOT CONNECTED) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .local v0, "nwkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot trigger L2W HO: (PDN Not active on other RAT) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " networkInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v4, :cond_7

    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v4, v5, :cond_9

    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call status is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v6}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " check for LTE availability"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_8

    const-string v4, "[EPDGService]"

    const-string v5, "LTE is available, now check for wifi strength"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v5, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v1

    .local v1, "rssi":I
    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v4, v5, :cond_3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_E911:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v4, v5, :cond_4

    :cond_3
    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInVoice()I

    move-result v4

    if-ge v1, v4, :cond_4

    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Voice call and wifi rssi is below handover threshold, no need to do L2W handover. rssi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handover rssi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInVoice()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInVoice()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startL2WHandoverProfiling(I)V

    goto/16 :goto_0

    :cond_4
    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v4, v5, :cond_5

    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v4, v5, :cond_6

    :cond_5
    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v4

    if-ge v1, v4, :cond_6

    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video call and wifi rssi is below handover threshold, no need to do L2W handover. rssi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " handover rssi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startL2WHandoverProfiling(I)V

    invoke-direct {p0, v3, v7}, Lcom/sec/epdg/EpdgService;->sendEpdgAvailableIntent(ZZ)V

    goto/16 :goto_0

    :cond_6
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifi rssi is good for handover. rssi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " wifi rssi A: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "rssi":I
    :cond_7
    :goto_1
    const-string v2, "[HANDOFF]"

    const-string v4, "Starting HandOver To Wifi"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    new-instance v4, Lcom/sec/epdg/EpdgService$LteToWifiHOSuccessRunnable;

    invoke-direct {v4, p0, p1}, Lcom/sec/epdg/EpdgService$LteToWifiHOSuccessRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    new-instance v5, Lcom/sec/epdg/EpdgService$LteToWifiHOFailureRunnable;

    invoke-direct {v5, p0, p1}, Lcom/sec/epdg/EpdgService$LteToWifiHOFailureRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    invoke-virtual {v2, p1, v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->islteToWifiHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    move v2, v3

    goto/16 :goto_0

    :cond_8
    const-string v2, "[EPDGService]"

    const-string v4, "Connected mode but LTE is lost, perform L2W handover"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call status is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v5}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " perform L2W handover"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    .locals 10
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .local v4, "retVal":Z
    if-nez p1, :cond_0

    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startPeriodicDpdIfNecessary: apnType is null, returning: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .end local v4    # "retVal":Z
    .local v5, "retVal":I
    :goto_0
    return v5

    .end local v5    # "retVal":I
    .restart local v4    # "retVal":Z
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->isConnectedModeDpdAllow()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {p1}, Lcom/sec/epdg/EpdgService;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .local v6, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getPeriodicDpdTimer()I

    move-result v1

    .local v1, "dpdTimer":I
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startPeriodicDpdIfNecessary: dpd time is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v8

    mul-int/lit16 v9, v1, 0x3e8

    invoke-virtual {v7, v8, v9}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForPeriodicDpd(Ljava/lang/String;I)V

    const/4 v4, 0x1

    .end local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .end local v1    # "dpdTimer":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    :goto_2
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startPeriodicDpdIfNecessary: returning: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .restart local v5    # "retVal":I
    goto :goto_0

    .end local v5    # "retVal":I
    .restart local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .restart local v1    # "dpdTimer":I
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v6    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_2
    const-string v7, "[EPDGService]"

    const-string v8, "startPeriodicDpdIfNecessary: dpd timer is 0"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v1    # "dpdTimer":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_4
    const-string v7, "[EPDGService]"

    const-string v8, "startPeriodicDpdIfNecessary: PDN is not connected on wifi"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v7, "[EPDGService]"

    const-string v8, "startPeriodicDpdIfNecessary: DPD is allowed in connected mode"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private declared-synchronized startTEPDGLTETimerIfRequired()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startTimerForPdnXfer(JI)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "networkType"    # I

    .prologue
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTimerForPdnXfer: Updating the alarm with delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    invoke-direct {v0, p0, p3}, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startTimerOrPerformDns(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is none and ipv4 address is now configured, wait for ipv6 address configuration"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->isIPv6AddressScopeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is none and ipv6 address is now configured, wait for ipv4 address configuration"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    :cond_2
    const-string v0, "[EPDGService]"

    const-string v1, "Link local ipv6 address is configured, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4:Lcom/sec/epdg/EpdgService$IpType;

    if-ne v0, v1, :cond_7

    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->isIPv6AddressScopeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type was ipv4 and now ipv6 address is configured, stopping the timer and starting DNS"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    goto :goto_0

    :cond_4
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi ip config timer is already expired when ipv6 address configured"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->performDnsIfPossible()V

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is v4, again v4 address is received, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is v4, link local ipv6 address is configured, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V6:Lcom/sec/epdg/EpdgService$IpType;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type was ipv6 and now ipv4 address is configured, stopping the timer and starting DNS"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    goto/16 :goto_0

    :cond_8
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi ip config timer is already expired when ipv4 address configured"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->performDnsIfPossible()V

    goto/16 :goto_0

    :cond_9
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->isIPv6AddressScopeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is v6, again v6 address is received, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is v6, link local ipv6 address is configured, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private startTimersIfNeeded()V
    .locals 3

    .prologue
    sget-boolean v1, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->isWifiSettingOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "[EPDGService]"

    const-string v2, "Wifi Setting on"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->shouldTEpdgTimerBeStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[EPDGService]"

    const-string v2, "IMS PDN connected when wifi off"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "XFA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    .end local v0    # "salesCode":Ljava/lang/String;
    :goto_0
    return-void

    .restart local v0    # "salesCode":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    .end local v0    # "salesCode":Ljava/lang/String;
    :cond_1
    const-string v1, "[EPDGService]"

    const-string v2, "IMS PDN not connected when wifi off"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "[EPDGService]"

    const-string v2, "Wifi Setting off"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "[EPDGService]"

    const-string v2, "isNotRequireTimer is true. reset it"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    goto :goto_0
.end method

.method private startWifiProfiling()V
    .locals 26

    .prologue
    const/16 v25, 0x0

    .local v25, "disableRSSI":Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v24

    .local v24, "apnType":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[EPDGService]"

    const-string v2, "Don\'t start wifi profiling.MAPCON is LTE"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsWifiOnlyAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    if-eqz v1, :cond_1

    const/16 v25, 0x1

    :cond_1
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsRssiDisabledForProfiling()Z

    move-result v25

    :cond_2
    const-string v1, "FTM"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ORO"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/16 v25, 0x0

    :cond_4
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startWifiProfiling() disableRSSI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v25, :cond_8

    const/16 v13, -0x64

    .local v13, "goodDB":I
    :goto_1
    if-eqz v25, :cond_9

    const/16 v14, -0x64

    .local v14, "badDB":I
    :goto_2
    if-eqz v25, :cond_a

    const/16 v15, -0x64

    .local v15, "thresholdDB":I
    :goto_3
    if-eqz v25, :cond_b

    const/16 v16, -0x64

    .local v16, "goodDBWifiOnly":I
    :goto_4
    if-eqz v25, :cond_c

    const/16 v17, -0x64

    .local v17, "badDBWifiOnly":I
    :goto_5
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v18

    .local v18, "BEST_RSRP":I
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v19

    .local v19, "LOWEST_RSRP":I
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getCdmaRssi()I

    move-result v20

    .local v20, "cdmaRssi":I
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v1

    move-object/from16 v0, v24

    invoke-virtual {v1, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v23

    .local v23, "isCsPrefMode":Z
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->isHandoverRequiredOnCdmaIndication()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    :cond_5
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_6

    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_7

    :cond_6
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v18

    :cond_7
    sget-object v1, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServerSelection;->getEpdgServerIp()Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mWifiOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/epdg/EpdgService;->mLteOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/epdg/EpdgService;->mLteOff:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/epdg/EpdgService;->mCdmaOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/epdg/EpdgService;->mCdmaOff:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/epdg/EpdgService;->mL2WHandoverProfilingOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/epdg/EpdgService;->mWifiRssiIntentReceived:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/epdg/EpdgService;->mPollingRssiOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/epdg/EpdgService;->mPollingRssiOff:Ljava/lang/Runnable;

    sget-object v21, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/EpdgSettings;->getPktLossPercent()I

    move-result v21

    sget-object v22, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgSettings;->getSmartWifiTimer()I

    move-result v22

    invoke-virtual/range {v1 .. v23}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startProfiling(Ljava/net/InetAddress;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;IIIIIIIIIIZ)V

    goto/16 :goto_0

    .end local v13    # "goodDB":I
    .end local v14    # "badDB":I
    .end local v15    # "thresholdDB":I
    .end local v16    # "goodDBWifiOnly":I
    .end local v17    # "badDBWifiOnly":I
    .end local v18    # "BEST_RSRP":I
    .end local v19    # "LOWEST_RSRP":I
    .end local v20    # "cdmaRssi":I
    .end local v23    # "isCsPrefMode":Z
    :cond_8
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v13

    goto/16 :goto_1

    .restart local v13    # "goodDB":I
    :cond_9
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v14

    goto/16 :goto_2

    .restart local v14    # "badDB":I
    :cond_a
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v15

    goto/16 :goto_3

    .restart local v15    # "thresholdDB":I
    :cond_b
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInWifiOnly()I

    move-result v16

    goto/16 :goto_4

    .restart local v16    # "goodDBWifiOnly":I
    :cond_c
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveOutWifiOnly()I

    move-result v17

    goto/16 :goto_5
.end method

.method private static startWifiRssiIntentDelayTimerIfRequired(Ljava/lang/String;)V
    .locals 3
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startWifiRssiIntentDelayTimerIfRequired: apn type is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiIntentDelayTimer()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsWifiRssiInPollingZone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsImsCallConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "[EPDGService]"

    const-string v1, "startWifiRssiIntentDelayTimerIfRequired: Wifi Rssi intent delay timer started"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    :cond_2
    const-string v0, "[EPDGService]"

    const-string v1, "startWifiRssiIntentDelayTimerIfRequired: Wifi Rssi intent delay timer already running"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopEpdgService(Z)V
    .locals 4
    .param p1, "forever"    # Z

    .prologue
    const/4 v3, 0x0

    const-string v1, "[EPDGService]"

    const-string v2, "stopEpdgService"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-eqz v1, :cond_1

    const-string v1, "[EPDGService]"

    const-string v2, "WifiCall is disabled"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EVR"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiCallingOff:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    sget-object v1, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setRegistedNetworkStateChangeReceiver(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    sput-boolean v3, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    :cond_1
    sget-boolean v1, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    :try_start_1
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    sput-boolean v3, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    :cond_2
    return-void

    :cond_3
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "[EPDGService]"

    const-string v2, "mNetworkStateChangeReceiver was not registered."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "[EPDGService]"

    const-string v2, "mSimStateChangeReceiver was not registered."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private stopInternetKeepAlive()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "[EPDGService]"

    const-string v2, "stopInternetKeepAlive()"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setKeepAliveRunning(Z)V

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iput-object v3, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    iput-object v3, p0, Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;

    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_0
    return-void
.end method

.method private stopPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    .locals 9
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .local v3, "retVal":Z
    if-nez p1, :cond_0

    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopPeriodicDpdIfNecessary: apnType is null, returning: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .end local v3    # "retVal":Z
    .local v4, "retVal":I
    :goto_0
    return v4

    .end local v4    # "retVal":I
    .restart local v3    # "retVal":Z
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->isConnectedModeDpdAllow()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {p1}, Lcom/sec/epdg/EpdgService;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .local v5, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "[EPDGService]"

    const-string v7, "stopPeriodicDpdIfNecessary: removing periodic dpd intent"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/epdg/EpdgPeriodicDpd;->removePeriodicDpdPendingIntent(Ljava/lang/String;)V

    const/4 v3, 0x1

    .end local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    :goto_2
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopPeriodicDpdIfNecessary: returning: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .restart local v4    # "retVal":I
    goto :goto_0

    .end local v4    # "retVal":I
    .restart local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v5    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_3
    const-string v6, "[EPDGService]"

    const-string v7, "stopPeriodicDpdIfNecessary: PDN is not connected on wifi"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v6, "[EPDGService]"

    const-string v7, "stopPeriodicDpdIfNecessary: DPD is allowed in connected mode"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static stopWifiRssiIntentDelayTimerIfRequired()V
    .locals 2

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiIntentDelayTimer()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[EPDGService]"

    const-string v1, "stopWifiRssiIntentDelayTimerIfRequired: Wifi Rssi intent delay timer is running, stop it!"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "[EPDGService]"

    const-string v1, "stopWifiRssiIntentDelayTimerIfRequired: Wifi Rssi intent delay timer already stopped"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCpEpdgHoThreshold(Z)V
    .locals 9
    .param p1, "isAvailable"    # Z

    .prologue
    const/4 v1, 0x0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold4gRoveIn()I

    move-result v2

    .local v2, "threshold4gRoveIn":I
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold4gRoveOut()I

    move-result v3

    .local v3, "threshold4gRoveOut":I
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold3gRoveIn()I

    move-result v4

    .local v4, "threshold3gRoveIn":I
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold3gRoveOut()I

    move-result v5

    .local v5, "threshold3gRoveOut":I
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold2gRoveIn()I

    move-result v6

    .local v6, "threshold2gRoveIn":I
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold2gRoveOut()I

    move-result v7

    .local v7, "threshold2gRoveOut":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-nez v7, :cond_2

    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "Do not support CP threshold function"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    const-string v8, "ims"

    invoke-virtual {v0, v8}, Lcom/sec/epdg/mapcon/MapconTable;->isVoWifiPref(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "[EPDGService]"

    const-string v1, "Cellular preferred mode set threshold"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    move v1, p1

    invoke-interface/range {v0 .. v7}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgHoThreshold(ZIIIIII)V

    sput-boolean p1, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    const/4 v8, 0x1

    if-ne v0, v8, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-interface/range {v0 .. v7}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgHoThreshold(ZIIIIII)V

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    goto :goto_0
.end method

.method private updateMapconTable(Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    .locals 9
    .param p1, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .prologue
    if-nez p1, :cond_0

    const-string v6, "[EPDGService]"

    const-string v7, "prefered Order is NULL"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "updateApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/epdg/IWlanApnSetting;

    .local v4, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v1

    .local v1, "apn":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "apn":Ljava/lang/String;
    .end local v4    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .local v3, "apnList":[Ljava/lang/String;
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "prefered Order for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v3, p1}, Lcom/sec/epdg/mapcon/MapconTable;->updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    goto :goto_0
.end method

.method private updateNetRegist()V
    .locals 4

    .prologue
    iget v0, p0, Lcom/sec/epdg/EpdgService;->mUpdateNetRegiRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/epdg/EpdgService;->mUpdateNetRegiRetryCount:I

    iget v0, p0, Lcom/sec/epdg/EpdgService;->mUpdateNetRegiRetryCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgAvailability(Z)V

    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "don`t retry more."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/epdg/EpdgService;->mUpdateNetRegiRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/EpdgService;->mUpdateNetRegiRetryCount:I

    :goto_0
    return-void

    :cond_0
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update netRegist cnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/epdg/EpdgService;->mUpdateNetRegiRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgAvailability(Z)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    const/16 v2, 0x50

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method


# virtual methods
.method public bootCompleted()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bootCompleted: bIsSimReady is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mEpdgReady is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-nez v0, :cond_1

    const-string v0, "[EPDGService]"

    const-string v1, "EPDG is not ready yet."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    if-eq v0, v3, :cond_3

    :cond_2
    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    if-ne v0, v3, :cond_0

    :cond_3
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public connect(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 7
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v2, -0x1

    .local v2, "profileId":I
    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x2b

    iput v3, v1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getProfileIdbyApnType(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_0

    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect() Unable to get cid for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v0, 0x1

    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect() find SM for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "i":I
    :cond_0
    if-ne v2, v6, :cond_1

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    instance-of v3, v3, Lcom/sec/epdg/EpdgTestRilAdapter;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getTestNetInterfaceNum()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect() with EpdgTestRilAdapter - find dummyid for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eq v2, v6, :cond_2

    iput v2, v1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Lcom/sec/epdg/EpdgService;->getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Post event RIL_CONNECT_REQ for profileId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    const/4 v3, 0x0

    return v3

    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public disconnect(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 8
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v2, -0x1

    .local v2, "profileId":I
    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x2c

    iput v3, v1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getProfileIdbyApnType(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_0

    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnect() Unable to get cid for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnect() find SM for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "i":I
    :cond_0
    if-eq v2, v6, :cond_2

    new-instance v3, Landroid/os/AsyncResult;

    new-instance v4, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    invoke-direct {v4, v2}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;-><init>(I)V

    invoke-direct {v3, v7, v4, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Post event RIL_DISCONNECT_REQ for profileId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    const/4 v3, 0x0

    return v3

    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_2
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnect() can\'t be triggered for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump EpdgService from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v6, "[EPDGService]"

    const-string v7, "EpdgService dump started"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "EpdgService Dumpstate"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v0, v4

    .local v3, "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnContextDump()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v3    # "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v1

    .local v1, "data":Lcom/sec/epdg/EpdgRilSharedData;
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgRilSharedData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "data":Lcom/sec/epdg/EpdgRilSharedData;
    :goto_2
    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v6, "EPDG server last DNS status"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "UNSUCCESSFUL"

    :goto_3
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EPDG Enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v6, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    if-eqz v6, :cond_5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v6}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Volte is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " VoWifi is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ims Listener : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsListener;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Vowifi MDN : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "vowifi_mdn"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VoWifi Timers :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgTimers;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/sec/epdg/Log;->dump()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sec/epdg/EpdgDumpState;->dump(Ljava/io/PrintWriter;)V

    const-string v6, "[EPDGService]"

    const-string v7, "EpdgService dump finished"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v6, "EpdgRilSharedData : null"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_8
    const-string v6, "SUCCESSFUL"

    goto/16 :goto_3
.end method

.method public enableTestRilAdapter(Z)I
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    const-string v0, "[EPDGService]"

    const-string v1, "Changing the RIL Operating Mode using TesRilAdapter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgTestRilAdapter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgTestRilAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "Changing the RIL Operating Mode using RilAdapter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRilAdapter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgRilAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    goto :goto_0
.end method

.method public isDuringHandoverForIMS()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v4, 0xb

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v1

    .local v1, "cid":I
    if-gez v1, :cond_1

    const-string v3, "[EPDGService]"

    const-string v4, "invalid cid for ims"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget-boolean v4, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v4, :cond_2

    const-string v3, "[EPDGService]"

    const-string v4, "EpdgService not initialized."

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v0

    .local v0, "apnState":I
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDuringHandoverForIMS(), cid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apnState is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x6

    if-eq v0, v4, :cond_3

    const/4 v4, 0x7

    if-eq v0, v4, :cond_3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public makeEpdgServiceUp()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    .local v6, "context":Landroid/content/Context;
    new-instance v0, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;ZZZ)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mDefaultDataSubChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$EpdgContentObserver;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->CONTENT_URI_IWLANSETTINGS:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgWfcProfileReader;->CONTENT_URI_WFCPROFILE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mIPCallAdbCommandReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.commands.ipcall.action_ip_setting_change"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWiFiCallEnableIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "action_wifi_call_enable_broadcast"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .local v7, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "action_wfc_switch_profile_broadcast"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v0, -0x64

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mPreferedModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public sendEventToStateMachine(IILandroid/os/IBinder;)I
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "event"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;-><init>(Lcom/sec/epdg/EpdgService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public sendWfcEpdgAllowedIntent()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorXaa()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.epdg.WFC_EPDG_ALLOWED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWfcEpdgAllowedIntent :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmoMvno()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "epdg_allowed"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmoMvno()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public startForceToHandOverToEPDG(ZILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .locals 11
    .param p1, "isEpdg"    # Z
    .param p2, "networkType"    # I
    .param p3, "feature"    # Ljava/lang/String;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    if-nez v0, :cond_0

    const-string v0, "[EPDGService]"

    const-string v1, "startForceToHandOverToEPDG : mSmartWifiAdapter is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "[HANDOFF]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startForceToHandOverToEPDG : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v8, 0x1

    .local v8, "wificallenable":I
    :goto_1
    const/4 v9, -0x1

    .local v9, "wificallpreferred":I
    if-eqz p1, :cond_2

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$WifiCallEnabler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v8, v9, v2}, Lcom/sec/epdg/EpdgService$WifiCallEnabler;-><init>(Lcom/sec/epdg/EpdgService;IIZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v10, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/epdg/EpdgService$WifiCallHandover;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/epdg/EpdgService$WifiCallHandover;-><init>(Lcom/sec/epdg/EpdgService;ZIILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .end local v8    # "wificallenable":I
    .end local v9    # "wificallpreferred":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .restart local v8    # "wificallenable":I
    .restart local v9    # "wificallpreferred":I
    :cond_2
    sget-object v10, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/epdg/EpdgService$WifiCallHandover;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/epdg/EpdgService$WifiCallHandover;-><init>(Lcom/sec/epdg/EpdgService;ZIILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$WifiCallEnabler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v8, v9, v2}, Lcom/sec/epdg/EpdgService$WifiCallEnabler;-><init>(Lcom/sec/epdg/EpdgService;IIZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public startHandOverLteToWifi(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "[HANDOFF]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startHandOverLteToWifi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p4}, Lcom/sec/epdg/mapcon/MapconTable;->setAppPolicy(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Landroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sec/epdg/EpdgDumpState;->addL2WApiCall(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startHandoverLteToWifi(I)I

    move-result v0

    return v0
.end method

.method public startHandOverWifiToLte(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "[HANDOFF]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startHandOverWifiToLte : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p4}, Lcom/sec/epdg/mapcon/MapconTable;->setAppPolicy(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Landroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sec/epdg/EpdgDumpState;->addW2LApiCall(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startHandOverWifiToLte(I)I

    move-result v0

    return v0
.end method
