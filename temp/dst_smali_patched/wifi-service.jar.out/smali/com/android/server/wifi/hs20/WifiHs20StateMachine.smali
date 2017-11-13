.class public Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;,
        Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DisablingState;,
        Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;,
        Lcom/android/server/wifi/hs20/WifiHs20StateMachine$VerifyingAAA;,
        Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;,
        Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;,
        Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;,
        Lcom/android/server/wifi/hs20/WifiHs20StateMachine$RenegotiatingTLS;,
        Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;,
        Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;,
        Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingOSUSP;,
        Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;,
        Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EnablingState;,
        Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DisabledState;,
        Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;,
        Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;
    }
.end annotation


# static fields
.field static final BASE:I = 0x1b58

.field static final CMD_ABORT_PROVISIONING:I = 0x1b65

.field static final CMD_ADD_CREDENTIAL_SUPPLICANT:I = 0x1b68

.field static final CMD_ANQP_FETCH_COMPLETE:I = 0x1b9e

.field static final CMD_BOOT_COMPLETED:I = 0x1b77

.field static final CMD_CETU:I = 0x1

.field static final CMD_ERROR:I = 0x1b6e

.field static final CMD_EXECUTE_COMMAND:I = 0x1b5f

.field static final CMD_HOTSPOT20_DISABLE:I = 0x1b72

.field static final CMD_HOTSPOT20_DISABLED:I = 0x1b73

.field static final CMD_HOTSPOT20_ENABLE:I = 0x1b71

.field static final CMD_HOTSPOT20_ENABLED:I = 0x1b6f

.field static final CMD_HOTSPOT20_ENABLE_FAILURE:I = 0x1b70

.field static final CMD_INTERWORKING_CONNECT:I = 0x1b69

.field static final CMD_LBTU:I = 0x0

.field static final CMD_NCCTLS:I = 0x2

.field static final CMD_PROTOCOL_ERROR:I = 0x1b74

.field static final CMD_PROVIDER_LIST_UPDATED:I = 0x1b9f

.field static final CMD_PROVISIONING_DONE:I = 0x1b6d

.field static final CMD_RELEASE_TLS_CONNECTION:I = 0x1b66

.field static final CMD_REPLACE:I = 0x3

.field static final CMD_SELECT_OSU:I = 0x1b6b

.field static final CMD_SEND_SOAP_REQUEST:I = 0x1b5e

.field static final CMD_START_OSU:I = 0x1b6c

.field static final CMD_START_POLICY_REMEDIATION:I = 0x1b75

.field static final CMD_START_PROVISIONING:I = 0x1b59

.field static final CMD_START_REMEDIATION:I = 0x1b5a

.field static final CMD_START_SUBSCRIPTION_REMEDIATION:I = 0x1b76

.field static final CMD_TEST_INSTALL_FILE:I = 0x1b78

.field static final CMD_TEST_TRANSIT_NOSIGMA:I = 0x1b79

.field static final CMD_UPDATE_MO:I = 0x1b61

.field static final CMD_UPDATE_POLICY_TIMER:I = 0x1b63

.field static final CMD_UPDATE_SUBSCRIPTION_TIMER:I = 0x1b64

.field static final CMD_UPLOADMO:I = 0x4

.field static final CMD_VERIFY_AAA:I = 0x1b62

.field static final CMD_WIFI_STATE_CHANGED_ACTION:I = 0x1ba0

.field static final CRED_CLIENT_CERT:I = 0x2

.field public static final CRED_CONF_ID:Ljava/lang/String; = "SAMSUNG_CRED_"

.field public static final CRED_FILENAME:Ljava/lang/String; = "cred.conf"

.field private static final CRED_ID_FAILURE:I = -0x3e7

.field static final CRED_SERVER_CERT:I = 0x1

.field static final CRED_SIM:I = 0x3

.field static final CRED_USR:I = 0x0

.field protected static final DBG:Z = true

.field static final FAILURE:I = 0x1

.field protected static final HOTSPOT20_OSU_SELECTED:Ljava/lang/String; = "hotspot20_osu_selected"

.field public static final HOTSPOT20_POLICY_PROVISIONING_FAILED:Ljava/lang/String; = "hotspot20_policy_provisioning_failed"

.field public static final HOTSPOT20_POLICY_PROVISIONING_SUCCESS:Ljava/lang/String; = "hotspot20_policy_provisioning_success"

.field public static final HOTSPOT20_PROVISIONING_FAILED:Ljava/lang/String; = "hotspot20_provisioning_failed"

.field public static final HOTSPOT20_PROVISIONING_SUCCESS:Ljava/lang/String; = "hotspot20_provisioning_success"

.field protected static final HS20_PROVISIONING_FAILED:Ljava/lang/String; = "HS20_provisioning_failed"

.field private static final MAX:I = 0x64

.field private static final MAX_CRED_PRIORITY:I = 0x7fffffff

.field private static final MIN_CRED_PRIORITY:I = -0x80000000

.field private static final OCSP_DISABLE:I = 0x0

.field private static final OCSP_OPTIONAL:I = 0x1

.field private static final OCSP_REQUIRED:I = 0x2

.field static final OMADM_METHOD:I = 0x0

.field static final PHASE1_CRED_METHOD:I = 0x2

.field protected static final POLICY_UPDATE_TIMER_EXPIRED:Ljava/lang/String; = "policy_update_timer_expired"

.field protected static final REDIRECT_URI:Ljava/lang/String; = "http://127.0.0.1:12345"

.field public static RemediationURIFromFrame:Ljava/net/URI; = null

.field static final SOAP_METHOD:I = 0x1

.field static final SPPPOSTDEV:I = 0x0

.field static final SPPPOSTDEVDATA:I = 0x2

.field static final SPPUPDATERES:I = 0x1

.field private static final SPP_CRED_PRIORITY_ELEMENT:Ljava/lang/String; = "priority"

.field static final SUBSCRIPTION_PROVISIONING:I = 0x0

.field static final SUBSCRIPTION_REMEDIATION:I = 0x1

.field protected static final SUBSCRIPTION_UPDATE_TIMER_EXPIRED:Ljava/lang/String; = "subscription_update_timer_expired"

.field static final SUCCESS:I = 0x0

.field public static final SUPPLICANT_CONF:Ljava/lang/String; = "wpa_supplicant.conf"

.field private static final TAG:Ljava/lang/String; = "HS20StateMachine"

.field static final UNDEFINED_METHOD:I = -0x1

.field public static final WIFI_CONF_PATH:Ljava/lang/String; = "/data/misc/wifi/"

.field public static final WIFI_SYSTEM_PATH:Ljava/lang/String; = "/system/etc/wifi/"

.field protected static final WNM_NOTIFICATION:Ljava/lang/String; = "wnm_notification"

.field private static currentCredPriority:I

.field public static mFileObserver:Landroid/os/FileObserver;

.field private static final mSpUpdateLock:Ljava/lang/Object;


