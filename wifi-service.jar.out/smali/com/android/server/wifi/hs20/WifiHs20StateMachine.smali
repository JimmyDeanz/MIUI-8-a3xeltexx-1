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
    .line 329
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->RemediationURIFromFrame:Ljava/net/URI;

    .line 409
    const/4 v0, 0x1

    sput v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    .line 457
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

    .line 484
    const-string v1, "HS20StateMachine"

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mFirstTime:Z

    .line 220
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DefaultState;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 222
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPrevState:Lcom/android/internal/util/State;

    .line 228
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DisabledState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DisabledState;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDisabledState:Lcom/android/internal/util/State;

    .line 234
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EnablingState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EnablingState;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mEnablingState:Lcom/android/internal/util/State;

    .line 245
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DiscoveringState;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDiscoveringState:Lcom/android/internal/util/State;

    .line 252
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingOSUSP;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingOSUSP;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSelectingOSUSPState:Lcom/android/internal/util/State;

    .line 254
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mConnectingOSUSPState:Lcom/android/internal/util/State;

    .line 261
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$EstablishingTLS;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mEstablishingTLSState:Lcom/android/internal/util/State;

    .line 268
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$RenegotiatingTLS;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$RenegotiatingTLS;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mRenegotiatingTLSState:Lcom/android/internal/util/State;

    .line 274
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSelectingSubscriptionState:Lcom/android/internal/util/State;

    .line 280
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mModifyingMO:Lcom/android/internal/util/State;

    .line 287
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReleasingTLS;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;

    .line 290
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$CertEnrollment;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mCertEnrollmentState:Lcom/android/internal/util/State;

    .line 297
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$VerifyingAAA;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$VerifyingAAA;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mVerifyingAAAState:Lcom/android/internal/util/State;

    .line 303
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DisablingState;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DisablingState;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDisablingState:Lcom/android/internal/util/State;

    .line 323
    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    .line 331
    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    .line 343
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->DEFAULT_OPERATOR_LENGTH:I

    .line 345
    const-string v1, "8010002796"

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->TTA_ADDITIONAL_SIM_VALUE:Ljava/lang/String;

    .line 347
    const-string v1, "001010123456789"

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->DEFAULT_IMSI:Ljava/lang/String;

    .line 349
    const-string v1, "/data/misc/wifi/credBrowser.conf"

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->phaseConfPath:Ljava/lang/String;

    .line 378
    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->cmd:I

    .line 407
    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    .line 421
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->disconnectedFromSsid:Ljava/lang/String;

    .line 429
    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->current_subscription:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    .line 431
    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->current_policy:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    .line 439
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ll:Ljava/util/LinkedList;

    .line 443
    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    .line 445
    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer_count:I

    .line 447
    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ic:Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;

    .line 449
    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subs_count:I

    .line 451
    iput-boolean v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->update:Z

    .line 453
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->CERTIFICATIION_ADDED_DELAY:I

    .line 469
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPendingRemedialtion:Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    .line 471
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mCurrentDetailedState:Landroid/net/NetworkInfo$DetailedState;

    .line 473
    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->DEFAULT_RETURN_VALUE:I

    .line 475
    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    .line 477
    const-string v1, "SPP-ClientInitiated"

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->SOAP:Ljava/lang/String;

    .line 479
    const-string v1, "OMA-DM-ClientInitiated"

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->OMA_DM:Ljava/lang/String;

    .line 481
    iput-boolean v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mIsBootComplete:Z

    .line 485
    const-string v1, "HS20StateMachine"

    const-string v2, "HS20StateMachine  object being created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    .line 487
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ic:Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;

    .line 488
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 489
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    const-string v1, "android.net.wifi.HS20_REMEDIATION_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 493
    const-string v1, "android.net.wifi.HS20_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 494
    const-string v1, "android.net.wifi.HS20_OSU_SELECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 495
    const-string v1, "android.net.wifi.hs20.INSTALL_CRED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    const-string v1, "android.net.wifi.hs20.EAP_TYPE_FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 497
    const-string v1, "android.net.wifi.hs20.TEST_START_OSU_PROCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 498
    const-string v1, "android.net.wifi.hs20.TEST_GEN_CRED_CONF_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 499
    const-string v1, "android.net.wifi.hs20.TEST_TRIGGER_POLICY_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    const-string v1, "android.net.wifi.hs20.TEST_TRIGGER_INSTALL_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    const-string v1, "android.net.wifi.hs20.TEST_START_OSU_PROCESS_NOSIGMA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    const-string v1, "android.net.wifi.HS20_EAP_TYPE_FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setPermission()V

    .line 504
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$1;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 669
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 670
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDisabledState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 671
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mEnablingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 672
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDiscoveringState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 673
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSelectingOSUSPState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDiscoveringState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 674
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mConnectingOSUSPState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 675
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mEstablishingTLSState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 676
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mRenegotiatingTLSState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mEstablishingTLSState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 677
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSelectingSubscriptionState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 678
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mModifyingMO:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 679
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mVerifyingAAAState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mModifyingMO:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 680
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 681
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mCertEnrollmentState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 682
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDisablingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 684
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDiscoveringState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 685
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setLogRecSize(I)V

    .line 687
    new-array v1, v5, [Ljava/util/Timer;

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer:[Ljava/util/Timer;

    .line 688
    new-array v1, v5, [Ljava/util/Timer;

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscriptionTimer:[Ljava/util/Timer;

    .line 689
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;-><init>(Landroid/content/Context;Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSubscriptionManager:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    .line 690
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSubscriptionManager:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    invoke-virtual {v1}, Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSubscriptionManagerMessenger:Landroid/os/Messenger;

    .line 691
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    .line 694
    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->start()V

    .line 695
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)[Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer:[Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->resetVariables()V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mTeleManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->SOAP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->OMA_DM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 110
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
    .line 110
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
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updatePolicyTimerForThisCredential(I)V

    return-void
.end method

.method static synthetic access$1802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 110
    sput p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    return p0
.end method

.method static synthetic access$1808()I
    .locals 2

    .prologue
    .line 110
    sget v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mIsBootComplete:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mIsBootComplete:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedAPSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->reloadCredentialsToSupplicant()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDiscoveringState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDisablingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mEstablishingTLSState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ic:Lcom/android/server/wifi/hs20/WifiHs20InstallCertificate;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mFirstTime:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mFirstTime:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->CERTIFICATIION_ADDED_DELAY:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSelectingOSUSPState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDisabledState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->handleRemediationRequest()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->current_subscription:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSubscriptionManagerMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mConnectingOSUSPState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSubscriptionManager:Lcom/android/server/wifi/hs20/WifiHs20SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
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
    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendSoapRequest(IIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sigmaSpFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSelectingSubscriptionState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sigmaSpFriendlyName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mCertEnrollmentState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mRenegotiatingTLSState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mModifyingMO:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/hs20/WifiHs20OsuProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->executeCommand(II)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/net/wifi/hs20/WifiHs20OsuProvider;)Landroid/net/wifi/hs20/WifiHs20OsuProvider;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mVerifyingAAAState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->loadCredtoSupplicant()V

    return-void
.end method

.method private addHs20Credential()I
    .locals 11

    .prologue
    const/4 v9, -0x1

    .line 2973
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v1, v10}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    .line 2974
    .local v1, "mDbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-virtual {v1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPPSMONode(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v8

    .line 2975
    .local v8, "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    if-nez v8, :cond_1

    move v5, v9

    .line 2992
    :cond_0
    :goto_0
    return v5

    .line 2978
    :cond_1
    iget-object v4, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    .line 2979
    .local v4, "newCred":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    iget-object v7, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    .line 2980
    .local v7, "newPolicy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    iget-object v6, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    .line 2981
    .local v6, "newHomeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    iget v2, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    .line 2982
    .local v2, "mUpdateIdentifier":I
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 2983
    .local v3, "msg":Landroid/os/Message;
    const/16 v10, 0xd2

    iput v10, v3, Landroid/os/Message;->what:I

    .line 2985
    :try_start_0
    iget-object v10, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v5

    .line 2986
    .local v5, "newCredId":I
    if-eq v5, v9, :cond_0

    .line 2987
    invoke-direct {p0, v5, v8}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setHs20Credential(ILcom/android/server/wifi/hs20/WifiHs20PPSMO;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2989
    .end local v5    # "newCredId":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    move v5, v9

    .line 2990
    goto :goto_0
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x22

    .line 698
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 699
    const-string p0, ""

    .line 705
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "lastPos":I
    :cond_0
    :goto_0
    return-object p0

    .line 701
    .end local v0    # "lastPos":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 702
    .restart local v0    # "lastPos":I
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 705
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
    .line 2372
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2373
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x4e25

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2374
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 2375
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 2377
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSubscriptionManagerMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2381
    :goto_0
    return-void

    .line 2378
    :catch_0
    move-exception v0

    .line 2379
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getEAPTypes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2946
    const-string v0, "23#50#25#18#13#21"

    .line 2949
    .local v0, "eapTypes":Ljava/lang/String;
    return-object v0
.end method

.method private getIMSI()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2953
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2955
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 2956
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

    .line 2957
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2958
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

    .line 2959
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 2961
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->TTA_ADDITIONAL_SIM_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2963
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

    .line 3280
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPendingRemedialtion:Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    iput-boolean v8, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;->isRemediationPending:Z

    .line 3281
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPendingRemedialtion:Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;->url:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 3282
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPendingRemedialtion:Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;->url:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    .line 3284
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPendingRemedialtion:Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;->credId:I

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    .line 3285
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

    .line 3286
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v4, v6}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPPSMONode(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v2

    .line 3287
    .local v2, "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    if-eqz v2, :cond_5

    .line 3289
    :try_start_0
    iget-object v4, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->uri:Ljava/lang/String;

    :goto_0
    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    .line 3292
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    .line 3293
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    .line 3294
    iget-object v4, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    if-eqz v4, :cond_1

    .line 3295
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->SOAP:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3296
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    .line 3301
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

    .line 3303
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyUpdate:Z

    .line 3304
    const/16 v4, 0x1b5a

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    .line 3305
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHomeSPInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    move-result-object v3

    .line 3306
    .local v3, "thisHomeSp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v4, v6}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSpIcon(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;

    move-result-object v1

    .line 3307
    .local v1, "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    const/16 v6, 0x232c

    iget-object v7, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->friendlyName:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v4, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->name:Ljava/lang/String;

    :goto_2
    invoke-direct {p0, v6, v7, v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3314
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

    .line 3335
    :goto_4
    return-void

    :cond_2
    move-object v4, v5

    .line 3289
    goto/16 :goto_0

    .line 3297
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->OMA_DM:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v6, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3298
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 3309
    :catch_0
    move-exception v0

    .line 3310
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3311
    const/16 v4, 0x232e

    invoke-direct {p0, v4, v5, v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3307
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .restart local v3    # "thisHomeSp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :cond_4
    :try_start_2
    iget-object v4, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->iconURL:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 3317
    .end local v1    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .end local v3    # "thisHomeSp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPendingRemedialtion:Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;->url:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 3318
    const-string v4, "HS20StateMachine"

    const-string v5, "PPSMO doesnt exists, SIM credential"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3319
    iput v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    .line 3320
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mPendingRemedialtion:Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$PendingRemedialtion;->methodType:I

    if-nez v4, :cond_6

    .line 3321
    iput v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    .line 3325
    :goto_5
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    .line 3326
    iput-boolean v8, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyUpdate:Z

    .line 3327
    invoke-virtual {p0, v10}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    .line 3328
    const-string v4, "SIM Creddential"

    const-string v5, "sim.png"

    invoke-direct {p0, v11, v4, v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 3323
    :cond_6
    iput v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    goto :goto_5

    .line 3331
    :cond_7
    const/16 v4, 0x232e

    invoke-direct {p0, v4, v5, v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private installDevDetails()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 2896
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2898
    .local v7, "values":Landroid/content/ContentValues;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/server/wifi/hs20/WifiHs20DBStore$DevDetailsEAP;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2900
    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/server/wifi/hs20/WifiHs20DBStore$DevDetails;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2902
    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/server/wifi/hs20/WifiHs20DBStore$DevDetailsSPCertificate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2905
    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    const-string v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    iput-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2906
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->getEAPTypes()Ljava/lang/String;

    move-result-object v0

    .line 2907
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

    .line 2908
    const/4 v6, 0x0

    .line 2909
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 2910
    const-string v9, "#"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2911
    .local v3, "eapVal":[Ljava/lang/String;
    array-length v1, v3

    .line 2912
    .local v1, "count":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-gt v4, v1, :cond_0

    .line 2913
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

    .line 2914
    const-string v9, "eap_type"

    add-int/lit8 v10, v4, -0x1

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2916
    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/server/wifi/hs20/WifiHs20DBStore$DevDetailsEAP;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 2918
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

    .line 2919
    const-string v9, "HS20StateMachine"

    const-string v10, "Insertion successful"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 2912
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2923
    .end local v1    # "count":I
    .end local v3    # "eapVal":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 2924
    const-string v9, "dev_details_id"

    const-string v10, "org.wi-fi"

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2925
    const-string v9, "manufacturing_certificate"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2926
    const-string v9, "imsi"

    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2927
    const-string v9, "client_trigger_redirect_uri"

    const-string v10, "http://127.0.0.1:12345/"

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2929
    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 2930
    .local v8, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v8, :cond_1

    .line 2931
    .local v5, "macAddress":Ljava/lang/String;
    :goto_1
    const-string v9, "imei_meid"

    const-string v10, "990000249182967"

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2932
    const-string v9, "wifi_macaddress"

    invoke-virtual {v7, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2933
    const-string v9, "launchbrowsertouri"

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2934
    const-string v9, "negotiateclientcerttls"

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2935
    const-string v9, "getcertificate"

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/server/wifi/hs20/WifiHs20DBStore$DevDetails;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 2938
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

    .line 2939
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 2943
    .end local v0    # "EAPTypes":Ljava/lang/String;
    .end local v5    # "macAddress":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v8    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_2
    return-void

    .line 2930
    .restart local v0    # "EAPTypes":Ljava/lang/String;
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v8    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 2940
    .end local v0    # "EAPTypes":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v8    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :catch_0
    move-exception v2

    .line 2941
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

    .line 2251
    const-string v4, "HS20StateMachine"

    const-string v5, "isPolicyUpdate "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
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

    .line 2254
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2256
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v4, :cond_1

    .line 2287
    :cond_0
    :goto_0
    return v2

    .line 2258
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v4, p1, v6}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-result-object v1

    .line 2259
    .local v1, "policy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    if-nez v1, :cond_2

    .line 2260
    const-string v4, "HS20StateMachine"

    const-string v5, "policy null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    :cond_2
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    if-eqz v4, :cond_0

    .line 2262
    iget-object v4, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->restriction:Ljava/lang/String;

    const-string v5, "Unrestricted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 2263
    goto :goto_0

    .line 2264
    :cond_3
    iget-object v4, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->restriction:Ljava/lang/String;

    const-string v5, "HomeSP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2265
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v4, p1, v6}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHomeSPInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    move-result-object v0

    .line 2266
    .local v0, "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    if-nez v0, :cond_4

    .line 2267
    const-string v3, "HS20StateMachine"

    const-string v4, "updatePolicyTimer homeSP coming NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2270
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

    .line 2271
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

    .line 2273
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 2275
    goto/16 :goto_0

    .line 2279
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

    .line 2281
    goto/16 :goto_0
.end method

.method private loadCredtoSupplicant()V
    .locals 20

    .prologue
    .line 2143
    const-string v17, "HS20StateMachine"

    const-string v18, "loadCredtoSupplicant"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    const/4 v12, 0x0

    .line 2146
    .local v12, "interval":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getCredentialIds()Ljava/util/List;

    move-result-object v11

    .line 2147
    .local v11, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotIds()Ljava/util/List;

    move-result-object v8

    .line 2148
    .local v8, "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v11, :cond_0

    if-nez v8, :cond_1

    .line 2201
    :cond_0
    :goto_0
    return-void

    .line 2151
    :cond_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    .line 2152
    .local v3, "count":I
    const/16 v16, -0xa

    .line 2153
    .local v16, "random":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v3, :cond_3

    .line 2154
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

    .line 2155
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2156
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

    .line 2157
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_2

    .line 2158
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

    .line 2159
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

    .line 2160
    add-int/lit8 v16, v16, 0x1

    .line 2153
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 2163
    .end local v4    # "credID":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getCredentialIds()Ljava/util/List;

    move-result-object v11

    .line 2164
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subs_count:I

    .line 2165
    if-eqz v11, :cond_0

    .line 2167
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

    .line 2168
    .local v5, "credential_id":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v5, v0, :cond_5

    .line 2169
    const-string v17, "HS20StateMachine"

    const-string v18, "Not a valid credential"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->deleteppsMO(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2197
    .end local v5    # "credential_id":I
    .end local v10    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    .line 2198
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2173
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

    .line 2175
    .local v6, "current_credential":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getMethodType(I)I

    move-result v13

    .line 2176
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

    .line 2177
    if-gez v5, :cond_4

    .line 2178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPPSMONode(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v15

    .line 2179
    .local v15, "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    if-eqz v15, :cond_6

    iget v0, v15, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 2180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->deleteppsMO(I)V

    goto/16 :goto_2

    .line 2182
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

    .line 2183
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updateHs20Credential(I)I

    move-result v14

    .line 2184
    .local v14, "new_credential_id":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v14, v0, :cond_7

    .line 2185
    const-string v17, "HS20StateMachine"

    const-string v18, "Adding credentials to supplicant failed."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
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

    .line 2189
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

    .line 2191
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
    .line 2102
    const-string v6, "HS20StateMachine"

    const-string v7, "reloadCredentialsToSupplicant"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v6}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getCredentialIds()Ljava/util/List;

    move-result-object v2

    .line 2105
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v2, :cond_1

    .line 2140
    :cond_0
    :goto_0
    return-void

    .line 2107
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

    .line 2108
    .local v0, "credential_id":I
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2109
    const-string v6, "HS20StateMachine"

    const-string v7, "Wi-Fi is not enabled. Aborting"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2113
    :cond_2
    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    if-ne v0, v6, :cond_3

    .line 2114
    const-string v6, "HS20StateMachine"

    const-string v7, "Not a valid credential."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->deleteppsMO(I)V

    goto :goto_1

    .line 2119
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getMethodType(I)I

    move-result v3

    .line 2120
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

    .line 2121
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPPSMONode(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v5

    .line 2122
    .local v5, "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    if-eqz v5, :cond_4

    iget v6, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 2123
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->removeHs20Cred(I)Z

    .line 2124
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v6, v0}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->deleteppsMO(I)V

    .line 2138
    :goto_2
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->saveConfig()Z

    goto :goto_1

    .line 2126
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updateHs20Credential(I)I

    move-result v4

    .line 2127
    .local v4, "new_credential_id":I
    iget v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    if-ne v4, v6, :cond_5

    .line 2128
    const-string v6, "HS20StateMachine"

    const-string v7, "Adding credentials to supplicant failed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    const/16 v8, -0x3e7

    invoke-virtual {v6, v7, v8, v3, v0}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setCredentials(IIII)Z

    goto :goto_2

    .line 2132
    :cond_5
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    invoke-virtual {v6, v7, v4, v3, v0}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setCredentials(IIII)Z

    .line 2134
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

    .line 2397
    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->serverUri:Ljava/net/URI;

    .line 2398
    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    .line 2399
    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    .line 2401
    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    .line 2402
    iput-boolean v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyUpdate:Z

    .line 2403
    iput v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_type:I

    .line 2404
    iput v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    .line 2405
    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedAPSSID:Ljava/lang/String;

    .line 2406
    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2407
    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    .line 2408
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->disconnectedFromSsid:Ljava/lang/String;

    .line 2409
    iput-boolean v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->update:Z

    .line 2410
    return-void
.end method

.method private saveConfig()Z
    .locals 2

    .prologue
    .line 3037
    const-string v0, "HS20StateMachine"

    const-string v1, "came to save config"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
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
    .line 2364
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2365
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1b75

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2366
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2367
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2368
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2369
    return-void
.end method

.method private sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "friendlyName"    # Ljava/lang/String;
    .param p3, "iconPath"    # Ljava/lang/String;

    .prologue
    .line 2009
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

    .line 2011
    new-instance v0, Landroid/content/Intent;

    const-string v1, "adroid.net.wifi.hs20.provisioning_state"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2012
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "hs20_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2013
    if-eqz p2, :cond_0

    .line 2014
    const-string v1, "friendly_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2016
    :cond_0
    if-eqz p3, :cond_1

    .line 2017
    const-string v1, "icon_path"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2019
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2020
    return-void
.end method

.method private sendSoapRequest(IIILjava/lang/String;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "requestReason"    # Ljava/lang/String;

    .prologue
    .line 2384
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2385
    .local v1, "message":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 2386
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 2387
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 2388
    iput-object p4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2390
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSubscriptionManagerMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2394
    :goto_0
    return-void

    .line 2391
    :catch_0
    move-exception v0

    .line 2392
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
    .line 3043
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

    .line 3045
    if-nez p2, :cond_0

    .line 3046
    const/16 v21, 0x0

    .line 3214
    :goto_0
    return v21

    .line 3047
    :cond_0
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    .line 3048
    .local v12, "newHomeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    .line 3049
    .local v10, "newCred":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    .line 3050
    .local v13, "newPolicy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    if-eqz v10, :cond_13

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->hs20AAAFP:Ljava/lang/String;

    .line 3051
    .local v4, "fingerPrint":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->userPriority:I

    .line 3052
    .local v14, "newSubcriptionPriority":I
    const/16 v16, 0x1

    .line 3053
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

    .line 3054
    const/16 v16, 0x0

    .line 3055
    :cond_1
    if-eqz v10, :cond_12

    .line 3056
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

    .line 3057
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 3059
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

    .line 3062
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 3063
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

    .line 3065
    :cond_2
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->password:[B

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 3066
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

    .line 3073
    :cond_3
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 3074
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->eapType:I

    move/from16 v21, v0

    if-lez v21, :cond_4

    .line 3075
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

    .line 3078
    :cond_4
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerEAPType:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 3079
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

    .line 3082
    :cond_5
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerMethod:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 3083
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

    .line 3087
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

    .line 3088
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

    .line 3090
    :cond_7
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    .line 3091
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->imsi:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    .line 3092
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

    .line 3094
    :cond_8
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->eapType:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    .line 3095
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

    .line 3098
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

    .line 3099
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

    .line 3101
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

    .line 3103
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_d

    .line 3105
    :cond_c
    const-string v21, "username"

    const-string v22, "\"HS20_CLIENT\""

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    .line 3106
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

    .line 3107
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

    .line 3116
    :goto_2
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certSHA256FingerPrint:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    if-nez v16, :cond_e

    .line 3118
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

    .line 3120
    :cond_e
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->clientcertHash:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    .line 3121
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

    .line 3122
    :cond_f
    new-instance v6, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;-><init>(Landroid/content/Context;)V

    .line 3124
    .local v6, "hs20PasswordGenerator":Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;
    invoke-virtual {v6}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->genPasswd1()Ljava/lang/String;

    move-result-object v11

    .line 3125
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

    .line 3133
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

    .line 3135
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

    .line 3136
    :cond_11
    iget-boolean v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->checkAAAServerCertStatus:Z

    move/from16 v21, v0

    if-eqz v21, :cond_17

    .line 3137
    const-string v21, "ocsp"

    const-string v22, "2"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    .line 3143
    :cond_12
    :goto_4
    if-eqz v12, :cond_1f

    .line 3144
    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_18

    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_18

    .line 3145
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

    .line 3146
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

    .line 3147
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

    .line 3050
    .end local v4    # "fingerPrint":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "networkId":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    .end local v14    # "newSubcriptionPriority":I
    .end local v16    # "phase2Cred":Z
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 3109
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

    .line 3110
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

    .line 3113
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

    .line 3128
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

    .line 3139
    :cond_17
    const-string v21, "ocsp"

    const-string v22, "1"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 3150
    :cond_18
    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1a

    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_1a

    .line 3151
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

    .line 3152
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

    .line 3156
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

    .line 3157
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

    .line 3158
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

    .line 3161
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

    .line 3162
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

    .line 3163
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

    .line 3165
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

    .line 3167
    :cond_1e
    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->roamingConsortium:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1f

    .line 3168
    const-string v21, "roaming_consortium_list"

    iget-object v0, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->roamingConsortium:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    .line 3171
    :cond_1f
    if-eqz v13, :cond_26

    .line 3172
    iget-object v0, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_21

    iget-object v0, v13, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_21

    .line 3174
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

    .line 3175
    .local v19, "prp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->fQDNMatch:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 3176
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

    .line 3181
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

    .line 3182
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

    .line 3183
    .local v8, "mbht":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    iget-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->networkType:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_22

    .line 3184
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

    .line 3188
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

    .line 3190
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

    .line 3194
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

    .line 3195
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

    .line 3196
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

    .line 3200
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

    .line 3201
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

    .line 3202
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

    .line 3206
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

    .line 3209
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

    .line 3211
    const-string v21, "temporary"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    .line 3212
    const-string v21, "priority"

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    .line 3213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 3214
    const/16 v21, 0x1

    goto/16 :goto_0
.end method

.method private setSecuredAccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    .line 3240
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

    .line 3241
    .local v1, "su":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3245
    .end local v1    # "su":Ljava/lang/Process;
    :goto_0
    return-void

    .line 3242
    :catch_0
    move-exception v0

    .line 3243
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
    .line 2351
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer:[Ljava/util/Timer;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    aput-object v1, v0, p3

    .line 2352
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

    .line 2353
    const-wide/16 v0, 0x3c

    mul-long/2addr v0, p1

    const-wide/16 v4, 0x3e8

    mul-long v2, v0, v4

    .line 2354
    .local v2, "milisec":J
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer:[Ljava/util/Timer;

    aget-object v0, v0, p3

    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$4;

    invoke-direct {v1, p0, p3, p4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$4;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;II)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 2361
    return-void
.end method

.method private startTimers()V
    .locals 7

    .prologue
    .line 2328
    const-string v4, "HS20StateMachine"

    const-string v5, " startTimers"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v4}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getCredentialIds()Ljava/util/List;

    move-result-object v3

    .line 2331
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_1

    .line 2332
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

    .line 2333
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

    .line 2336
    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    if-ne v2, v4, :cond_2

    .line 2337
    const-string v4, "HS20StateMachine"

    const-string v5, "startTimers Not a valid credential"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2345
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":I
    :catch_0
    move-exception v0

    .line 2346
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2348
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 2340
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "id":I
    :cond_2
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updatePolicyTimerForThisCredential(I)V

    .line 2341
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v4, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getMethodType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 2342
    invoke-direct {p0, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updateExpirationTimerForThisCredential(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private stoptimers()V
    .locals 8

    .prologue
    .line 2291
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

    .line 2293
    :try_start_0
    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer_count:I

    if-eqz v5, :cond_2

    .line 2294
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getCredentialIds()Ljava/util/List;

    move-result-object v4

    .line 2295
    .local v4, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer_count:I

    .line 2298
    if-eqz v4, :cond_2

    .line 2299
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

    .line 2300
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

    .line 2301
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 2302
    const-string v5, "HS20StateMachine"

    const-string v6, "stoptimers Not a valid credential"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2321
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":I
    .end local v4    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 2322
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2325
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 2305
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "id":I
    .restart local v4    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer:[Ljava/util/Timer;

    aget-object v5, v5, v3

    if-eqz v5, :cond_0

    .line 2306
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer:[Ljava/util/Timer;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 2311
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

    .line 2312
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ll:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/WifiHs20Timer;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20Timer;->cred_id:I

    if-ltz v5, :cond_3

    .line 2313
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ll:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/WifiHs20Timer;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20Timer;->hs20_timer:Ljava/util/Timer;

    if-eqz v5, :cond_3

    .line 2314
    const-string v5, "HS20StateMachine"

    const-string v6, "cancelling expiration timer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ll:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hs20/WifiHs20Timer;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20Timer;->hs20_timer:Ljava/util/Timer;

    invoke-virtual {v5}, Ljava/util/Timer;->cancel()V

    .line 2311
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2319
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
    .line 2044
    const-wide/16 v12, 0x0

    .line 2045
    .local v12, "interval":J
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-result-object v8

    .line 2047
    .local v8, "current_credential":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    iget-object v7, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->creationDate:Ljava/lang/String;

    .line 2048
    .local v7, "creation":Ljava/lang/String;
    iget-object v10, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->expirationDate:Ljava/lang/String;

    .line 2049
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

    .line 2051
    if-eqz v10, :cond_1

    .line 2053
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

    .line 2058
    .local v0, "ExpirationDate":Ljava/util/GregorianCalendar;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2059
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

    .line 2062
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    sub-long v12, v2, v4

    .line 2068
    const-wide/16 v2, 0x0

    cmp-long v1, v12, v2

    if-gez v1, :cond_0

    .line 2069
    const-wide/16 v12, 0x0

    .line 2070
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

    .line 2071
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20Timer;

    invoke-direct {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20Timer;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->expirationTimer:Lcom/android/server/wifi/hs20/WifiHs20Timer;

    .line 2072
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->ll:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->expirationTimer:Lcom/android/server/wifi/hs20/WifiHs20Timer;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2073
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->expirationTimer:Lcom/android/server/wifi/hs20/WifiHs20Timer;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20Timer;->hs20_timer:Ljava/util/Timer;

    new-instance v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$2;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;I)V

    invoke-virtual {v1, v2, v12, v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2099
    .end local v0    # "ExpirationDate":Ljava/util/GregorianCalendar;
    :cond_1
    :goto_0
    return-void

    .line 2063
    :catch_0
    move-exception v9

    .line 2064
    .local v9, "e":Ljava/lang/Exception;
    const-string v1, "HS20StateMachine"

    const-string v2, " updateExpirationTimerForThisCredential Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updatePolicyTimerForThisCredential(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 2023
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-result-object v3

    .line 2024
    .local v3, "policy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    if-nez v3, :cond_0

    .line 2025
    const-string v4, "HS20StateMachine"

    const-string v5, "policy null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    :cond_0
    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    if-eqz v4, :cond_2

    .line 2027
    iget-object v4, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-wide v0, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateInterval:J

    .line 2028
    .local v0, "interval":J
    const/4 v2, -0x1

    .line 2029
    .local v2, "method":I
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->SOAP:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2030
    const/4 v2, 0x1

    .line 2033
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

    .line 2035
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    .line 2041
    .end local v0    # "interval":J
    .end local v2    # "method":I
    :cond_2
    :goto_1
    return-void

    .line 2031
    .restart local v0    # "interval":J
    .restart local v2    # "method":I
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->OMA_DM:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2032
    const/4 v2, 0x0

    goto :goto_0

    .line 2037
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

    .line 2038
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->startTimerNew(JII)V

    .line 2039
    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer_count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer_count:I

    goto :goto_1
.end method

.method private updateSubsciptionTimer()V
    .locals 18

    .prologue
    .line 2204
    const-string v2, "HS20StateMachine"

    const-string v3, "updateSubsciptionTimer "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getCredentialIds()Ljava/util/List;

    move-result-object v12

    .line 2206
    .local v12, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subs_count:I

    .line 2207
    if-eqz v12, :cond_1

    .line 2209
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

    .line 2210
    .local v8, "credential_id":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    if-ne v8, v2, :cond_2

    .line 2211
    const-string v2, "HS20StateMachine"

    const-string v3, "Not a valid credential"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2244
    .end local v8    # "credential_id":I
    .end local v11    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v10

    .line 2245
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 2248
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 2214
    .restart local v8    # "credential_id":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSubscriptionUpdateInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    move-result-object v9

    .line 2216
    .local v9, "current_subscription":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    if-nez v9, :cond_3

    .line 2217
    const-string v2, "HS20StateMachine"

    const-string v3, "updateSubsciptionTimer : No current subscriptions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2220
    :cond_3
    iget-wide v14, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateInterval:J

    .line 2221
    .local v14, "interval":J
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-eqz v2, :cond_1

    .line 2223
    if-eqz v9, :cond_0

    iget-object v2, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    const-string v3, "ClientInitiated"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2225
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

    .line 2230
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscriptionTimer:[Ljava/util/Timer;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subs_count:I

    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    aput-object v4, v2, v3

    .line 2231
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

    .line 2240
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
    .line 3218
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3219
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3220
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

    .line 3221
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3222
    const-string v1, "HS20StateMachine"

    const-string v2, "Updating Cred Element error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    const/4 v1, 0x0

    .line 3225
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public cancelSubscription()V
    .locals 2

    .prologue
    .line 768
    const/16 v1, 0x1b65

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    .line 769
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.CANCEL_TRANS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 771
    return-void
.end method

.method public checkifOSUAP()Z
    .locals 3

    .prologue
    .line 760
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

    .line 761
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedAPSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    const/4 v0, 0x1

    .line 764
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearHs20()Z
    .locals 3

    .prologue
    .line 3229
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3230
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3231
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3232
    const-string v1, "HS20StateMachine"

    const-string v2, "Updating Cred Element error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    const/4 v1, 0x0

    .line 3235
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
    .line 3366
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3367
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3368
    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 720
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method getState()Lcom/android/internal/util/IState;
    .locals 1

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method public isSubscrptionInProgress()Z
    .locals 1

    .prologue
    .line 712
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

    .line 714
    :cond_0
    const/4 v0, 0x0

    .line 716
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
    .line 2542
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2543
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xce

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2544
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2545
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2546
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

    .line 2547
    const/4 v1, 0x0

    .line 2549
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setPermission()V
    .locals 6

    .prologue
    .line 3248
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/misc/wifi/hs20"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3249
    .local v0, "cacheDir":Ljava/io/File;
    const-string v1, ""

    .line 3250
    .local v1, "command":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3251
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3252
    const-string v1, "chmod 770"

    .line 3253
    const-string v4, "/data/misc/wifi/hs20"

    invoke-direct {p0, v4, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setSecuredAccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 3254
    const-string v4, "HS20StateMachine"

    const-string v5, "successfully changed the permission of hs20 folder"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3255
    const-string v1, "chown system:wifi "

    .line 3256
    const-string v4, "/data/misc/wifi/hs20"

    invoke-direct {p0, v4, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setSecuredAccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 3257
    const-string v4, "HS20StateMachine"

    const-string v5, "Changed the owner and group for hs20"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/misc/wifi/hs20/HotspotDebug"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3259
    .local v2, "debugDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3260
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 3261
    :cond_0
    const-string v1, "chmod 770"

    .line 3262
    const-string v4, "/data/misc/wifi/hs20/HotspotDebug"

    invoke-direct {p0, v4, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setSecuredAccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 3263
    const-string v4, "HS20StateMachine"

    const-string v5, "successfully changed the permission of HotspotDebug folder"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    .end local v2    # "debugDir":Ljava/io/File;
    :goto_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/hs20/icons"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3268
    .local v3, "iconDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3269
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 3270
    const-string v1, "chmod -R 755"

    .line 3271
    const-string v4, "/data/hs20"

    invoke-direct {p0, v4, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setSecuredAccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 3272
    const-string v4, "HS20StateMachine"

    const-string v5, "successfully changed the permission of /data/hs20/ folder"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3273
    const-string v1, "chown wifi:system"

    .line 3274
    const-string v4, "/data/hs20"

    invoke-direct {p0, v4, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setSecuredAccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 3275
    const-string v4, "/data/hs20/icons"

    invoke-direct {p0, v4, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setSecuredAccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 3277
    :cond_1
    return-void

    .line 3265
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

    .line 732
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 733
    .local v1, "osuApConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->getOsuSsid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 734
    invoke-virtual {p1}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->getOsuNAI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 735
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 736
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 737
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 738
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    .line 739
    .local v0, "ec":Landroid/net/wifi/WifiEnterpriseConfig;
    const-string v2, "osen"

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 740
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 741
    invoke-virtual {p1}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->getOsuNAI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 742
    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 746
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

    .line 747
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedAPSSID:Ljava/lang/String;

    .line 748
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    .line 749
    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 750
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v5, v2, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:Z

    .line 751
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v5, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 752
    const/16 v2, 0x1b6c

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    .line 753
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

    .line 756
    return-void

    .line 744
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
    .line 823
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getCredentialIds()Ljava/util/List;

    move-result-object v2

    .line 824
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 825
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

    .line 826
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

    .line 827
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

    .line 828
    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    if-ne v0, v3, :cond_1

    .line 829
    const-string v3, "HS20StateMachine"

    const-string v4, "Not a valid credential"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 832
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHomeSPInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 834
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->startPolicyUpdateForCredential(I)V

    goto :goto_0

    .line 837
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

    .line 774
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

    .line 775
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 776
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 778
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

    .line 779
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    if-eq p1, v4, :cond_7

    .line 780
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer:[Ljava/util/Timer;

    aget-object v4, v4, p1

    if-eqz v4, :cond_0

    .line 781
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->policyTimer:[Ljava/util/Timer;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 783
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v4, p1, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-result-object v2

    .line 784
    .local v2, "policy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    if-nez v2, :cond_1

    .line 785
    const-string v4, "HS20StateMachine"

    const-string v5, "policy null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_1
    if-eqz v2, :cond_6

    iget-object v4, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    if-eqz v4, :cond_6

    .line 788
    const/4 v1, -0x1

    .line 789
    .local v1, "method":I
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->SOAP:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 790
    const/4 v1, 0x1

    .line 794
    :cond_2
    :goto_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->isPolicyUpdate(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 795
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendPolicyUpdateMessage(II)V

    .line 796
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v4, p1, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHomeSPInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    move-result-object v3

    .line 797
    .local v3, "thisHomeSp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->credential_id:I

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSpIcon(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;

    move-result-object v0

    .line 798
    .local v0, "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    const/16 v5, 0x232f

    iget-object v6, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->friendlyName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v4, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->name:Ljava/lang/String;

    :goto_1
    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 810
    .end local v0    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .end local v1    # "method":I
    .end local v3    # "thisHomeSp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updatePolicyTimerForThisCredential(I)V

    .line 820
    .end local v2    # "policy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    :goto_3
    return-void

    .line 791
    .restart local v1    # "method":I
    .restart local v2    # "policy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->OMA_DM:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 792
    const/4 v1, 0x0

    goto :goto_0

    .line 798
    .restart local v0    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .restart local v3    # "thisHomeSp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :cond_4
    iget-object v4, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->iconURL:Ljava/lang/String;

    goto :goto_1

    .line 803
    .end local v0    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .end local v3    # "thisHomeSp":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :cond_5
    invoke-direct {p0, v8, v7, v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 807
    .end local v1    # "method":I
    :cond_6
    invoke-direct {p0, v8, v7, v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 812
    .end local v2    # "policy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    :cond_7
    invoke-direct {p0, v8, v7, v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 816
    :cond_8
    const-string v4, "HS20StateMachine"

    const-string v5, "wifiinfo SSID is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-direct {p0, v8, v7, v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendProvisioningSateBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public syncDeleteSubscription(I)Z
    .locals 5
    .param p1, "hsId"    # I

    .prologue
    .line 2530
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSpUpdateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2531
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

    .line 2532
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPPSMONodeHotspotID(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v0

    .line 2533
    .local v0, "tmpPPSMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    if-eqz v0, :cond_0

    .line 2534
    iget-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialID:I

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->removeHs20Cred(I)Z

    .line 2536
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->deleteSubscription(I)V

    .line 2537
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 2538
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
    .line 2497
    sget-object v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSpUpdateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2498
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

    .line 2499
    if-eqz p2, :cond_2

    .line 2500
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getCredentialId(I)I

    move-result v3

    const/4 v5, -0x1

    if-ge v3, v5, :cond_1

    .line 2501
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    invoke-virtual {v3, p1, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setCredId(II)Z

    .line 2502
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addHs20Credential()I

    move-result v2

    .line 2503
    .local v2, "new_credential_id":I
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setCredId(II)Z

    .line 2504
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    sget v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    invoke-virtual {v3, v2, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setUserPriority(II)Z

    .line 2505
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

    .line 2506
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 2507
    .local v1, "mInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 2508
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2510
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 2511
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 2514
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

    .line 2516
    const-string v3, "HS20StateMachine"

    const-string v5, "SEC_COMMAND_ID_HS20_INTERWORKING_SELECT command error"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    .end local v1    # "mInfo":Landroid/net/wifi/WifiInfo;
    .end local v2    # "new_credential_id":I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->enableSubscription(IZ)Z

    .line 2524
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->saveConfig()Z

    .line 2525
    const/4 v3, 0x0

    monitor-exit v4

    return v3

    .line 2520
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getCredentialId(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->removeHs20Cred(I)Z

    .line 2521
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    const/4 v5, -0x2

    invoke-virtual {v3, p1, v5}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setCredId(II)Z

    goto :goto_0

    .line 2526
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
    .line 2413
    sget-object v22, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSpUpdateLock:Ljava/lang/Object;

    monitor-enter v22

    .line 2414
    :try_start_0
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2415
    .local v20, "newSSList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/hs20/WifiHs20SubscribedSp;>;"
    const-string v3, "HS20StateMachine"

    const-string v4, "syncGetSubscribedSpList "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotIds()Ljava/util/List;

    move-result-object v19

    .line 2417
    .local v19, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v19, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 2418
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

    .line 2422
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

    .line 2423
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

    .line 2424
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->INVALID_CRED_ID:I

    if-ne v2, v3, :cond_0

    .line 2425
    const-string v3, "HS20StateMachine"

    const-string v4, "Not a valid credential"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2466
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

    .line 2428
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

    .line 2429
    .local v21, "tmpPPSMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSpIcon(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;

    move-result-object v18

    .line 2430
    .local v18, "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    if-eqz v21, :cond_1

    .line 2432
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    if-eqz v3, :cond_2

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->password:[B

    if-eqz v3, :cond_2

    .line 2434
    sget-object v16, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;->TTLS:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    .line 2444
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

    .line 2457
    .local v1, "tmpSS":Landroid/net/wifi/hs20/WifiHs20SubscribedSp;
    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2458
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

    .line 2460
    .end local v1    # "tmpSS":Landroid/net/wifi/hs20/WifiHs20SubscribedSp;
    .end local v16    # "credType":Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;
    :cond_1
    const/4 v1, 0x0

    .line 2461
    .restart local v1    # "tmpSS":Landroid/net/wifi/hs20/WifiHs20SubscribedSp;
    const/16 v21, 0x0

    .line 2462
    const/16 v18, 0x0

    .line 2463
    goto/16 :goto_0

    .line 2435
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

    .line 2437
    sget-object v16, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;->TLS:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    .restart local v16    # "credType":Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;
    goto/16 :goto_1

    .line 2438
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

    .line 2440
    sget-object v16, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;->SIM:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    .restart local v16    # "credType":Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;
    goto/16 :goto_1

    .line 2442
    .end local v16    # "credType":Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;
    :cond_4
    sget-object v16, Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;->UNKNOWN:Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;

    .restart local v16    # "credType":Landroid/net/wifi/hs20/WifiHs20SubscribedSp$CredType;
    goto/16 :goto_1

    .line 2444
    :cond_5
    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v7, v7, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->friendlyName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 2465
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
    .line 3356
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Ljava/lang/String;Landroid/content/Context;)V

    .line 3357
    .local v0, "parser":Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;
    invoke-virtual {v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->processLineByLine()I

    move-result v1

    .line 3358
    .local v1, "ret":I
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 3359
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->reloadCredentialsToSupplicant()V

    .line 3361
    :cond_0
    return v1
.end method

.method public syncLoadCred(Ljava/lang/String;)I
    .locals 4
    .param p1, "credential"    # Ljava/lang/String;

    .prologue
    .line 3346
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;-><init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/content/Context;)V

    .line 3347
    .local v0, "parser":Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ReadWithScanner;->parseCredential(Ljava/lang/String;)I

    move-result v1

    .line 3348
    .local v1, "ret":I
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 3349
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->reloadCredentialsToSupplicant()V

    .line 3351
    :cond_0
    return v1
.end method

.method public syncUpdateCredPriorities(Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 2470
    sget-object v6, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSpUpdateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2471
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

    .line 2472
    const-string v5, "updated_hsids"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2473
    .local v4, "newHsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v5, 0x7fffffff

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v5, v7

    sget v7, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    if-ge v5, v7, :cond_0

    .line 2474
    const/high16 v5, -0x80000000

    sput v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    .line 2477
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2478
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2479
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

    .line 2480
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    invoke-virtual {v5, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setUserPriority(Ljava/lang/String;I)Z

    .line 2481
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v5, v1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getCredentialId(I)I

    move-result v5

    const-string v7, "priority"

    sget v8, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->addUpdateCredElement(ILjava/lang/String;Ljava/lang/String;)Z

    .line 2483
    sget v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    .line 2477
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2485
    .end local v1    # "hsId":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 2486
    .local v3, "mInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_2

    .line 2487
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2488
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-ne v5, v9, :cond_2

    .line 2489
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 2492
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    monitor-exit v6

    return v9

    .line 2493
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
    .line 3338
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 3339
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mConnManager:Landroid/net/ConnectivityManager;

    .line 3340
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 3341
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 3342
    return-void
.end method

.method public updateEapType(II)V
    .locals 1
    .param p1, "credId"    # I
    .param p2, "eapType"    # I

    .prologue
    .line 2967
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mHS20DBHandler:Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->setEAPType(II)Z

    .line 2968
    return-void
.end method

.method public updateHs20Credential(I)I
    .locals 10
    .param p1, "credId"    # I

    .prologue
    const/4 v6, -0x1

    .line 3003
    new-instance v3, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    .line 3004
    .local v3, "mDbHandler":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    invoke-virtual {v3, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPPSMONode(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    move-result-object v5

    .line 3005
    .local v5, "ppsmo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    if-nez v5, :cond_1

    .line 3006
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

    .line 3033
    :cond_0
    :goto_0
    return v4

    .line 3011
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->removeHs20Cred(I)Z

    move-result v2

    .line 3014
    .local v2, "isSuccess":Z
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 3015
    const-string v7, "HS20StateMachine"

    const-string v8, "Wi-Fi is not enabled. Aborting ADD_CRED command"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 3016
    goto :goto_0

    .line 3020
    :cond_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3021
    .local v0, "addCredMsg":Landroid/os/Message;
    const/16 v7, 0xd2

    iput v7, v0, Landroid/os/Message;->what:I

    .line 3022
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v4

    .line 3023
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

    .line 3024
    if-eq v4, v6, :cond_0

    .line 3026
    sput v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    .line 3027
    sget v7, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->currentCredPriority:I

    iput v7, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->userPriority:I

    .line 3028
    invoke-direct {p0, v4, v5}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->setHs20Credential(ILcom/android/server/wifi/hs20/WifiHs20PPSMO;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3030
    .end local v0    # "addCredMsg":Landroid/os/Message;
    .end local v2    # "isSuccess":Z
    .end local v4    # "newCredId":I
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    move v4, v6

    .line 3031
    goto :goto_0
.end method