# instance fields
.field private CERTIFICATIION_ADDED_DELAY:I

.field private DEFAULT_IMSI:Ljava/lang/String;

.field private DEFAULT_OPERATOR_LENGTH:I

.field protected DEFAULT_RETURN_VALUE:I

.field protected INVALID_CRED_ID:I

.field private OMA_DM:Ljava/lang/String;

.field private SOAP:Ljava/lang/String;

.field private TTA_ADDITIONAL_SIM_VALUE:Ljava/lang/String;

.field public cmd:I

.field protected credential_id:I

.field public credential_type:I

.field public current_credential:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

.field private final current_policy:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

.field private final current_subscription:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

.field protected disconnectedFromSsid:Ljava/lang/String;

.field expirationTimer:Lcom/android/server/wifi/hs20/WifiHs20Timer;

.field private ic:Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;

.field ll:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20Timer;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mCertEnrollmentState:Lcom/android/internal/util/State;

.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mConnectingOSUSPState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field mCurrentDetailedState:Landroid/net/NetworkInfo$DetailedState;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDisabledState:Lcom/android/internal/util/State;

.field private mDisablingState:Lcom/android/internal/util/State;

.field private mDiscoveringState:Lcom/android/internal/util/State;

.field private mEnablingState:Lcom/android/internal/util/State;

.field private mEstablishingTLSState:Lcom/android/internal/util/State;

.field private mFirstTime:Z

.field private mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

.field protected mHessid:Ljava/lang/String;

.field private mIsBootComplete:Z

.field private mModifyingMO:Lcom/android/internal/util/State;

.field mPendingRemedialtion:Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

.field private mPrevState:Lcom/android/internal/util/State;

.field private mReleasingTLSState:Lcom/android/internal/util/State;

.field private mRenegotiatingTLSState:Lcom/android/internal/util/State;

.field protected mSPFODN:Ljava/lang/String;

.field protected mSPFriendlyname:Ljava/lang/String;

.field private mSelectingOSUSPState:Lcom/android/internal/util/State;

.field private mSelectingSubscriptionState:Lcom/android/internal/util/State;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mSubscriptionManager:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

.field private mSubscriptionManagerMessenger:Landroid/os/Messenger;

.field private mTeleManager:Landroid/telephony/TelephonyManager;

.field private mVerifyingAAAState:Lcom/android/internal/util/State;

.field public mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field public method_type:I

.field private phaseConfPath:Ljava/lang/String;

.field private policyTimer:[Ljava/util/Timer;

.field private policyTimer_count:I

.field public policyUpdate:Z

.field private selectedAPSSID:Ljava/lang/String;

.field private selectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

.field serverUri:Ljava/net/URI;

.field private sigmaSpFriendlyName:Ljava/lang/String;

.field public statusProvisioning:I

.field private subs_count:I

.field private subscriptionTimer:[Ljava/util/Timer;

.field public subscription_flag:I

.field update:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->RemediationURIFromFrame:Ljava/net/URI;

    const/4 v0, 0x1

    sput v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSpUpdateLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const-string v1, "HS20StateMachine"

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mFirstTime:Z

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPrevState:Lcom/android/internal/util/State;

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DisabledState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DisabledState;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDisabledState:Lcom/android/internal/util/State;

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EnablingState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EnablingState;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mEnablingState:Lcom/android/internal/util/State;

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDiscoveringState:Lcom/android/internal/util/State;

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingOSUSP;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingOSUSP;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSelectingOSUSPState:Lcom/android/internal/util/State;

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mConnectingOSUSPState:Lcom/android/internal/util/State;

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mEstablishingTLSState:Lcom/android/internal/util/State;

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$RenegotiatingTLS;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$RenegotiatingTLS;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mRenegotiatingTLSState:Lcom/android/internal/util/State;

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSelectingSubscriptionState:Lcom/android/internal/util/State;

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mModifyingMO:Lcom/android/internal/util/State;

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mCertEnrollmentState:Lcom/android/internal/util/State;

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$VerifyingAAA;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$VerifyingAAA;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mVerifyingAAAState:Lcom/android/internal/util/State;

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DisablingState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DisablingState;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDisablingState:Lcom/android/internal/util/State;

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->DEFAULT_OPERATOR_LENGTH:I

    const-string v1, "8010002796"

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->TTA_ADDITIONAL_SIM_VALUE:Ljava/lang/String;

    const-string v1, "001010123456789"

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->DEFAULT_IMSI:Ljava/lang/String;

    const-string v1, "/data/misc/wifi/credBrowser.conf"

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->phaseConfPath:Ljava/lang/String;

    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->cmd:I

    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->disconnectedFromSsid:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->current_subscription:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->current_policy:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ll:Ljava/util/LinkedList;

    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer_count:I

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ic:Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subs_count:I

    iput-boolean v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->update:Z

    const/16 v1, 0xbb8

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->CERTIFICATIION_ADDED_DELAY:I

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPendingRemedialtion:Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mCurrentDetailedState:Landroid/net/NetworkInfo$DetailedState;

    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->DEFAULT_RETURN_VALUE:I

    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    const-string v1, "SPP-ClientInitiated"

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->SOAP:Ljava/lang/String;

    const-string v1, "OMA-DM-ClientInitiated"

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->OMA_DM:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mIsBootComplete:Z

    const-string v1, "HS20StateMachine"

    const-string v2, "HS20StateMachine  object being created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ic:Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.HS20_REMEDIATION_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.HS20_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.HS20_OSU_SELECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.hs20.INSTALL_CRED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.hs20.EAP_TYPE_FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.hs20.TEST_START_OSU_PROCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.hs20.TEST_GEN_CRED_CONF_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.hs20.TEST_TRIGGER_POLICY_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.hs20.TEST_TRIGGER_INSTALL_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.hs20.TEST_START_OSU_PROCESS_NOSIGMA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.HS20_EAP_TYPE_FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setPermission()V

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDisabledState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mEnablingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDiscoveringState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSelectingOSUSPState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDiscoveringState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mConnectingOSUSPState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mEstablishingTLSState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mRenegotiatingTLSState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mEstablishingTLSState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSelectingSubscriptionState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mModifyingMO:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mVerifyingAAAState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mModifyingMO:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mCertEnrollmentState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDisablingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDiscoveringState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setLogRecSize(I)V

    new-array v1, v5, [Ljava/util/Timer;

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer:[Ljava/util/Timer;

    new-array v1, v5, [Ljava/util/Timer;

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscriptionTimer:[Ljava/util/Timer;

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;-><init>(Landroid/content/Context;Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSubscriptionManager:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSubscriptionManager:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSubscriptionManagerMessenger:Landroid/os/Messenger;

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)[Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer:[Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->resetVariables()V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mTeleManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->SOAP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->OMA_DM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->isPolicyUpdate(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendPolicyUpdateMessage(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updatePolicyTimerForThisCredential(I)V

    return-void
.end method

.method static synthetic access$1802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    sput p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    return p0
.end method

.method static synthetic access$1808()I
    .locals 2

    .prologue
    sget v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mIsBootComplete:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mIsBootComplete:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedAPSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->reloadCredentialsToSupplicant()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDiscoveringState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDisablingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mEstablishingTLSState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ic:Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mFirstTime:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mFirstTime:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->CERTIFICATIION_ADDED_DELAY:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSelectingOSUSPState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDisabledState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->handleRemediationRequest()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->current_subscription:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSubscriptionManagerMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mConnectingOSUSPState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSubscriptionManager:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;IIILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendSoapRequest(IIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sigmaSpFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSelectingSubscriptionState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sigmaSpFriendlyName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mCertEnrollmentState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mRenegotiatingTLSState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mModifyingMO:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/hs20/WifiHs20OsuProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->executeCommand(II)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/net/wifi/hs20/WifiHs20OsuProvider;)Landroid/net/wifi/hs20/WifiHs20OsuProvider;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mVerifyingAAAState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->loadCredtoSupplicant()V

    return-void
.end method

.method private addHs20Credential()I
    .locals 11

    .prologue
    const/4 v9, -0x1

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v1, v10}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    .local v1, "mDbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-virtual {v1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPPSMONode(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v8

    .local v8, "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    if-nez v8, :cond_1

    move v5, v9

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v4, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    .local v4, "newCred":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    iget-object v7, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    .local v7, "newPolicy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    iget-object v6, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    .local v6, "newHomeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    iget v2, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    .local v2, "mUpdateIdentifier":I
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .local v3, "msg":Landroid/os/Message;
    const/16 v10, 0xd2

    iput v10, v3, Landroid/os/Message;->what:I

    :try_start_0
    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v5

    .local v5, "newCredId":I
    if-eq v5, v9, :cond_0

    invoke-direct {p0, v5, v8}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setHs20Credential(ILcom/android/server/wifi/hs20/WifiHs20PPSMO;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v5    # "newCredId":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    move v5, v9

    goto :goto_0
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x22

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, ""

    .end local p0    # "string":Ljava/lang/String;
    .local v0, "lastPos":I
    :cond_0
    :goto_0
    return-object p0

    .end local v0    # "lastPos":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "lastPos":I
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private executeCommand(II)V
    .locals 3
    .param p1, "cmd"    # I
    .param p2, "flag"    # I

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x4e25

    iput v2, v1, Landroid/os/Message;->what:I

    iput p2, v1, Landroid/os/Message;->arg2:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSubscriptionManagerMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getEAPTypes()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "23#50#25#18#13#21"

    .local v0, "eapTypes":Ljava/lang/String;
    return-object v0
.end method

.method private getIMSI()Ljava/lang/String;
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .local v1, "networkOperator":Ljava/lang/String;
    const-string v2, "HS20StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imsi "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HS20StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imsi "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->TTA_ADDITIONAL_SIM_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->DEFAULT_IMSI:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleRemediationRequest()V
    .locals 12

    .prologue
    const/16 v11, 0x232c

    const/16 v10, 0x1b5a

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPendingRemedialtion:Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    iput-boolean v8, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;->isRemediationPending:Z

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPendingRemedialtion:Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;->url:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPendingRemedialtion:Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;->url:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPendingRemedialtion:Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;->credId:I

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    const-string v4, "HS20StateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remediation URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "credential ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v4, v6}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPPSMONode(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v2

    .local v2, "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    if-eqz v2, :cond_5

    :try_start_0
    iget-object v4, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->uri:Ljava/lang/String;

    :goto_0
    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    iget-object v4, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->SOAP:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    :cond_1
    :goto_1
    const-string v4, "HS20StateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PPSMO exists for the this subscription Remediation URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "credential type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "method type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyUpdate:Z

    const/16 v4, 0x1b5a

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHomeSPInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    move-result-object v3

    .local v3, "thisHomeSp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v4, v6}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSpIcon(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;

    move-result-object v1

    .local v1, "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    const/16 v6, 0x232c

    iget-object v7, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->friendlyName:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v4, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->name:Ljava/lang/String;

    :goto_2
    invoke-direct {p0, v6, v7, v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .end local v3    # "thisHomeSp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :goto_3
    const-string v4, "HS20StateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PPSMO exists for the this subscription Remediation URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "credential type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "method type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void

    :cond_2
    move-object v4, v5

    goto/16 :goto_0

    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->OMA_DM:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v4, 0x232e

    invoke-direct {p0, v4, v5, v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .restart local v3    # "thisHomeSp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :cond_4
    :try_start_2
    iget-object v4, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->iconURL:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .end local v1    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .end local v3    # "thisHomeSp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPendingRemedialtion:Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;->url:Ljava/lang/String;

    if-eqz v4, :cond_7

    const-string v4, "HS20StateMachine"

    const-string v5, "PPSMO doesnt exists, SIM credential"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPendingRemedialtion:Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;->methodType:I

    if-nez v4, :cond_6

    iput v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    :goto_5
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    iput-boolean v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyUpdate:Z

    invoke-virtual {p0, v10}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    const-string v4, "SIM Creddential"

    const-string v5, "sim.png"

    invoke-direct {p0, v11, v4, v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    iput v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    goto :goto_5

    :cond_7
    const/16 v4, 0x232e

    invoke-direct {p0, v4, v5, v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private installDevDetails()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .local v7, "values":Landroid/content/ContentValues;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/server/wifi/hs20/WifiHs20DBStore$DevDetailsEAP;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/server/wifi/hs20/WifiHs20DBStore$DevDetails;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/server/wifi/hs20/WifiHs20DBStore$DevDetailsSPCertificate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    const-string v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    iput-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->getEAPTypes()Ljava/lang/String;

    move-result-object v0

    .local v0, "EAPTypes":Ljava/lang/String;
    const-string v9, "HS20StateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EAP Types "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .local v6, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    const-string v9, "#"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "eapVal":[Ljava/lang/String;
    array-length v1, v3

    .local v1, "count":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-gt v4, v1, :cond_0

    const-string v9, "eap_id"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "S"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "eap_type"

    add-int/lit8 v10, v4, -0x1

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/server/wifi/hs20/WifiHs20DBStore$DevDetailsEAP;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    const-string v9, "HS20StateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "URI "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "HS20StateMachine"

    const-string v10, "Insertion successful"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v1    # "count":I
    .end local v3    # "eapVal":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    const-string v9, "dev_details_id"

    const-string v10, "org.wi-fi"

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "manufacturing_certificate"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "imsi"

    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "client_trigger_redirect_uri"

    const-string v10, "http://127.0.0.1:12345/"

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .local v8, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v8, :cond_1

    .local v5, "macAddress":Ljava/lang/String;
    :goto_1
    const-string v9, "imei_meid"

    const-string v10, "990000249182967"

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "wifi_macaddress"

    invoke-virtual {v7, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "launchbrowsertouri"

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "negotiateclientcerttls"

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "getcertificate"

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/server/wifi/hs20/WifiHs20DBStore$DevDetails;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    const-string v9, "HS20StateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "URI "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .end local v0    # "EAPTypes":Ljava/lang/String;
    .end local v5    # "macAddress":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v8    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_2
    return-void

    .restart local v0    # "EAPTypes":Ljava/lang/String;
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v8    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .end local v0    # "EAPTypes":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v8    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private isPolicyUpdate(I)Z
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "HS20StateMachine"

    const-string v5, "isPolicyUpdate "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v4, p1, v6}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-result-object v1

    .local v1, "policy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    if-nez v1, :cond_2

    const-string v4, "HS20StateMachine"

    const-string v5, "policy null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->restriction:Ljava/lang/String;

    const-string v5, "Unrestricted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    iget-object v4, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->restriction:Ljava/lang/String;

    const-string v5, "HomeSP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v4, p1, v6}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHomeSPInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    move-result-object v0

    .local v0, "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    if-nez v0, :cond_4

    const-string v3, "HS20StateMachine"

    const-string v4, "updatePolicyTimer homeSP coming NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v4, "HS20StateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePolicyTimer FQDN"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HS20StateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "umWifiConfig.isHS20AP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mWifiConfig.isHS20Home   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    if-ne v4, v3, :cond_0

    move v2, v3

    goto/16 :goto_0

    .end local v0    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    move v2, v3

    goto/16 :goto_0
.end method

.method private loadCredtoSupplicant()V
    .locals 20

    .prologue
    const-string v17, "HS20StateMachine"

    const-string v18, "loadCredtoSupplicant"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    .local v12, "interval":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getCredentialIds()Ljava/util/List;

    move-result-object v11

    .local v11, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotIds()Ljava/util/List;

    move-result-object v8

    .local v8, "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v11, :cond_0

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "count":I
    const/16 v16, -0xa

    .local v16, "random":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v3, :cond_3

    const-string v17, "HS20StateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "hotspot_id "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "credential ID"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .local v4, "credID":I
    const-string v17, "HS20StateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cred ID"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_2

    const-string v17, "HS20StateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setting the credential ID"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v18, v0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int v17, v17, v16

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setCredId(II)Z

    add-int/lit8 v16, v16, 0x1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .end local v4    # "credID":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getCredentialIds()Ljava/util/List;

    move-result-object v11

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subs_count:I

    if-eqz v11, :cond_0

    :try_start_0
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, "credential_id":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v5, v0, :cond_5

    const-string v17, "HS20StateMachine"

    const-string v18, "Not a valid credential"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->deleteppsMO(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v5    # "credential_id":I
    .end local v10    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "credential_id":I
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-result-object v6

    .local v6, "current_credential":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getMethodType(I)I

    move-result v13

    .local v13, "method_type":I
    const-string v17, "HS20StateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "credential_id "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "method_type"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPPSMONode(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v15

    .local v15, "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    if-eqz v15, :cond_6

    iget v0, v15, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->deleteppsMO(I)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v17, v0

    sget v18, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    add-int/lit8 v19, v18, 0x1

    sput v19, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setUserPriority(II)Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updateHs20Credential(I)I

    move-result v14

    .local v14, "new_credential_id":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v14, v0, :cond_7

    const-string v17, "HS20StateMachine"

    const-string v18, "Adding credentials to supplicant failed."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    move/from16 v18, v0

    const/16 v19, -0x3e7

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v13, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setCredentials(IIII)Z

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v14, v13, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setCredentials(IIII)Z

    const-string v17, "HS20StateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "new_credential_id "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private reloadCredentialsToSupplicant()V
    .locals 9

    .prologue
    const-string v6, "HS20StateMachine"

    const-string v7, "reloadCredentialsToSupplicant"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v6}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getCredentialIds()Ljava/util/List;

    move-result-object v2

    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "credential_id":I
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "HS20StateMachine"

    const-string v7, "Wi-Fi is not enabled. Aborting"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    if-ne v0, v6, :cond_3

    const-string v6, "HS20StateMachine"

    const-string v7, "Not a valid credential."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->deleteppsMO(I)V

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getMethodType(I)I

    move-result v3

    .local v3, "method_type":I
    const-string v6, "HS20StateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "credential_id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " method_type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPPSMONode(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v5

    .local v5, "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    if-eqz v5, :cond_4

    iget v6, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->removeHs20Cred(I)Z

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->deleteppsMO(I)V

    :goto_2
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->saveConfig()Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updateHs20Credential(I)I

    move-result v4

    .local v4, "new_credential_id":I
    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    if-ne v4, v6, :cond_5

    const-string v6, "HS20StateMachine"

    const-string v7, "Adding credentials to supplicant failed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    const/16 v8, -0x3e7

    invoke-virtual {v6, v7, v8, v3, v0}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setCredentials(IIII)Z

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    invoke-virtual {v6, v7, v4, v3, v0}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setCredentials(IIII)Z

    const-string v6, "HS20StateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new_credential_id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private resetVariables()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    iput-boolean v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyUpdate:Z

    iput v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    iput v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedAPSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->disconnectedFromSsid:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->update:Z

    return-void
.end method

.method private saveConfig()Z
    .locals 2

    .prologue
    const-string v0, "HS20StateMachine"

    const-string v1, "came to save config"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v0

    return v0
.end method

.method private sendPolicyUpdateMessage(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "method"    # I

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1b75

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "friendlyName"    # Ljava/lang/String;
    .param p3, "iconPath"    # Ljava/lang/String;

    .prologue
    const-string v1, "HS20StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProvisioningSate: state-> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " friendlyName-> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iconPath-> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "adroid.net.wifi.hs20.provisioning_state"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "hs20_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v1, "friendly_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_1

    const-string v1, "icon_path"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendSoapRequest(IIILjava/lang/String;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "requestReason"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, "message":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    iput p2, v1, Landroid/os/Message;->arg1:I

    iput p3, v1, Landroid/os/Message;->arg2:I

    iput-object p4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSubscriptionManagerMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setHs20Credential(ILcom/android/server/wifi/hs20/WifiHs20PPSMO;)Z
    .locals 26
    .param p1, "credId"    # I
    .param p2, "ppsmoObj"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v21, "HS20StateMachine"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "credential ID "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const/16 v21, 0x0

    :goto_0
    return v21

    :cond_0
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    .local v12, "newHomeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    .local v10, "newCred":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    .local v13, "newPolicy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    if-eqz v10, :cond_13

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->hs20AAAFP:Ljava/lang/String;

    .local v4, "fingerPrint":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->userPriority:I

    .local v14, "newSubcriptionPriority":I
    const/16 v16, 0x1

    .local v16, "phase2Cred":Z
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "SAMSUNG_CRED_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v16, 0x0

    :cond_1
    if-eqz v10, :cond_12

    const-string v21, "id"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    const-string v21, "HS20StateMachine"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "usernamePasswordObj is not null"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    const-string v21, "username"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_2
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->password:[B

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    const-string v21, "password"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/lang/String;

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->password:[B

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode([B)[B

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_3
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->eapType:I

    move/from16 v21, v0

    if-lez v21, :cond_4

    const-string v21, "eap_type"

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->eapType:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_4
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerEAPType:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    const-string v21, "phase1"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerEAPType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_5
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerMethod:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    const-string v21, "phase2"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\"auth="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerMethod:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "-"

    const-string v25, ""

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_6
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->realm:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->realm:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "samsung_passpoint.org"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    const-string v21, "realm"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->realm:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_7
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->imsi:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    const-string v21, "imsi"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->imsi:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_8
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->eapType:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    const-string v21, "eap_type"

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->eapType:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_9
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->imsi:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_b

    if-eqz v4, :cond_b

    :cond_a
    const-string v21, "ca_cert"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_b
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->privateKeyHash:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_d

    :cond_c
    const-string v21, "username"

    const-string v22, "\"HS20_CLIENT\""

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_d
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->privateKeyHash:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "keystore://"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_14

    const-string v21, "private_key"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->privateKeyHash:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    :goto_2
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certSHA256FingerPrint:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    if-nez v16, :cond_e

    const-string v21, "private_key_passwd"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certSHA256FingerPrint:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_e
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->clientcertHash:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->clientcertHash:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "client hash"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_f

    if-eqz v16, :cond_16

    :cond_f
    new-instance v6, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;-><init>(Landroid/content/Context;)V

    .local v6, "hs20PasswordGenerator":Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;
    invoke-virtual {v6}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->genPasswd1()Ljava/lang/String;

    move-result-object v11

    .local v11, "newCredkeyPass":Ljava/lang/String;
    const-string v21, "private_key_passwd"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    .end local v6    # "hs20PasswordGenerator":Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;
    .end local v11    # "newCredkeyPass":Ljava/lang/String;
    :cond_10
    :goto_3
    const-string v21, "update_identifier"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    move-object/from16 v21, v0

    if-eqz v21, :cond_11

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->imsi:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_12

    if-eqz v4, :cond_12

    :cond_11
    iget-boolean v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->checkAAAServerCertStatus:Z

    move/from16 v21, v0

    if-eqz v21, :cond_17

    const-string v21, "ocsp"

    const-string v22, "2"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_12
    :goto_4
    if-eqz v12, :cond_1f

    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_18

    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_18

    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;

    .local v9, "networkId":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    const-string v21, "home_ssid"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->ssid:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    const-string v21, "home_hessid"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->hessid:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .end local v4    # "fingerPrint":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "networkId":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    .end local v14    # "newSubcriptionPriority":I
    .end local v16    # "phase2Cred":Z
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_1

    .restart local v4    # "fingerPrint":Ljava/lang/String;
    .restart local v14    # "newSubcriptionPriority":I
    .restart local v16    # "phase2Cred":Z
    :cond_14
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->privateKeyHash:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "priv key hash"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_15

    if-nez v16, :cond_15

    const-string v21, "private_key"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->privateKeyHash:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_15
    const-string v21, "private_key"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\"/data/misc/wifi/hs20/HSClientCertESTKeyStore_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certID:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".p12"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_16
    const-string v21, "client_cert"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->clientcertHash:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_3

    :cond_17
    const-string v21, "ocsp"

    const-string v22, "1"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_4

    :cond_18
    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1a

    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_1a

    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    .local v5, "homeOI":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    const-string v22, "home_oi_list"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOI:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-boolean v0, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOIRequired:Z

    move/from16 v21, v0

    if-eqz v21, :cond_19

    const-string v21, "1"

    :goto_7
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    :cond_19
    const-string v21, "0"

    goto :goto_7

    .end local v5    # "homeOI":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_1a
    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1b

    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_1b

    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;

    .local v15, "otherPartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    const-string v21, "domain"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v15, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->fqdn:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_8

    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v15    # "otherPartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    :cond_1b
    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1e

    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "samsung_passpoint.org"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1e

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1c

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->imsi:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_1d

    :cond_1c
    if-eqz v16, :cond_1d

    const-string v21, "domain_suffix_match"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_1d
    const-string v21, "domain"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_1e
    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->roamingConsortium:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1f

    const-string v21, "roaming_consortium_list"

    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->roamingConsortium:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_1f
    if-eqz v13, :cond_26

    iget-object v0, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_21

    iget-object v0, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_21

    iget-object v0, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_21

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;

    .local v19, "prp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->fQDNMatch:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .local v18, "prefRoamPartner":[Ljava/lang/String;
    const-string v22, "roaming_partner"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\""

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v23, 0x0

    aget-object v23, v18, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v21, 0x1

    aget-object v21, v18, v21

    const-string v24, "exactMatch"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_20

    const-string v21, "1"

    :goto_a
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->priority:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->country:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "\""

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_9

    :cond_20
    const-string v21, "0"

    goto :goto_a

    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v18    # "prefRoamPartner":[Ljava/lang/String;
    .end local v19    # "prp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    :cond_21
    iget-object v0, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_23

    iget-object v0, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_23

    iget-object v0, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_23

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;

    .local v8, "mbht":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    iget-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->networkType:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_22

    const-string v21, "wan_dlink_bandwidth"

    iget v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->dlBandWidth:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_b

    :cond_22
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "min_dl_bandwidth_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->networkType:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    iget v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->dlBandWidth:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "min_ul_bandwidth_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->networkType:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    iget v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->ulBandWidth:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_b

    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "mbht":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    :cond_23
    iget-object v0, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_24

    iget-object v0, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_24

    iget-object v0, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_24

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;

    .local v20, "spExclusionList":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;
    const-string v21, "excluded_ssid"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->ssid:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_c

    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v20    # "spExclusionList":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;
    :cond_24
    iget-object v0, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_25

    iget-object v0, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_25

    iget-object v0, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_25

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;

    .local v17, "ppt":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;
    const-string v21, "req_conn_capab"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->ipProtocol:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->portNumber:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_d

    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v17    # "ppt":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;
    :cond_25
    const-string v21, "max_bss_load"

    iget v0, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->maximumBSSLoadValue:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_26
    const-string v21, "country"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    const-string v21, "temporary"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    const-string v21, "priority"

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    const/16 v21, 0x1

    goto/16 :goto_0
.end method

.method private setSecuredAccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .local v1, "su":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "su":Ljava/lang/Process;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startTimerNew(JII)V
    .locals 7
    .param p1, "interval"    # J
    .param p3, "id"    # I
    .param p4, "method"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer:[Ljava/util/Timer;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    aput-object v1, v0, p3

    const-string v0, "HS20StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startTimerNew intrval "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3c

    mul-long/2addr v0, p1

    const-wide/16 v4, 0x3e8

    mul-long v2, v0, v4

    .local v2, "milisec":J
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer:[Ljava/util/Timer;

    aget-object v0, v0, p3

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$4;

    invoke-direct {v1, p0, p3, p4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$4;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;II)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private startTimers()V
    .locals 7

    .prologue
    const-string v4, "HS20StateMachine"

    const-string v5, " startTimers"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v4}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getCredentialIds()Ljava/util/List;

    move-result-object v3

    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_1

    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "id":I
    const-string v4, "HS20StateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startTimers credential id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v6, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getMethodType(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    if-ne v2, v4, :cond_2

    const-string v4, "HS20StateMachine"

    const-string v5, "startTimers Not a valid credential"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "id":I
    :cond_2
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updatePolicyTimerForThisCredential(I)V

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v4, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getMethodType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updateExpirationTimerForThisCredential(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private stoptimers()V
    .locals 8

    .prologue
    const-string v5, "HS20StateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " stoptimers "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ll:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " policyTimer_count "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer_count:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer_count:I

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getCredentialIds()Ljava/util/List;

    move-result-object v4

    .local v4, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer_count:I

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "id":I
    const-string v5, "HS20StateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stoptimers credential id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    const-string v5, "HS20StateMachine"

    const-string v6, "stoptimers Not a valid credential"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":I
    .end local v4    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "id":I
    .restart local v4    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer:[Ljava/util/Timer;

    aget-object v5, v5, v3

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer:[Ljava/util/Timer;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":I
    .end local v4    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ll:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ll:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/WifiHs20Timer;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20Timer;->cred_id:I

    if-ltz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ll:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/WifiHs20Timer;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20Timer;->hs20_timer:Ljava/util/Timer;

    if-eqz v5, :cond_3

    const-string v5, "HS20StateMachine"

    const-string v6, "cancelling expiration timer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ll:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/WifiHs20Timer;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20Timer;->hs20_timer:Ljava/util/Timer;

    invoke-virtual {v5}, Ljava/util/Timer;->cancel()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ll:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private updateExpirationTimerForThisCredential(I)V
    .locals 14
    .param p1, "new_credential_id"    # I

    .prologue
    const-wide/16 v12, 0x0

    .local v12, "interval":J
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-result-object v8

    .local v8, "current_credential":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    iget-object v7, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->creationDate:Ljava/lang/String;

    .local v7, "creation":Ljava/lang/String;
    iget-object v10, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->expirationDate:Ljava/lang/String;

    .local v10, "expiration":Ljava/lang/String;
    const-string v1, "HS20StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " updateExpirationTimerForThisCredential new credential_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "creation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "expiration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_1

    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x8

    const/16 v4, 0xa

    invoke-virtual {v10, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xb

    const/16 v5, 0xd

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xe

    const/16 v6, 0x10

    invoke-virtual {v10, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x11

    const/16 v11, 0x13

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .local v0, "ExpirationDate":Ljava/util/GregorianCalendar;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    const-string v1, "HS20StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Current time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expiry time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Time zone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    sub-long v12, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v1, v12, v2

    if-gez v1, :cond_0

    const-wide/16 v12, 0x0

    :cond_0
    const-string v1, "HS20StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " interval"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20Timer;

    invoke-direct {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20Timer;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->expirationTimer:Lcom/android/server/wifi/hs20/WifiHs20Timer;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ll:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->expirationTimer:Lcom/android/server/wifi/hs20/WifiHs20Timer;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->expirationTimer:Lcom/android/server/wifi/hs20/WifiHs20Timer;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20Timer;->hs20_timer:Ljava/util/Timer;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;I)V

    invoke-virtual {v1, v2, v12, v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .end local v0    # "ExpirationDate":Ljava/util/GregorianCalendar;
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    const-string v1, "HS20StateMachine"

    const-string v2, " updateExpirationTimerForThisCredential Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updatePolicyTimerForThisCredential(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-result-object v3

    .local v3, "policy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    if-nez v3, :cond_0

    const-string v4, "HS20StateMachine"

    const-string v5, "policy null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-wide v0, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateInterval:J

    .local v0, "interval":J
    const/4 v2, -0x1

    .local v2, "method":I
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->SOAP:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    :cond_1
    :goto_0
    const-string v4, "HS20StateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClientInitiated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " method_type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    .end local v0    # "interval":J
    .end local v2    # "method":I
    :cond_2
    :goto_1
    return-void

    .restart local v0    # "interval":J
    .restart local v2    # "method":I
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->OMA_DM:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const-string v4, "HS20StateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePolicyTimer starting timer count for id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer_count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->startTimerNew(JII)V

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer_count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer_count:I

    goto :goto_1
.end method

.method private updateSubsciptionTimer()V
    .locals 18

    .prologue
    const-string v2, "HS20StateMachine"

    const-string v3, "updateSubsciptionTimer "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getCredentialIds()Ljava/util/List;

    move-result-object v12

    .local v12, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subs_count:I

    if-eqz v12, :cond_1

    :try_start_0
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .local v8, "credential_id":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    if-ne v8, v2, :cond_2

    const-string v2, "HS20StateMachine"

    const-string v3, "Not a valid credential"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v8    # "credential_id":I
    .end local v11    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .restart local v8    # "credential_id":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSubscriptionUpdateInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    move-result-object v9

    .local v9, "current_subscription":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    if-nez v9, :cond_3

    const-string v2, "HS20StateMachine"

    const-string v3, "updateSubsciptionTimer : No current subscriptions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-wide v14, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateInterval:J

    .local v14, "interval":J
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-eqz v2, :cond_1

    if-eqz v9, :cond_0

    iget-object v2, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    const-string v3, "ClientInitiated"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->restriction:Ljava/lang/String;

    const-string v3, "Unrestricted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->restriction:Ljava/lang/String;

    const-string v3, "HomeSP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    :cond_4
    iget-object v2, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->restriction:Ljava/lang/String;

    const-string v3, "Roamingpartner"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscriptionTimer:[Ljava/util/Timer;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subs_count:I

    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscriptionTimer:[Ljava/util/Timer;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subs_count:I

    aget-object v2, v2, v3

    new-instance v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$3;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;I)V

    const-wide/16 v4, 0x3c

    mul-long/2addr v4, v14

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v6, v14

    const-wide/16 v16, 0x3e8

    mul-long v6, v6, v16

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subs_count:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subs_count:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "credId"    # I
    .param p2, "credElement"    # Ljava/lang/String;
    .param p3, "credElementValue"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HS20StateMachine"

    const-string v2, "Updating Cred Element error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public cancelSubscription()V
    .locals 2

    .prologue
    const/16 v1, 0x1b65

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.CANCEL_TRANS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public checkifOSUAP()Z
    .locals 3

    .prologue
    const-string v0, "HS20StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkifOSUAP  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedAPSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedAPSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearHs20()Z
    .locals 3

    .prologue
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HS20StateMachine"

    const-string v2, "Updating Cred Element error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method getState()Lcom/android/internal/util/IState;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method public isSubscrptionInProgress()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->getState()Lcom/android/internal/util/IState;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->getState()Lcom/android/internal/util/IState;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DisabledState;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->getState()Lcom/android/internal/util/IState;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingOSUSP;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeHs20Cred(I)Z
    .locals 4
    .param p1, "credID"    # I

    .prologue
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xce

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HS20StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove credential("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setPermission()V
    .locals 6

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/misc/wifi/hs20"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "cacheDir":Ljava/io/File;
    const-string v1, ""

    .local v1, "command":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const-string v1, "chmod 770"

    const-string v4, "/data/misc/wifi/hs20"

    invoke-direct {p0, v4, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setSecuredAccess(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "HS20StateMachine"

    const-string v5, "successfully changed the permission of hs20 folder"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "chown system:wifi "

    const-string v4, "/data/misc/wifi/hs20"

    invoke-direct {p0, v4, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setSecuredAccess(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "HS20StateMachine"

    const-string v5, "Changed the owner and group for hs20"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    const-string v4, "/data/misc/wifi/hs20/HotspotDebug"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "debugDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-string v1, "chmod 770"

    const-string v4, "/data/misc/wifi/hs20/HotspotDebug"

    invoke-direct {p0, v4, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setSecuredAccess(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "HS20StateMachine"

    const-string v5, "successfully changed the permission of HotspotDebug folder"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "debugDir":Ljava/io/File;
    :goto_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/hs20/icons"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "iconDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    const-string v1, "chmod -R 755"

    const-string v4, "/data/hs20"

    invoke-direct {p0, v4, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setSecuredAccess(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "HS20StateMachine"

    const-string v5, "successfully changed the permission of /data/hs20/ folder"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "chown wifi:system"

    const-string v4, "/data/hs20"

    invoke-direct {p0, v4, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setSecuredAccess(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "/data/hs20/icons"

    invoke-direct {p0, v4, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setSecuredAccess(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .end local v3    # "iconDir":Ljava/io/File;
    :cond_2
    const-string v4, "HS20StateMachine"

    const-string v5, "No change required for hs20 folder"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startOSUProcess(Landroid/net/wifi/hs20/WifiHs20OsuProvider;)V
    .locals 6
    .param p1, "selectedOsuProvider"    # Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    .prologue
    const/4 v5, 0x1

    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .local v1, "osuApConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->getOsuSsid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->getOsuNAI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    .local v0, "ec":Landroid/net/wifi/WifiEnterpriseConfig;
    const-string v2, "osen"

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    invoke-virtual {p1}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->getOsuNAI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .end local v0    # "ec":Landroid/net/wifi/WifiEnterpriseConfig;
    :goto_0
    const-string v2, "HS20StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startOSUProcess "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedAPSSID:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v5, v2, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:Z

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v5, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const/16 v2, 0x1b6c

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    const/16 v2, 0x2329

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->getFriendlyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->getOsuIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method public startPolicyUpdate(Ljava/lang/String;)V
    .locals 6
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getCredentialIds()Ljava/util/List;

    move-result-object v2

    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "HS20StateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ids.size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "credential_id":I
    const-string v3, "HS20StateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "credential_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    if-ne v0, v3, :cond_1

    const-string v3, "HS20StateMachine"

    const-string v4, "Not a valid credential"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHomeSPInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->startPolicyUpdateForCredential(I)V

    goto :goto_0

    .end local v0    # "credential_id":I
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public startPolicyUpdateForCredential(I)V
    .locals 9
    .param p1, "cred_id"    # I

    .prologue
    const/16 v8, 0x2331

    const/4 v7, 0x0

    const-string v4, "HS20StateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HS20_TRIGGER_POLICY_UPDATE SSID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v4, "HS20StateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HS20_TRIGGER_POLICY_UPDATE wifi configuration -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    if-eq p1, v4, :cond_7

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer:[Ljava/util/Timer;

    aget-object v4, v4, p1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer:[Ljava/util/Timer;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v4, p1, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-result-object v2

    .local v2, "policy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    if-nez v2, :cond_1

    const-string v4, "HS20StateMachine"

    const-string v5, "policy null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v2, :cond_6

    iget-object v4, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    if-eqz v4, :cond_6

    const/4 v1, -0x1

    .local v1, "method":I
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->SOAP:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    :cond_2
    :goto_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->isPolicyUpdate(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendPolicyUpdateMessage(II)V

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v4, p1, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHomeSPInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    move-result-object v3

    .local v3, "thisHomeSp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSpIcon(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;

    move-result-object v0

    .local v0, "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    const/16 v5, 0x232f

    iget-object v6, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->friendlyName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v4, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->name:Ljava/lang/String;

    :goto_1
    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .end local v0    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .end local v1    # "method":I
    .end local v3    # "thisHomeSp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updatePolicyTimerForThisCredential(I)V

    .end local v2    # "policy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    :goto_3
    return-void

    .restart local v1    # "method":I
    .restart local v2    # "policy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->OMA_DM:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .restart local v0    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .restart local v3    # "thisHomeSp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :cond_4
    iget-object v4, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->iconURL:Ljava/lang/String;

    goto :goto_1

    .end local v0    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .end local v3    # "thisHomeSp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :cond_5
    invoke-direct {p0, v8, v7, v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v1    # "method":I
    :cond_6
    invoke-direct {p0, v8, v7, v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v2    # "policy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    :cond_7
    invoke-direct {p0, v8, v7, v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string v4, "HS20StateMachine"

    const-string v5, "wifiinfo SSID is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8, v7, v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public syncDeleteSubscription(I)Z
    .locals 5
    .param p1, "hsId"    # I

    .prologue
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSpUpdateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v1, "HS20StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncDeleteSubscription hsId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPPSMONodeHotspotID(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v0

    .local v0, "tmpPPSMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialID:I

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->removeHs20Cred(I)Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->deleteSubscription(I)V

    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .end local v0    # "tmpPPSMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public syncEnableSubscription(IZ)Z
    .locals 7
    .param p1, "hsId"    # I
    .param p2, "enable"    # Z

    .prologue
    sget-object v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSpUpdateLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string v3, "HS20StateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncEnableSubscription hsId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getCredentialId(I)I

    move-result v3

    const/4 v5, -0x1

    if-ge v3, v5, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    invoke-virtual {v3, p1, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setCredId(II)Z

    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addHs20Credential()I

    move-result v2

    .local v2, "new_credential_id":I
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setCredId(II)Z

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    sget v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    invoke-virtual {v3, v2, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setUserPriority(II)Z

    const-string v3, "HS20StateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new_credential_id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .local v1, "mInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x2a

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "HS20StateMachine"

    const-string v5, "SEC_COMMAND_ID_HS20_INTERWORKING_SELECT command error"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "mInfo":Landroid/net/wifi/WifiInfo;
    .end local v2    # "new_credential_id":I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->enableSubscription(IZ)Z

    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->saveConfig()Z

    const/4 v3, 0x0

    monitor-exit v4

    return v3

    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getCredentialId(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->removeHs20Cred(I)Z

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    const/4 v5, -0x2

    invoke-virtual {v3, p1, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setCredId(II)Z

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public syncGetSubscribedSpList()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hs20/WifiHs20SubscribedSp;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v22, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSpUpdateLock:Ljava/lang/Object;

    monitor-enter v22

    :try_start_0
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .local v20, "newSSList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/hs20/WifiHs20SubscribedSp;>;"
    const-string v3, "HS20StateMachine"

    const-string v4, "syncGetSubscribedSpList "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotIds()Ljava/util/List;

    move-result-object v19

    .local v19, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v19, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    const-string v3, "HS20StateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PPSMO Count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "hsId":I
    const-string v3, "HS20StateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hsId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    if-ne v2, v3, :cond_0

    const-string v3, "HS20StateMachine"

    const-string v4, "Not a valid credential"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "hsId":I
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v20    # "newSSList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/hs20/WifiHs20SubscribedSp;>;"
    :catchall_0
    move-exception v3

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "hsId":I
    .restart local v17    # "i$":Ljava/util/Iterator;
    .restart local v19    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v20    # "newSSList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/hs20/WifiHs20SubscribedSp;>;"
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPPSMONodeHotspotID(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v21

    .local v21, "tmpPPSMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSpIcon(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;

    move-result-object v18

    .local v18, "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    if-eqz v21, :cond_1

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    if-eqz v3, :cond_2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->password:[B

    if-eqz v3, :cond_2

    sget-object v16, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;->TTLS:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    .local v16, "credType":Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;
    :goto_1
    new-instance v1, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getEnableSubscription(I)Z

    move-result v3

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialID:I

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->realm:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v7, v7, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->friendlyName:Ljava/lang/String;

    if-nez v7, :cond_5

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v7, v7, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    :goto_2
    if-eqz v18, :cond_6

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->name:Ljava/lang/String;

    :goto_3
    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v9, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->creationDate:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v10, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->expirationDate:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v11, v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->typeOfSubscription:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->dataLimit:I

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v13, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v13, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->timeLimit:I

    move-object/from16 v0, v21

    iget v14, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->userPriority:I

    move-object/from16 v0, v21

    iget v15, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    invoke-direct/range {v1 .. v16}, Landroid/net/wifi/hs20/WifiHs20SubscribedSp;-><init>(IZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILandroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;)V

    .local v1, "tmpSS":Landroid/net/wifi/hs20/WifiHs20SubscribedSp;
    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "HS20StateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SS Added: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "tmpSS":Landroid/net/wifi/hs20/WifiHs20SubscribedSp;
    .end local v16    # "credType":Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "tmpSS":Landroid/net/wifi/hs20/WifiHs20SubscribedSp;
    const/16 v21, 0x0

    const/16 v18, 0x0

    goto/16 :goto_0

    .end local v1    # "tmpSS":Landroid/net/wifi/hs20/WifiHs20SubscribedSp;
    :cond_2
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    if-eqz v3, :cond_3

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certificateType:Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v16, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;->TLS:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    .restart local v16    # "credType":Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;
    goto/16 :goto_1

    .end local v16    # "credType":Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;
    :cond_3
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    if-eqz v3, :cond_4

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_4

    sget-object v16, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;->SIM:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    .restart local v16    # "credType":Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;
    goto/16 :goto_1

    .end local v16    # "credType":Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;
    :cond_4
    sget-object v16, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;->UNKNOWN:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    .restart local v16    # "credType":Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;
    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v7, v7, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->friendlyName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_3

    .end local v2    # "hsId":I
    .end local v16    # "credType":Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .end local v21    # "tmpPPSMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :cond_7
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v20
.end method

.method public syncLoadCred(Ljava/io/File;)I
    .locals 4
    .param p1, "credFile"    # Ljava/io/File;

    .prologue
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Ljava/lang/String;Landroid/content/Context;)V

    .local v0, "parser":Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;
    invoke-virtual {v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->processLineByLine()I

    move-result v1

    .local v1, "ret":I
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->reloadCredentialsToSupplicant()V

    :cond_0
    return v1
.end method

.method public syncLoadCred(Ljava/lang/String;)I
    .locals 4
    .param p1, "credential"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/content/Context;)V

    .local v0, "parser":Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->parseCredential(Ljava/lang/String;)I

    move-result v1

    .local v1, "ret":I
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->reloadCredentialsToSupplicant()V

    :cond_0
    return v1
.end method

.method public syncUpdateCredPriorities(Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    sget-object v6, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSpUpdateLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    const-string v5, "HS20StateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentCredPriority: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "updated_hsids"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .local v4, "newHsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v5, 0x7fffffff

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v5, v7

    sget v7, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    if-ge v5, v7, :cond_0

    const/high16 v5, -0x80000000

    sput v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "hsId":I
    const-string v5, "HS20StateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HsId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    invoke-virtual {v5, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setUserPriority(Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v5, v1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getCredentialId(I)I

    move-result v5

    const-string v7, "priority"

    sget v8, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    sget v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v1    # "hsId":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .local v3, "mInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-ne v5, v9, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    monitor-exit v6

    return v9

    .end local v2    # "i":I
    .end local v3    # "mInfo":Landroid/net/wifi/WifiInfo;
    .end local v4    # "newHsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public systemServiceReady()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mTeleManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method public updateEapType(II)V
    .locals 1
    .param p1, "credId"    # I
    .param p2, "eapType"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setEAPType(II)Z

    return-void
.end method

.method public updateHs20Credential(I)I
    .locals 10
    .param p1, "credId"    # I

    .prologue
    const/4 v6, -0x1

    new-instance v3, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    .local v3, "mDbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-virtual {v3, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPPSMONode(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v5

    .local v5, "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    if-nez v5, :cond_1

    const-string v7, "HS20StateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PPMSO is null for cred id :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    :cond_0
    :goto_0
    return v4

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->removeHs20Cred(I)Z

    move-result v2

    .local v2, "isSuccess":Z
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "HS20StateMachine"

    const-string v8, "Wi-Fi is not enabled. Aborting ADD_CRED command"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .local v0, "addCredMsg":Landroid/os/Message;
    const/16 v7, 0xd2

    iput v7, v0, Landroid/os/Message;->what:I

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v4

    .local v4, "newCredId":I
    const-string v7, "HS20StateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "credID("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") returned from supplicant"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v4, v6, :cond_0

    sput v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    sget v7, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    iput v7, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->userPriority:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setHs20Credential(ILcom/android/server/wifi/hs20/WifiHs20PPSMO;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "addCredMsg":Landroid/os/Message;
    .end local v2    # "isSuccess":Z
    .end local v4    # "newCredId":I
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    move v4, v6

    goto :goto_0
.end method
