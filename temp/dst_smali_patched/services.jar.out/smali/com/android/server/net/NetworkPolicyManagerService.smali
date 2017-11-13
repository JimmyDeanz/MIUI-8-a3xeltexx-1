.class public Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;,
        Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.net.action.ALLOW_BACKGROUND"

.field private static final ACTION_SNOOZE_WARNING:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_WARNING"

.field private static final APPLICATION_RUNNING:I = 0x1

.field private static final APPLICATION_START:I = 0x0

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_CYCLE_DAY:Ljava/lang/String; = "cycleDay"

.field private static final ATTR_CYCLE_TIMEZONE:Ljava/lang/String; = "cycleTimezone"

.field private static final ATTR_INFERRED:Ljava/lang/String; = "inferred"

.field private static final ATTR_LAST_LIMIT_SNOOZE:Ljava/lang/String; = "lastLimitSnooze"

.field private static final ATTR_LAST_SNOOZE:Ljava/lang/String; = "lastSnooze"

.field private static final ATTR_LAST_WARNING_SNOOZE:Ljava/lang/String; = "lastWarningSnooze"

.field private static final ATTR_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final ATTR_METERED:Ljava/lang/String; = "metered"

.field private static final ATTR_NETWORK_ID:Ljava/lang/String; = "networkId"

.field private static final ATTR_NETWORK_TEMPLATE:Ljava/lang/String; = "networkTemplate"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_SUBSCRIBER_ID:Ljava/lang/String; = "subscriberId"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_WARNING_BYTES:Ljava/lang/String; = "warningBytes"

.field private static final DB_RESTRICT_BACKGROUND_DURING_LOWPOWER_MODE:Ljava/lang/String; = "low_power_back_data_off"

.field private static final DB_USER_RESTRICT_BACKGROUND_UIDLIST:Ljava/lang/String; = "user_restrict_background_uidlist"

.field private static final LOGD:Z = false

.field private static final LOGV:Z = false

.field private static final MSG_ADVISE_PERSIST_THRESHOLD:I = 0x7

.field private static final MSG_LIMIT_REACHED:I = 0x5

.field private static final MSG_METERED_IFACES_CHANGED:I = 0x2

.field private static final MSG_POWER_SAVE_MODE_CHANGE:I = 0xc

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x6

.field private static final MSG_ROAMING_STATE_CHANGED:I = 0x3e9

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final MSG_SCREEN_ON_CHANGED:I = 0x8

.field private static final MSG_UID_GONE:I = 0xa

.field private static final MSG_UID_STATE_CHANGED:I = 0x9

.field private static final SHOW_FIREWALL_PERMISSION_TOAST:I = 0xb

.field private static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field private static final TAG_ALLOW_BACKGROUND:Ljava/lang/String; = "NetworkPolicy:allowBackground"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_FIREWALL_POLICY:Ljava/lang/String; = "firewall-policy"

.field private static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final TAG_UID_ROAMING_POLICY:Ljava/lang/String; = "uid-roaming-policy"

.field private static final TIME_CACHE_MAX_AGE:J = 0x5265c00L

.field public static final TYPE_LIMIT:I = 0x2

.field public static final TYPE_LIMIT_SNOOZED:I = 0x3

.field public static final TYPE_WARNING:I = 0x1

.field private static final VERSION_ADDED_INFERRED:I = 0x7

.field private static final VERSION_ADDED_METERED:I = 0x4

.field private static final VERSION_ADDED_NETWORK_ID:I = 0x9

.field private static final VERSION_ADDED_RESTRICT_BACKGROUND:I = 0x3

.field private static final VERSION_ADDED_SNOOZE:I = 0x2

.field private static final VERSION_ADDED_TIMEZONE:I = 0x6

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0xa

.field private static final VERSION_SPLIT_SNOOZE:I = 0x5

.field private static final VERSION_SWITCH_APP_ID:I = 0x8

.field private static final VERSION_SWITCH_UID:I = 0xa

.field private static mRoamingState:Z


# instance fields
.field volatile DataWarningFlag:Z

.field private firewallMap:Ljava/util/HashMap;
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

.field private final mActiveNotifs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mBackGroundDataSetObserver:Landroid/database/ContentObserver;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field volatile mDeviceIdleMode:Z

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;

.field final mFirewallRules:Landroid/util/SparseIntArray;

.field final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mHasEpdgCall:Z

.field private volatile mIsVideoCall:Z

.field private volatile mLimitBackground:Z

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleReceiver:Landroid/content/BroadcastReceiver;

.field private mMeteredIfaces:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field final mNetworkPolicy:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field final mNetworkRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/NetworkPolicy;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkStats:Landroid/net/INetworkStatsService;

.field private mNotifManager:Landroid/app/INotificationManager;

.field private final mOverLimitNotified:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private final mPowerManager:Landroid/os/IPowerManager;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field private mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

.field private mProxSensorScreenOff:Z

.field private mRRWhiteListApplied:Z

.field volatile mRestrictBackground:Z

.field private mRestrictBgInLowPowerMode:Z

.field private mRestrictBgInLowPowerObserver:Landroid/database/ContentObserver;

.field volatile mRestrictPower:Z

.field private mRoamingAppliedReason:Ljava/lang/String;

.field private mRoamingReduction:Z

.field private mRoamingReductionPolicy:Landroid/util/SparseIntArray;

.field private mRoamingReductionRule:Landroid/util/SparseBooleanArray;

.field final mRulesLock:Ljava/lang/Object;

.field volatile mScreenOn:Z

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private final mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private final mSuppressDefaultPolicy:Z

.field volatile mSystemReady:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTime:Landroid/util/TrustedTime;

.field private mUidAllowedForData:Landroid/util/SparseIntArray;

.field final mUidFirewallDozableRules:Landroid/util/SparseIntArray;

.field final mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

.field private mUidObserver:Landroid/app/IUidObserver;

.field final mUidPolicy:Landroid/util/SparseIntArray;

.field private final mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field final mUidRules:Landroid/util/SparseIntArray;

.field final mUidState:Landroid/util/SparseIntArray;

.field private mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mUserRestrictBackgroundUidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoCallLimitAlreadySent:Z

.field private mVideoCallWarningAlreadySent:Z

.field private final mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiConnected:Z

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;

.field private mcfgNetTypeCap:Ljava/lang/String;

.field private volatile mdeleteNotifications:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "powerManager"    # Landroid/os/IPowerManager;
    .param p4, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p5, "networkManagement"    # Landroid/os/INetworkManagementService;

    .prologue
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v6

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getSystemDir()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "powerManager"    # Landroid/os/IPowerManager;
    .param p4, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p5, "networkManagement"    # Landroid/os/INetworkManagementService;
    .param p6, "time"    # Landroid/util/TrustedTime;
    .param p7, "systemDir"    # Ljava/io/File;
    .param p8, "suppressDefaultPolicy"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRRWhiteListApplied:Z

    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReduction:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingAppliedReason:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConnected:Z

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->DataWarningFlag:Z

    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBgInLowPowerMode:Z

    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mdeleteNotifications:Z

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->firewallMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserRestrictBackgroundUidList:Ljava/util/List;

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidAllowedForData:Landroid/util/SparseIntArray;

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallWarningAlreadySent:Z

    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mProxSensorScreenOff:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_ConfigNetworkTypeCapability"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mcfgNetTypeCap:Ljava/lang/String;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$4;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$5;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$9;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$10;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$14;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$15;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$16;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$17;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService$17;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBgInLowPowerObserver:Landroid/database/ContentObserver;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$18;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService$18;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackGroundDataSetObserver:Landroid/database/ContentObserver;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$19;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$19;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    const-string v3, "missing context"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "missing activityManager"

    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/IActivityManager;

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v3, "missing powerManager"

    invoke-static {p3, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IPowerManager;

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    const-string v3, "missing networkStats"

    invoke-static {p4, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/INetworkStatsService;

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    const-string v3, "missing networkManagement"

    invoke-static {p5, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/INetworkManagementService;

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const-string v3, "deviceidle"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const-string v3, "missing TrustedTime"

    invoke-static {p6, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/TrustedTime;

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "NetworkPolicy"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v3, v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iput-boolean p8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string v5, "netpolicy.xml"

    invoke-direct {v4, p7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x0

    .local v1, "cscAllowRRList":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_ConfigAllowedPackagesDuringRoamingReduction"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iput-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReduction:Z

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "configNetworkTypeCapability":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, "SPR-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReduction:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v3, v4, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReduction:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingState:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingState:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeFirewallPolicyLocked(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveEntPolicyLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForScreenLocked()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConnected:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundInLowerPowerMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->changeRestrictInPowerSaveMode(Z)V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserRestrictBackgroundUidList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getBackgroundDataRestrictList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/IConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mProxSensorScreenOff:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mProxSensorScreenOff:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/net/NetworkPolicyManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateUidState(II)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUidState(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBgInLowPowerMode:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBgInLowPowerMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isATT()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->changePowerSaveMode(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRoamingReductionRules(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->handleCheckFireWallPermission(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallWarningAlreadySent:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkPolicyManagerService;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidRoamingPolicyUncheckedLocked(IIZ)V

    return-void
.end method

.method private applyFirewallRules(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply FIREWALL_POLICY_REJECT_MOBILE_DATA for UID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply FIREWALL_POLICY_REJECT_WIFI for UID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.net.NetworkOverLimitActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkPolicy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private static buildViewDataUsageIntentUDS(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.sm.SHOW_UDS_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private cancelNotification(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v0, p1, v2, v3}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private changePowerSaveMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private changeRestrictInPowerSaveMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBgInLowPowerMode:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBgInLowPowerMode:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .param p0, "source"    # Landroid/util/SparseIntArray;
    .param p1, "target"    # Landroid/util/SparseBooleanArray;

    .prologue
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private currentTimeMillis()J
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private enableFirewallChainLocked(IZ)V
    .locals 3
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-ne v1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem enable firewall chain"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private enqueueNotification(Landroid/net/NetworkPolicy;IJ)V
    .locals 27
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I
    .param p3, "totalBytes"    # J

    .prologue
    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    move-result-object v5

    .local v5, "tag":Ljava/lang/String;
    new-instance v11, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .local v11, "builder":Landroid/app/Notification$Builder;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    invoke-virtual {v11, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v4, 0x1060059

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .local v15, "res":Landroid/content/res/Resources;
    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {v11}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .local v7, "n":Landroid/app/Notification;
    const/16 v2, 0x10

    iput v2, v7, Landroid/app/Notification;->secFlags:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .local v3, "packageName":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v8, v2, [I

    .local v8, "idReceived":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-interface/range {v2 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "packageName":Ljava/lang/String;
    .end local v8    # "idReceived":[I
    :goto_1
    return-void

    .end local v7    # "n":Landroid/app/Notification;
    :pswitch_0
    const v2, 0x10404a3

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .local v20, "title":Ljava/lang/CharSequence;
    const v2, 0x10404a4

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "body":Ljava/lang/CharSequence;
    const v2, 0x1080078

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v19

    .local v19, "snoozeIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v21

    .local v21, "viewIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "udsState"

    const/4 v6, 0x0

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const/4 v14, 0x1

    .local v14, "isUDSEnable":Z
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UDS2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v14, :cond_1

    const-string v2, "NetworkPolicy"

    const-string v4, "Ultra data saving mode enabled"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntentUDS(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v22

    .local v22, "viewIntentUds":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    move-object/from16 v0, v22

    invoke-static {v2, v4, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    .local v18, "showIntent":Landroid/app/PendingIntent;
    const v2, 0x1080a6f

    const v4, 0x10407f8

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v11, v2, v4, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .end local v18    # "showIntent":Landroid/app/PendingIntent;
    .end local v22    # "viewIntentUds":Landroid/content/Intent;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    move-object/from16 v0, v21

    invoke-static {v2, v4, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallWarningAlreadySent:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    if-eqz v2, :cond_0

    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.DATAUSAGE_REACH_TO_WARNING"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallWarningAlreadySent:Z

    goto/16 :goto_0

    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "isUDSEnable":Z
    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v19    # "snoozeIntent":Landroid/content/Intent;
    .end local v20    # "title":Ljava/lang/CharSequence;
    .end local v21    # "viewIntent":Landroid/content/Intent;
    :pswitch_1
    const v2, 0x10404a9

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .restart local v10    # "body":Ljava/lang/CharSequence;
    const v12, 0x1080771

    .local v12, "icon":I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    const/16 v20, 0x0

    .restart local v20    # "title":Ljava/lang/CharSequence;
    :goto_3
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v13

    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v2, v4, v13, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .end local v13    # "intent":Landroid/content/Intent;
    .end local v20    # "title":Ljava/lang/CharSequence;
    :pswitch_2
    const v2, 0x10404a5

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .restart local v20    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .end local v20    # "title":Ljava/lang/CharSequence;
    :pswitch_3
    const v2, 0x10404a6

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .restart local v20    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .end local v20    # "title":Ljava/lang/CharSequence;
    :pswitch_4
    const v2, 0x10404a7

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .restart local v20    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .end local v20    # "title":Ljava/lang/CharSequence;
    :pswitch_5
    const v2, 0x10404a8

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .restart local v20    # "title":Ljava/lang/CharSequence;
    const v12, 0x1080078

    goto :goto_3

    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v12    # "icon":I
    .end local v20    # "title":Ljava/lang/CharSequence;
    :pswitch_6
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v24, v0

    sub-long v16, p3, v24

    .local v16, "overBytes":J
    const v2, 0x10404ae

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v16

    invoke-static {v9, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v6

    invoke-virtual {v15, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "body":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    const/16 v20, 0x0

    .restart local v20    # "title":Ljava/lang/CharSequence;
    :goto_4
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v2, 0x1080078

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v13

    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v2, v4, v13, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .end local v13    # "intent":Landroid/content/Intent;
    .end local v20    # "title":Ljava/lang/CharSequence;
    :pswitch_7
    const v2, 0x10404aa

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .restart local v20    # "title":Ljava/lang/CharSequence;
    goto :goto_4

    .end local v20    # "title":Ljava/lang/CharSequence;
    :pswitch_8
    const v2, 0x10404ab

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .restart local v20    # "title":Ljava/lang/CharSequence;
    goto :goto_4

    .end local v20    # "title":Ljava/lang/CharSequence;
    :pswitch_9
    const v2, 0x10404ac

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .restart local v20    # "title":Ljava/lang/CharSequence;
    goto :goto_4

    .end local v20    # "title":Ljava/lang/CharSequence;
    :pswitch_a
    const v2, 0x10404ad

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .restart local v20    # "title":Ljava/lang/CharSequence;
    goto :goto_4

    .end local v10    # "body":Ljava/lang/CharSequence;
    .end local v16    # "overBytes":J
    .end local v20    # "title":Ljava/lang/CharSequence;
    .restart local v7    # "n":Landroid/app/Notification;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private enqueueRestrictedNotification(Ljava/lang/String;)V
    .locals 19
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/enterprise/EnterpriseDeviceManager;

    .local v11, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v16

    .local v16, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mdeleteNotifications:Z

    .end local v16    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Common_ConfigPco"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, "feature":Ljava/lang/String;
    const-string v1, "COMMON"

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundbyPco()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const-string v1, "NetworkPolicy"

    const-string v3, "the notification (Background data restricted) NOT displayed due to PCO"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .local v15, "res":Landroid/content/res/Resources;
    new-instance v10, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .local v10, "builder":Landroid/app/Notification$Builder;
    const v1, 0x10404af

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .local v18, "title":Ljava/lang/CharSequence;
    const v1, 0x10404b0

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "body":Ljava/lang/CharSequence;
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v1, 0x1080078

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v3, 0x1060059

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mdeleteNotifications:Z

    if-nez v1, :cond_2

    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v14

    .local v14, "mPhone":Landroid/telephony/TelephonyManager;
    const-string v1, "LGT"

    const-string v3, "EUR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .local v13, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.settings.GLOBAL_ROAMING_LGT"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v13, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x1040974

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v1, 0x1040974

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v1, 0x1040975

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v17, Landroid/app/Notification$BigTextStyle;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .local v17, "style":Landroid/app/Notification$BigTextStyle;
    const v1, 0x1040974

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    const v1, 0x1040975

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v1, v3, v13, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .end local v17    # "style":Landroid/app/Notification$BigTextStyle;
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v7, v1, [I

    .local v7, "idReceived":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v5, 0x0

    invoke-virtual {v10}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    const/4 v8, 0x0

    move-object v3, v2

    move-object/from16 v4, p1

    invoke-interface/range {v1 .. v8}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v7    # "idReceived":[I
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .end local v13    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->buildAllowBackgroundDataIntent()Landroid/content/Intent;

    move-result-object v13

    .restart local v13    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v1, v3, v13, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method private ensureActiveEntPolicyLocked()V
    .locals 9

    .prologue
    iget-boolean v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v8, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    .local v7, "tele":Landroid/telephony/TelephonyManager;
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .local v3, "sub":Landroid/telephony/SubscriptionManager;
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isDdsSimStateReady()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v5

    .local v5, "subIds":[I
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, v0, v1

    .local v4, "subId":I
    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "subscriberId":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveEntPolicyLocked(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private ensureActiveEntPolicyLocked(Ljava/lang/String;)V
    .locals 22
    .param p1, "subscriberId"    # Ljava/lang/String;

    .prologue
    const-string v3, "NetworkPolicy"

    const-string v6, "ensureActiveEntPolicyLocked"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/net/NetworkIdentity;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .local v2, "probeIdent":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v19, v3, -0x1

    .local v19, "i":I
    :goto_0
    if-ltz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .local v5, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5, v2}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v19, v19, -0x1

    goto :goto_0

    .end local v5    # "template":Landroid/net/NetworkTemplate;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v20

    .local v20, "sub":Landroid/telephony/SubscriptionManager;
    const-string v3, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No ent policy for subscriber "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "; generating default policy"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, -0x1

    .local v8, "warningBytes":J
    new-instance v21, Landroid/text/format/Time;

    invoke-direct/range {v21 .. v21}, Landroid/text/format/Time;-><init>()V

    .local v21, "time":Landroid/text/format/Time;
    invoke-virtual/range {v21 .. v21}, Landroid/text/format/Time;->setToNow()V

    const/16 v18, 0x1

    .local v18, "cycleDay":I
    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .local v7, "cycleTimezone":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileEnt1(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .restart local v5    # "template":Landroid/net/NetworkTemplate;
    new-instance v4, Landroid/net/NetworkPolicy;

    const/4 v6, 0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .local v4, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    goto :goto_1
.end method

.method private ensureActiveMobilePolicyLocked()V
    .locals 9

    .prologue
    iget-boolean v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v8, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    .local v7, "tele":Landroid/telephony/TelephonyManager;
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .local v3, "sub":Landroid/telephony/SubscriptionManager;
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isDdsSimStateReady()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v5

    .local v5, "subIds":[I
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, v0, v1

    .local v4, "subId":I
    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "subscriberId":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private ensureActiveMobilePolicyLocked(Ljava/lang/String;)V
    .locals 22
    .param p1, "subscriberId"    # Ljava/lang/String;

    .prologue
    new-instance v2, Landroid/net/NetworkIdentity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .local v2, "probeIdent":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v19, v3, -0x1

    .local v19, "i":I
    :goto_0
    if-ltz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .local v5, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5, v2}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v19, v19, -0x1

    goto :goto_0

    .end local v5    # "template":Landroid/net/NetworkTemplate;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v20

    .local v20, "sub":Landroid/telephony/SubscriptionManager;
    const-string v3, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No policy for subscriber "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "; generating default policy"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e007f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v10, v3

    const-wide/32 v12, 0x100000

    mul-long v8, v10, v12

    .local v8, "warningBytes":J
    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-gez v3, :cond_2

    const-wide/16 v8, -0x1

    :cond_2
    new-instance v21, Landroid/text/format/Time;

    invoke-direct/range {v21 .. v21}, Landroid/text/format/Time;-><init>()V

    .local v21, "time":Landroid/text/format/Time;
    invoke-virtual/range {v21 .. v21}, Landroid/text/format/Time;->setToNow()V

    const/16 v18, 0x1

    .local v18, "cycleDay":I
    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .local v7, "cycleTimezone":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .restart local v5    # "template":Landroid/net/NetworkTemplate;
    new-instance v4, Landroid/net/NetworkPolicy;

    const/4 v6, 0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .local v4, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v10, "edm.intent.action.internal.sec.DEFAULT_NETWORK_POLICY_APPLIED"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method private findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :goto_1
    return-object v1

    .restart local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getBackgroundDataRestrictList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "userRestrictBackgroundUidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "user_restrict_background_uidlist"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "userAllowedUids":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "uidArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    const-string v4, ""

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "uidArray":[Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 22
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v8

    .local v8, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;

    move-result-object v18

    .local v18, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v9, 0x0

    :goto_0
    return-object v9

    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v18    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v16

    .local v16, "currentTime":J
    invoke-static/range {v16 .. v18}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .local v4, "start":J
    move-wide/from16 v6, v16

    .local v6, "end":J
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v10

    .local v10, "totalBytes":J
    move-object/from16 v0, v18

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v20, -0x1

    cmp-long v2, v2, v20

    if-eqz v2, :cond_2

    move-object/from16 v0, v18

    iget-wide v12, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .local v12, "softLimitBytes":J
    :goto_1
    move-object/from16 v0, v18

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v20, -0x1

    cmp-long v2, v2, v20

    if-eqz v2, :cond_3

    move-object/from16 v0, v18

    iget-wide v14, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .local v14, "hardLimitBytes":J
    :goto_2
    new-instance v9, Landroid/net/NetworkQuotaInfo;

    invoke-direct/range {v9 .. v15}, Landroid/net/NetworkQuotaInfo;-><init>(JJJ)V

    goto :goto_0

    .end local v12    # "softLimitBytes":J
    .end local v14    # "hardLimitBytes":J
    :cond_2
    const-wide/16 v12, -0x1

    goto :goto_1

    .restart local v12    # "softLimitBytes":J
    :cond_3
    const-wide/16 v14, -0x1

    goto :goto_2
.end method

.method private getRestrictBackgroundInLowerPowerMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "low_power_back_data_off"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "enabled":I
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRestrictBackgroundInLowerPowerMode, enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRestrictBackgroundbyPco()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_ConfigPco"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "feature":Ljava/lang/String;
    const-string v3, "COMMON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "background_data_by_pco"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    .local v1, "restrictBackgroundbyPco":Z
    :goto_0
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRestrictBackgroundbyPco() restrictBackgroundbyPco: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "restrictBackgroundbyPco":Z
    :goto_1
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private getRestrictBackgroundbyUser()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "background_data_by_user"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .local v0, "restrictBackgroundbyUser":Z
    :goto_0
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRestrictBackgroundbyUser() restrictBackgroundbyUser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .end local v0    # "restrictBackgroundbyUser":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    const-wide/16 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problem reading network stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v8

    goto :goto_0

    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    move-wide v0, v8

    goto :goto_0
.end method

.method private handleCheckFireWallPermission(ILjava/lang/String;)V
    .locals 12
    .param p1, "applicationStatus"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->firewallMap:Ljava/util/HashMap;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, p2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v6, 0x0

    .local v6, "newStatus":I
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->firewallMap:Ljava/util/HashMap;

    invoke-virtual {v8, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->firewallMap:Ljava/util/HashMap;

    invoke-virtual {v8, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_1
    const/4 v8, 0x3

    if-ne v6, v8, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .local v7, "pm":Landroid/content/pm/PackageManager;
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .local v2, "connMgr":Landroid/net/ConnectivityManager;
    if-eqz v7, :cond_2

    if-eqz v2, :cond_2

    const-string v8, "android"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v0, 0x0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v7, p2, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .local v5, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    if-eqz v0, :cond_5

    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "appName":Ljava/lang/String;
    :goto_1
    const-string v4, ""

    .local v4, "messageStr":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-nez v8, :cond_7

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->getFirewallRuleMobileData(I)Z

    move-result v8

    if-nez v8, :cond_7

    const/4 v8, 0x1

    if-eq v6, v8, :cond_7

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v9, 0x1040a7a

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v11, 0x1

    aput-object v1, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->firewallMap:Ljava/util/HashMap;

    if-nez v6, :cond_6

    const/4 v8, 0x1

    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, p2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .end local v1    # "appName":Ljava/lang/String;
    .end local v4    # "messageStr":Ljava/lang/String;
    .end local v5    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_5
    const-string v1, ""

    goto :goto_1

    .restart local v1    # "appName":Ljava/lang/String;
    .restart local v4    # "messageStr":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x3

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->getFirewallRuleWifi(I)Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x2

    if-eq v6, v8, :cond_4

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v9, 0x1040a7b

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v11, 0x1

    aput-object v1, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->firewallMap:Ljava/util/HashMap;

    if-nez v6, :cond_8

    const/4 v8, 0x2

    :goto_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, p2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    const/4 v8, 0x3

    goto :goto_4
.end method

.method private isATT()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mcfgNetTypeCap:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mcfgNetTypeCap:Ljava/lang/String;

    const-string v1, "-ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mcfgNetTypeCap:Ljava/lang/String;

    const-string v1, "-AIO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private isDdsSimStateReady()Z
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .local v0, "slotId":I
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static isProcStateAllowedWhileIdle(I)Z
    .locals 1
    .param p0, "procState"    # I

    .prologue
    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTemplateRelevant(Landroid/net/NetworkTemplate;)Z
    .locals 14
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v13, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v12

    .local v12, "tele":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v9

    .local v9, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-le v2, v13, :cond_1

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isDdsSimStateReady()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .end local v9    # "sub":Landroid/telephony/SubscriptionManager;
    .end local v12    # "tele":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return v1

    .restart local v9    # "sub":Landroid/telephony/SubscriptionManager;
    .restart local v12    # "tele":Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-virtual {v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v11

    .local v11, "subIds":[I
    move-object v6, v11

    .local v6, "arr$":[I
    array-length v8, v6

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_0

    aget v10, v6, v7

    .local v10, "subId":I
    invoke-virtual {v12, v10}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "subscriberId":Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkIdentity;

    const/4 v4, 0x0

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .local v0, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v13

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v0    # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v6    # "arr$":[I
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "sub":Landroid/telephony/SubscriptionManager;
    .end local v10    # "subId":I
    .end local v11    # "subIds":[I
    .end local v12    # "tele":Landroid/telephony/TelephonyManager;
    :cond_3
    move v1, v13

    goto :goto_0
.end method

.method private isUidIdle(I)Z
    .locals 8
    .param p1, "uid"    # I

    .prologue
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .local v4, "packages":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .local v5, "userId":I
    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .local v3, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v7, v3, p1, v5}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private static isUidValidForRules(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    const/16 v0, 0x3f5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3fb

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private normalizePoliciesLocked()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V

    return-void
.end method

.method private normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V
    .locals 10
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .local v6, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v4

    .local v4, "merged":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    move-object v0, p1

    .local v0, "arr$":[Landroid/net/NetworkPolicy;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v7, v4}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    iput-object v7, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v8, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .local v1, "existing":Landroid/net/NetworkPolicy;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v7

    if-lez v7, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    const-string v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Normalization replaced "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v8, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v8, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "existing":Landroid/net/NetworkPolicy;
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    return-void
.end method

.method private notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNotificationsLocked() - template : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private notifyVideoCallOverLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matchRule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AlreadySent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.VIDEO_DATAUSAGE_REACH_TO_LIMIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readPolicyLocked()V
    .locals 33

    .prologue
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    const/16 v21, 0x0

    .local v21, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v21

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v22

    .local v22, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v30, 0x1

    .local v30, "version":I
    :cond_0
    :goto_0
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v28

    .local v28, "type":I
    const/4 v4, 0x1

    move/from16 v0, v28

    if-eq v0, v4, :cond_11

    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v27

    .local v27, "tag":Ljava/lang/String;
    const/4 v4, 0x2

    move/from16 v0, v28

    if-ne v0, v4, :cond_0

    const-string v4, "policy-list"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "version"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v30

    const/4 v4, 0x3

    move/from16 v0, v30

    if-lt v0, v4, :cond_1

    const-string v4, "restrictBackground"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v31, "CscFeature_Common_ConfigPco"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .local v20, "feature":Ljava/lang/String;
    const-string v4, "COMMON"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundbyPco()Z

    move-result v4

    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v4, v0, :cond_0

    const-string v4, "NetworkPolicy"

    const-string v31, "readPolicyLocked() PCO forces to set mRestrictBackground as true"

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v20    # "feature":Ljava/lang/String;
    .end local v22    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v27    # "tag":Ljava/lang/String;
    .end local v28    # "type":I
    .end local v30    # "version":I
    :catch_0
    move-exception v19

    .local v19, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeLegacyBackgroundData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v21 .. v21}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local v19    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .restart local v22    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v27    # "tag":Ljava/lang/String;
    .restart local v28    # "type":I
    .restart local v30    # "version":I
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v22    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v27    # "tag":Ljava/lang/String;
    .end local v28    # "type":I
    .end local v30    # "version":I
    :catch_1
    move-exception v19

    .local v19, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "NetworkPolicy"

    const-string v31, "problem reading network policy"

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static/range {v21 .. v21}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .end local v19    # "e":Ljava/io/IOException;
    .restart local v22    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v27    # "tag":Ljava/lang/String;
    .restart local v28    # "type":I
    .restart local v30    # "version":I
    :cond_2
    :try_start_4
    const-string v4, "network-policy"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "networkTemplate"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v24

    .local v24, "networkTemplate":I
    const/4 v4, 0x0

    const-string v31, "subscriberId"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .local v26, "subscriberId":Ljava/lang/String;
    const/16 v4, 0x9

    move/from16 v0, v30

    if-lt v0, v4, :cond_3

    const/4 v4, 0x0

    const-string v31, "networkId"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .local v23, "networkId":Ljava/lang/String;
    :goto_3
    const-string v4, "cycleDay"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .local v6, "cycleDay":I
    const/4 v4, 0x6

    move/from16 v0, v30

    if-lt v0, v4, :cond_4

    const/4 v4, 0x0

    const-string v31, "cycleTimezone"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "cycleTimezone":Ljava/lang/String;
    :goto_4
    const-string v4, "warningBytes"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v8

    .local v8, "warningBytes":J
    const-string v4, "limitBytes"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    .local v10, "limitBytes":J
    const/4 v4, 0x5

    move/from16 v0, v30

    if-lt v0, v4, :cond_5

    const-string v4, "lastLimitSnooze"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .local v14, "lastLimitSnooze":J
    :goto_5
    const/4 v4, 0x4

    move/from16 v0, v30

    if-lt v0, v4, :cond_7

    const-string v4, "metered"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    .local v16, "metered":Z
    :goto_6
    const/4 v4, 0x5

    move/from16 v0, v30

    if-lt v0, v4, :cond_8

    const-string v4, "lastWarningSnooze"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v12

    .local v12, "lastWarningSnooze":J
    :goto_7
    const/4 v4, 0x7

    move/from16 v0, v30

    if-lt v0, v4, :cond_9

    const-string v4, "inferred"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v17

    .local v17, "inferred":Z
    :goto_8
    new-instance v5, Landroid/net/NetworkTemplate;

    move/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-direct {v5, v0, v1, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .local v5, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move-object/from16 v31, v0

    new-instance v4, Landroid/net/NetworkPolicy;

    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .end local v5    # "template":Landroid/net/NetworkTemplate;
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v12    # "lastWarningSnooze":J
    .end local v14    # "lastLimitSnooze":J
    .end local v16    # "metered":Z
    .end local v17    # "inferred":Z
    .end local v22    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v23    # "networkId":Ljava/lang/String;
    .end local v24    # "networkTemplate":I
    .end local v26    # "subscriberId":Ljava/lang/String;
    .end local v27    # "tag":Ljava/lang/String;
    .end local v28    # "type":I
    .end local v30    # "version":I
    :catch_2
    move-exception v19

    .local v19, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    const-string v4, "NetworkPolicy"

    const-string v31, "problem reading network policy"

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static/range {v21 .. v21}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_2

    .end local v19    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v22    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24    # "networkTemplate":I
    .restart local v26    # "subscriberId":Ljava/lang/String;
    .restart local v27    # "tag":Ljava/lang/String;
    .restart local v28    # "type":I
    .restart local v30    # "version":I
    :cond_3
    const/16 v23, 0x0

    .restart local v23    # "networkId":Ljava/lang/String;
    goto/16 :goto_3

    .restart local v6    # "cycleDay":I
    :cond_4
    :try_start_6
    const-string v7, "UTC"

    .restart local v7    # "cycleTimezone":Ljava/lang/String;
    goto :goto_4

    .restart local v8    # "warningBytes":J
    .restart local v10    # "limitBytes":J
    :cond_5
    const/4 v4, 0x2

    move/from16 v0, v30

    if-lt v0, v4, :cond_6

    const-string v4, "lastSnooze"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .restart local v14    # "lastLimitSnooze":J
    goto :goto_5

    .end local v14    # "lastLimitSnooze":J
    :cond_6
    const-wide/16 v14, -0x1

    .restart local v14    # "lastLimitSnooze":J
    goto :goto_5

    :cond_7
    packed-switch v24, :pswitch_data_0

    :pswitch_0
    const/16 v16, 0x0

    .restart local v16    # "metered":Z
    goto :goto_6

    .end local v16    # "metered":Z
    :pswitch_1
    const/16 v16, 0x1

    .restart local v16    # "metered":Z
    goto :goto_6

    :cond_8
    const-wide/16 v12, -0x1

    .restart local v12    # "lastWarningSnooze":J
    goto :goto_7

    :cond_9
    const/16 v17, 0x0

    .restart local v17    # "inferred":Z
    goto :goto_8

    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v12    # "lastWarningSnooze":J
    .end local v14    # "lastLimitSnooze":J
    .end local v16    # "metered":Z
    .end local v17    # "inferred":Z
    .end local v23    # "networkId":Ljava/lang/String;
    .end local v24    # "networkTemplate":I
    .end local v26    # "subscriberId":Ljava/lang/String;
    :cond_a
    const-string v4, "uid-policy"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "uid"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v29

    .local v29, "uid":I
    const-string v4, "policy"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v25

    .local v25, "policy":I
    invoke-static/range {v29 .. v29}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v25

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .end local v22    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v25    # "policy":I
    .end local v27    # "tag":Ljava/lang/String;
    .end local v28    # "type":I
    .end local v29    # "uid":I
    .end local v30    # "version":I
    :catchall_0
    move-exception v4

    invoke-static/range {v21 .. v21}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .restart local v22    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v25    # "policy":I
    .restart local v27    # "tag":Ljava/lang/String;
    .restart local v28    # "type":I
    .restart local v29    # "uid":I
    .restart local v30    # "version":I
    :cond_b
    :try_start_7
    const-string v4, "NetworkPolicy"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "unable to apply policy to UID "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "; ignoring"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v25    # "policy":I
    .end local v29    # "uid":I
    :cond_c
    const-string v4, "uid-roaming-policy"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "uid"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v29

    .restart local v29    # "uid":I
    const-string v4, "policy"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v25

    .restart local v25    # "policy":I
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setRoamingReduction(II)V

    goto/16 :goto_0

    .end local v25    # "policy":I
    .end local v29    # "uid":I
    :cond_d
    const-string v4, "app-policy"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "appId"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v18

    .local v18, "appId":I
    const-string v4, "policy"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v25

    .restart local v25    # "policy":I
    const/4 v4, 0x0

    move/from16 v0, v18

    invoke-static {v4, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v29

    .restart local v29    # "uid":I
    invoke-static/range {v29 .. v29}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v25

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    goto/16 :goto_0

    :cond_e
    const-string v4, "NetworkPolicy"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "unable to apply policy to UID "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "; ignoring"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v18    # "appId":I
    .end local v25    # "policy":I
    .end local v29    # "uid":I
    :cond_f
    const-string v4, "firewall-policy"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "uid"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v29

    .restart local v29    # "uid":I
    const-string v4, "policy"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v25

    .restart local v25    # "policy":I
    invoke-static/range {v29 .. v29}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v25

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallPolicyUncheckedLocked(IIZ)V

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->applyFirewallRules(II)V

    goto/16 :goto_0

    :cond_10
    const-string v4, "NetworkPolicy"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "unable to apply policy to UID "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "; ignoring"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .end local v25    # "policy":I
    .end local v27    # "tag":Ljava/lang/String;
    .end local v29    # "uid":I
    :cond_11
    invoke-static/range {v21 .. v21}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private removeFirewallPolicyLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .local v0, "policy":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->removeFirewallRules(II)V

    :cond_0
    return-void
.end method

.method private removeFirewallRules(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleMobileData(IZ)V

    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove FIREWALL_POLICY_REJECT_MOBILE_DATA for UID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/os/INetworkManagementService;->setFirewallRuleWifi(IZ)V

    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove FIREWALL_POLICY_REJECT_WIFI for UID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private removeInterfaceQuota(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem removing interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private removeUidState(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUidStateLocked(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setFirewallPolicyUncheckedLocked(IIZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .prologue
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    :goto_0
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method private setInterfaceQuota(Ljava/lang/String;J)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem setting interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .locals 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "enabled"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .local v0, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unexpected template"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isDdsSimStateReady()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    const/4 v1, 0x6

    invoke-direct {p0, v1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    :cond_0
    :goto_0
    :pswitch_2
    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isDdsSimStateReady()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1c

    invoke-direct {p0, v1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x1

    invoke-direct {p0, v1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x9

    invoke-direct {p0, v1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setPolicyDataEnable(IZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private setPolicyDataEnable(IZ)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "enabled"    # Z

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->setPolicyDataEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setRoamingReductionRules(Z)V
    .locals 14
    .param p1, "allowed"    # Z

    .prologue
    const-string v11, "NetworkPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setRoamingReductionRules allowed:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRRWhiteListApplied:Z

    if-nez v11, :cond_6

    const/4 v3, 0x0

    .local v3, "cscAllowRRList":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Common_ConfigAllowedPackagesDuringRoamingReduction"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .local v8, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    const-string v11, ","

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "listApps":[Ljava/lang/String;
    const-string v11, "NetworkPolicy"

    const-string v12, "Delete previous Whitelist."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-ge v5, v11, :cond_1

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    .local v10, "uid":I
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    .local v9, "policy":I
    const/16 v11, 0x1002

    if-ne v9, v11, :cond_0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v10, v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidRoamingPolicyUncheckedLocked(IIZ)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v9    # "policy":I
    .end local v10    # "uid":I
    :cond_1
    const-string v11, "NetworkPolicy"

    const-string v12, "Apply Roaming Reduction Whitelist."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_1
    array-length v11, v6

    if-ge v5, v11, :cond_4

    aget-object v11, v6, v5

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .local v7, "pkg":Ljava/lang/String;
    const-string v11, "NetworkPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "package name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v8, v7, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .local v1, "appid":I
    const-string v11, "NetworkPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "package uid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, 0x270f

    if-le v1, v11, :cond_2

    const/16 v11, 0x1002

    const/4 v12, 0x0

    invoke-direct {p0, v1, v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidRoamingPolicyUncheckedLocked(IIZ)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appid":I
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v5    # "i":I
    .end local v6    # "listApps":[Ljava/lang/String;
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_3
    new-instance v11, Ljava/lang/String;

    const-string v12, "cscAllowRRList is null."

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingAppliedReason:Ljava/lang/String;

    const-string v11, "NetworkPolicy"

    const-string v12, "cscAllowRRList is null."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRRWhiteListApplied:Z

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingAppliedReason:Ljava/lang/String;

    if-nez v11, :cond_5

    new-instance v11, Ljava/lang/String;

    const-string v12, "success"

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingAppliedReason:Ljava/lang/String;

    .end local v3    # "cscAllowRRList":Ljava/lang/String;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_5
    :goto_3
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-ge v5, v11, :cond_8

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    .restart local v10    # "uid":I
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    .restart local v9    # "policy":I
    const-string v11, "NetworkPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mRoamingReductionPolicy uid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", policy: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    invoke-direct {p0, v10, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->setWhiteListUidNetworkRules(II)V

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .end local v5    # "i":I
    .end local v9    # "policy":I
    .end local v10    # "uid":I
    :cond_6
    new-instance v11, Ljava/lang/String;

    const-string v12, "already applied"

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingAppliedReason:Ljava/lang/String;

    goto :goto_3

    .restart local v5    # "i":I
    .restart local v9    # "policy":I
    .restart local v10    # "uid":I
    :cond_7
    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setWhiteListUidNetworkRules(II)V

    goto :goto_5

    .end local v9    # "policy":I
    .end local v10    # "uid":I
    :cond_8
    if-nez p1, :cond_a

    const/4 v5, 0x0

    :goto_6
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    if-ge v5, v11, :cond_a

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    .restart local v10    # "uid":I
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    .local v2, "applied":Z
    const-string v11, "NetworkPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mRoamingReductionRule uid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", applied: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_9

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setWhiteListUidNetworkRules(II)V

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .end local v2    # "applied":Z
    .end local v10    # "uid":I
    :cond_a
    :try_start_1
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v11, p1}, Landroid/os/INetworkManagementService;->setRoamingReductionRules(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_7
    return-void

    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/IllegalStateException;
    const-string v11, "NetworkPolicy"

    const-string v12, "problem setting uid rules"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v11

    goto :goto_7

    .restart local v3    # "cscAllowRRList":Ljava/lang/String;
    .restart local v6    # "listApps":[Ljava/lang/String;
    .restart local v7    # "pkg":Ljava/lang/String;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v11

    goto/16 :goto_2
.end method

.method private setUidAllowedForDataUnchecked(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidAllowedForData(I)I

    move-result v0

    .local v0, "oldPolicy":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidAllowedForData:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidAllowedForData:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_0
    monitor-exit v2

    return-void

    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setUidFirewallRule(III)V
    .locals 3
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .prologue
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem setting firewall uid rules"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private setUidFirewallRules(ILandroid/util/SparseIntArray;)V
    .locals 7
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;

    .prologue
    :try_start_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .local v3, "size":I
    new-array v4, v3, [I

    .local v4, "uids":[I
    new-array v2, v3, [I

    .local v2, "rules":[I
    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    aput v5, v4, v1

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    aput v5, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p1, v4, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "index":I
    .end local v2    # "rules":[I
    .end local v3    # "size":I
    .end local v4    # "uids":[I
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v5, "NetworkPolicy"

    const-string v6, "problem setting firewall uid rules"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private setUidNetworkRules(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "rejectOnQuotaInterfaces"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->setUidNetworkRules(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem setting uid rules"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private setUidPolicyUncheckedLocked(IIZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    :cond_0
    return-void
.end method

.method private setUidRoamingPolicyUncheckedLocked(IIZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingState:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setWhiteListUidNetworkRules(II)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    :cond_1
    return-void
.end method

.method private setWhiteListUidNetworkRules(II)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    const/4 v3, 0x0

    if-nez p2, :cond_1

    move v0, v3

    .local v0, "allowed":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .local v1, "appliedRule":Z
    if-ne v0, v1, :cond_2

    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Roaming rule("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is already applied for uid("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    .end local v0    # "allowed":Z
    .end local v1    # "appliedRule":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .restart local v0    # "allowed":Z
    .restart local v1    # "appliedRule":Z
    :cond_2
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReduction:Z

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p1, v0}, Landroid/os/INetworkManagementService;->setWhiteListUidNetworkRules(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "NetworkPolicy"

    const-string v4, "problem setting uid rules"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private updateRulesForScreenLocked()V
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const/4 v4, 0x4

    if-gt v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .local v2, "uid":I
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .end local v2    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateScreenOn(Z)V
    .locals 2
    .param p1, "proxSensor"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForScreenLocked()V

    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private updateUidState(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateUidStateLocked(II)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateVideoCallLocked()V
    .locals 14

    .prologue
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v6

    .local v6, "currentTime":J
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkPolicy;

    .local v9, "policy":Landroid/net/NetworkPolicy;
    iget-wide v0, v9, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v12, -0x1

    cmp-long v0, v0, v12

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v6, v7, v9}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .local v2, "start":J
    move-wide v4, v6

    .local v4, "end":J
    iget-object v1, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v10

    .local v10, "totalBytes":J
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mIsVideoCall: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, ", mHasEpdgCall:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHasEpdgCall:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    if-eqz v0, :cond_0

    invoke-virtual {v9, v10, v11}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyVideoCallOverLimitLocked(Landroid/net/NetworkTemplate;)V

    goto :goto_0

    .end local v2    # "start":J
    .end local v4    # "end":J
    .end local v9    # "policy":Landroid/net/NetworkPolicy;
    .end local v10    # "totalBytes":J
    :cond_1
    return-void
.end method

.method private upgradeLegacyBackgroundData()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "background_data"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v5, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v6, "enterprise_policy"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_0

    const-string v4, "NetworkPolicy"

    const-string v6, "edm is not null 1"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .local v3, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    iput-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .end local v3    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Common_ConfigPco"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "feature":Ljava/lang/String;
    const-string v4, "COMMON"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundbyPco()Z

    move-result v4

    if-ne v4, v5, :cond_1

    const-string v4, "NetworkPolicy"

    const-string v6, "upgradeLegacyBackgroundData() PCO forces to set mRestrictBackground as true"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    :cond_1
    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v4, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "broadcast":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_2
    return-void

    .end local v1    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v2    # "feature":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private validatePoliciesToSet([Landroid/net/NetworkPolicy;)V
    .locals 7
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    move-object v0, p1

    .local v0, "arr$":[Landroid/net/NetworkPolicy;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "policy":Landroid/net/NetworkPolicy;
    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected template "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .local v0, "policies":[Landroid/net/NetworkPolicy;
    const-class v1, Landroid/net/NetworkPolicy;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policies":[Landroid/net/NetworkPolicy;
    check-cast v0, [Landroid/net/NetworkPolicy;

    .restart local v0    # "policies":[Landroid/net/NetworkPolicy;
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    return-void
.end method

.method public addUidPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot apply policy to UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .local v0, "oldPolicy":I
    or-int/2addr p2, v0

    if-eq v0, p2, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    :cond_1
    monitor-exit v2

    return-void

    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    .prologue
    const-string v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    return-void
.end method

.method public bindNotificationManager(Landroid/app/INotificationManager;)V
    .locals 1
    .param p1, "notifManager"    # Landroid/app/INotificationManager;

    .prologue
    const-string v0, "missing INotificationManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/INotificationManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    return-void
.end method

.method public checkFireWallPermission(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isFirstActivityStart"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v16, "android.permission.DUMP"

    const-string v17, "NetworkPolicy"

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v15, "  "

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v15}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .local v5, "fout":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v3, Landroid/util/ArraySet;

    move-object/from16 v0, p3

    array-length v15, v0

    invoke-direct {v3, v15}, Landroid/util/ArraySet;-><init>(I)V

    .local v3, "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v4, p3

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v2, v4, v7

    .local v2, "arg":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v2    # "arg":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_0
    const-string v15, "--unsnooze"

    invoke-virtual {v3, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    add-int/lit8 v6, v15, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/NetworkPolicy;

    invoke-virtual {v15}, Landroid/net/NetworkPolicy;->clearSnooze()V

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    const-string v15, "Cleared snooze timestamps"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v16

    :goto_2
    return-void

    .end local v6    # "i":I
    :cond_2
    const-string v15, "System ready: "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v15, "Restrict background: "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v15, "Restrict power: "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v15, "Device idle: "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v15, "Restrict on LPM: "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBgInLowPowerMode:Z

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v15, "mRoamingReduction: "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReduction:Z

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v15, "mRoamingState: "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v15, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingState:Z

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v15, "mRRWhiteListApplied: "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRRWhiteListApplied:Z

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v15, "mRoamingAppliedReason: "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingAppliedReason:Ljava/lang/String;

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v15, "Network policies:"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v6, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/NetworkPolicy;

    invoke-virtual {v15}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    const-string v15, "Metered ifaces: "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v15, "Policy for UIDs:"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    .local v12, "size":I
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v12, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    .local v14, "uid":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .local v10, "policy":I
    const-string v15, "UID="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v15, " policy="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .end local v10    # "policy":I
    .end local v14    # "uid":I
    :cond_4
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    if-lez v12, :cond_6

    const-string v15, "Power save whitelist (except idle) app ids:"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v12, :cond_5

    const-string v15, "UID="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v15, ": "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    if-lez v12, :cond_8

    const-string v15, "Power save whitelist app ids:"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v12, :cond_7

    const-string v15, "UID="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v15, ": "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidAllowedForData:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-lez v12, :cond_a

    const-string v15, "Uid Allowed data app ids:"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v12, :cond_9

    const-string v15, "UID="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidAllowedForData:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v15, ": "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidAllowedForData:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_9
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    if-lez v12, :cond_c

    const-string v15, "Power save temp whitelist app ids:"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v12, :cond_b

    const-string v15, "UID="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v15, ": "

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_b
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    const-string v15, "Status for Roaming Reduction Policy UIDs:"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v12, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    .restart local v14    # "uid":I
    const-string v15, "UID="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-virtual {v15, v14, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .local v13, "state":I
    const-string v15, " state="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const/4 v15, 0x2

    if-gt v13, v15, :cond_d

    const-string v15, " (fg)"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v15, v14, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .restart local v10    # "policy":I
    const-string v15, " policy ="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v15, -0x1

    if-ne v10, v15, :cond_f

    const-string v15, "UNKNOWN"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_b
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .end local v10    # "policy":I
    :cond_d
    const/4 v15, 0x4

    if-gt v13, v15, :cond_e

    const-string v15, " (fg svc)"

    :goto_c
    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a

    .end local v6    # "i":I
    .end local v12    # "size":I
    .end local v13    # "state":I
    .end local v14    # "uid":I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .restart local v6    # "i":I
    .restart local v12    # "size":I
    .restart local v13    # "state":I
    .restart local v14    # "uid":I
    :cond_e
    :try_start_1
    const-string v15, " (bg)"

    goto :goto_c

    .restart local v10    # "policy":I
    :cond_f
    invoke-virtual {v5, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    goto :goto_b

    .end local v10    # "policy":I
    .end local v13    # "state":I
    .end local v14    # "uid":I
    :cond_10
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    const-string v15, "Status for Roaming Reduction Rule UIDs:"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v12, :cond_14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    .restart local v14    # "uid":I
    const-string v15, "UID="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-virtual {v15, v14, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .restart local v13    # "state":I
    const-string v15, " state="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const/4 v15, 0x2

    if-gt v13, v15, :cond_11

    const-string v15, " (fg)"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .local v1, "applied":Z
    if-eqz v1, :cond_13

    const-string v15, " applied = true"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_f
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .end local v1    # "applied":Z
    :cond_11
    const/4 v15, 0x4

    if-gt v13, v15, :cond_12

    const-string v15, " (fg svc)"

    :goto_10
    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_e

    :cond_12
    const-string v15, " (bg)"

    goto :goto_10

    .restart local v1    # "applied":Z
    :cond_13
    const-string v15, " applied = false"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f

    .end local v1    # "applied":Z
    .end local v13    # "state":I
    .end local v14    # "uid":I
    :cond_14
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    .local v8, "knownUids":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-static {v15, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-static {v15, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    const-string v15, "Status for known UIDs:"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    const/4 v6, 0x0

    :goto_11
    if-ge v6, v12, :cond_17

    invoke-virtual {v8, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    .restart local v14    # "uid":I
    const-string v15, "UID="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-virtual {v15, v14, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .restart local v13    # "state":I
    const-string v15, " state="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const/4 v15, 0x2

    if-gt v13, v15, :cond_15

    const-string v15, " (fg)"

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v15, v14, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    .local v11, "rule":I
    const-string v15, " rule="

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-class v15, Landroid/net/NetworkPolicyManager;

    const-string v17, "RULE_"

    move-object/from16 v0, v17

    invoke-static {v15, v0, v11}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .end local v11    # "rule":I
    :cond_15
    const/4 v15, 0x4

    if-gt v13, v15, :cond_16

    const-string v15, " (fg svc)"

    :goto_13
    invoke-virtual {v5, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_12

    :cond_16
    const-string v15, " (bg)"

    goto :goto_13

    .end local v13    # "state":I
    .end local v14    # "uid":I
    :cond_17
    invoke-virtual {v5}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method public factoryReset(Ljava/lang/String;)V
    .locals 14
    .param p1, "subscriber"    # Ljava/lang/String;

    .prologue
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v11, "NetworkPolicy"

    invoke-virtual {v7, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string v10, "no_network_reset"

    invoke-virtual {v7, v10}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x10e007f

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v10, v7

    const-wide/32 v12, 0x100000

    mul-long v8, v10, v12

    .local v8, "warningBytes":J
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_2

    const-wide/16 v8, -0x1

    :cond_2
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v3

    .local v3, "policies":[Landroid/net/NetworkPolicy;
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .local v5, "template":Landroid/net/NetworkTemplate;
    move-object v0, v3

    .local v0, "arr$":[Landroid/net/NetworkPolicy;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v4, v0, v1

    .local v4, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v5}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-wide/16 v10, -0x1

    iput-wide v10, v4, Landroid/net/NetworkPolicy;->limitBytes:J

    iput-wide v8, v4, Landroid/net/NetworkPolicy;->warningBytes:J

    const/4 v7, 0x0

    iput-boolean v7, v4, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {v4}, Landroid/net/NetworkPolicy;->clearSnooze()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string v10, "no_control_apps"

    invoke-virtual {v7, v10}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    aget v6, v0, v1

    .local v6, "uid":I
    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getFirewallRuleMobileData(I)Z
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .local v0, "policy":I
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFirewallRuleMobileData UID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " policy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit v2

    return v1

    .end local v0    # "policy":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFirewallRuleWifi(I)Z
    .locals 6
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .local v0, "policy":I
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFirewallRuleWifi UID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " policy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit v2

    return v1

    .end local v0    # "policy":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMeteredIfaces()[Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    const-string v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    new-array v1, v3, [Landroid/net/NetworkPolicy;

    :goto_0
    return-object v1

    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "size":I
    new-array v1, v2, [Landroid/net/NetworkPolicy;

    .local v1, "policies":[Landroid/net/NetworkPolicy;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "policies":[Landroid/net/NetworkPolicy;
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getRestrictBackground()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRoamingReduction(I)I
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "configNetworkTypeCapability":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "SPR-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReduction:Z

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "NetworkPolicy"

    const-string v3, "setRoamingReduction API allows only SPR model"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUidAllowedForData(I)I
    .locals 3
    .param p1, "uid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidAllowedForData:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidPolicy(I)I
    .locals 3
    .param p1, "uid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidsWithPolicy(I)[I
    .locals 7
    .param p1, "policy"    # I

    .prologue
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v3, v4, [I

    .local v3, "uids":[I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .local v1, "uid":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .local v2, "uidPolicy":I
    if-ne v2, p1, :cond_0

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "uid":I
    .end local v2    # "uidPolicy":I
    :cond_1
    monitor-exit v5

    return-object v3

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isNetworkMetered(Landroid/net/NetworkState;)Z
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v0

    .local v0, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .local v1, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    iget-boolean v3, v1, Landroid/net/NetworkPolicy;->metered:Z

    goto :goto_0

    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_2
    iget-object v4, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .local v2, "type":I
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x6

    if-eq v2, v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isUidForeground(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundLocked(I)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isUidForegroundLocked(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/16 v3, 0x10

    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUidForegroundLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScreenOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uidstate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mProxSensorScreenOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mProxSensorScreenOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mProxSensorScreenOff:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUidForegroundLockedForPSM(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method maybeRefreshTrustedTime()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    :cond_0
    return-void
.end method

.method public onScreenStateChanged(ZI)V
    .locals 3
    .param p1, "state"    # Z
    .param p2, "reason"    # I

    .prologue
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenStateChanged, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mProxSensorScreenOff:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mProxSensorScreenOff:Z

    goto :goto_0
.end method

.method performSnooze(Landroid/net/NetworkTemplate;I)V
    .locals 7
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "type"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "currentTime":J
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to find policy for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    packed-switch p2, :pswitch_data_0

    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "unexpected type"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    monitor-exit v4

    return-void

    :pswitch_1
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastLimitSnooze:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method purgePowerSaveTempWhitelistLocked()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method removePoliciesForUserLocked(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x0

    new-array v5, v6, [I

    .local v5, "uids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_0

    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "uid":I
    :cond_1
    array-length v6, v5

    if-lez v6, :cond_3

    move-object v0, v5

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget v4, v0, v2

    .restart local v4    # "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->delete(I)V

    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4    # "uid":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_3
    return-void
.end method

.method public removeUidPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot apply policy to UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .local v0, "oldPolicy":I
    xor-int/lit8 v1, p2, -0x1

    and-int p2, v0, v1

    if-eq v0, p2, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    :cond_1
    monitor-exit v2

    return-void

    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeUidStateLocked(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/16 v3, 0x10

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .local v1, "oldUidState":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    if-eq v1, v3, :cond_0

    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidStateChangeLocked(III)V

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleLocked(I)V

    .end local v1    # "oldUidState":I
    :cond_0
    return-void
.end method

.method public setDeviceIdleMode(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    const-string v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFirewallRuleMobileData(IZ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v5, "NetworkPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserRestrictBackgroundUidList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .local v0, "policy":I
    const-string v1, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFirewallRuleMobileData UID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " allow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " policy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_3

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallPolicyUncheckedLocked(IIZ)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->applyFirewallRules(II)V

    :cond_0
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .end local v0    # "policy":I
    :cond_1
    if-eqz p2, :cond_2

    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    .restart local v0    # "policy":I
    :cond_3
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallPolicyUncheckedLocked(IIZ)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeFirewallRules(II)V

    goto :goto_1

    .end local v0    # "policy":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setFirewallRuleMobileDataMap(Ljava/util/Map;)V
    .locals 5
    .param p1, "uidAllowedMap"    # Ljava/util/Map;

    .prologue
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallRuleMobileData(IZ)V

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_0
    return-void
.end method

.method public setFirewallRuleWifi(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .local v0, "policy":I
    const-string v1, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFirewallRuleWifi UID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " allow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " policy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallPolicyUncheckedLocked(IIZ)V

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->applyFirewallRules(II)V

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, -0x3

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallPolicyUncheckedLocked(IIZ)V

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeFirewallRules(II)V

    goto :goto_0

    .end local v0    # "policy":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFirewallRuleWifiMap(Ljava/util/Map;)V
    .locals 5
    .param p1, "uidAllowedMap"    # Ljava/util/Map;

    .prologue
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setFirewallRuleWifi(IZ)V

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_0
    return-void
.end method

.method public setLimitBackground(Z)V
    .locals 4
    .param p1, "restrictBackground"    # Z

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLimitBackground:Z

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 4
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->validatePoliciesToSet([Landroid/net/NetworkPolicy;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "China"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Hong Kong"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "NetworkPolicy"

    const-string v2, "IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setRestrictBackground(Z)V
    .locals 14
    .param p1, "restrictBackground"    # Z

    .prologue
    const/high16 v13, 0x10000000

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v12, "NetworkPolicy"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mdeleteNotifications:Z

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v11, "enterprise_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    .local v3, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v7

    .local v7, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    const/4 p1, 0x1

    iput-boolean v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mdeleteNotifications:Z

    .end local v7    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_0
    const-string v10, "ro.csc.country_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "China"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "ro.csc.country_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Hong Kong"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    :cond_1
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Common_ConfigPco"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "feature":Ljava/lang/String;
    const-string v11, "COMMON"

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundbyPco()Z

    move-result v11

    if-ne v11, v8, :cond_2

    const-string v11, "NetworkPolicy"

    const-string v12, "setRestrictBackground() PCO forces to set mRestrictBackground as true"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    :cond_2
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "data_powersaving_mode"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v10, "BgDataChanged"

    const-string v11, "notificationpannel"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v5    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v10

    const-string v11, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v10

    const-string v11, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "data_powersaving_mode"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .local v2, "data_powersaving":I
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "psm_switch"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "basic_powersaving":I
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "blackgrey_powersaving_mode"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, "black_grey_powersaving":I
    const-string v10, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "data_powersaving = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", basic_powersaving = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "black_grey_powersaving = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_5

    if-nez v0, :cond_5

    if-nez v1, :cond_5

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "powersaving_switch"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.samsung.settings.POWERSAVINGMODE_CHANGED"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v6, "powerintent":Landroid/content/Intent;
    invoke-virtual {v6, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v10, "NetworkPolicy"

    const-string v11, "send com.samsung.settings.POWERSAVINGMODE_CHANGED"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "basic_powersaving":I
    .end local v1    # "black_grey_powersaving":I
    .end local v2    # "data_powersaving":I
    .end local v6    # "powerintent":Landroid/content/Intent;
    :cond_5
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x6

    if-eqz p1, :cond_6

    :goto_0
    invoke-virtual {v10, v11, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    return-void

    .end local v4    # "feature":Ljava/lang/String;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .restart local v4    # "feature":Ljava/lang/String;
    :cond_6
    move v8, v9

    goto :goto_0
.end method

.method public setRestrictBackgroundByPco(Z)V
    .locals 7
    .param p1, "restrictBackgroundPco"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Common_ConfigPco"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "feature":Ljava/lang/String;
    const-string v2, "COMMON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRestrictBackgroundByPco() restrictBackgroundPco: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundbyPco()Z

    move-result v2

    if-ne v2, p1, :cond_0

    const-string v2, "NetworkPolicy"

    const-string v3, "setRestrictBackgroundByPco() same PCO value as before, then discard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "background_data_by_pco"

    if-eqz p1, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRestrictBackgroundByPco() save PCO: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundbyPco()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v4, :cond_3

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "background_data_by_user"

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v6, :cond_2

    :goto_2
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRestrictBackgroundByPco() save USER: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundbyUser()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundbyUser()Z

    move-result v1

    .local v1, "restrictBackgroundbyUser":Z
    const-string v2, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRestrictBackgroundByPco() PCO false, restore by USER: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v4, :cond_4

    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    goto/16 :goto_0

    .end local v1    # "restrictBackgroundbyUser":Z
    :cond_5
    const-string v2, "NetworkPolicy"

    const-string v3, "setRestrictBackgroundByPco() is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setRoamingReduction(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "configNetworkTypeCapability":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "SPR-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReduction:Z

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "NetworkPolicy"

    const-string v3, "setRoamingReduction API allows only SPR model"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .local v1, "oldPolicy":I
    if-eq v1, p2, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidRoamingPolicyUncheckedLocked(IIZ)V

    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "oldPolicy":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setUidAllowedForData(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidAllowedForDataUnchecked(II)V

    return-void
.end method

.method public setUidPolicy(II)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v5, "NetworkPolicy"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot apply policy to UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .local v2, "token":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .local v0, "oldPolicy":I
    if-eq v0, p2, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4

    return-void

    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .end local v2    # "token":J
    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .locals 5
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "token":J
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public systemReady()V
    .locals 24

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "NetworkPolicy"

    const-string v20, "bandwidth controls disabled, unable to enforce policy"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-class v19, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static/range {v19 .. v19}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/usage/UsageStatsManagerInternal;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "cscValues":Ljava/lang/String;
    if-eqz v8, :cond_1

    const-string v19, "trafficmanager"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/os/INetworkManagementService;->buildFirewall()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "user_restrict_background_uidlist"

    invoke-static/range {v20 .. v20}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mBackGroundDataSetObserver:Landroid/database/ContentObserver;

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v22}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getBackgroundDataRestrictList()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUserRestrictBackgroundUidList:Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistLocked()V

    const-class v19, Landroid/os/PowerManagerInternal;

    invoke-static/range {v19 .. v19}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PowerManagerInternal;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v19, v0

    new-instance v21, Lcom/android/server/net/NetworkPolicyManagerService$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v21, "low_power_back_data_off"

    invoke-static/range {v21 .. v21}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBgInLowPowerObserver:Landroid/database/ContentObserver;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackgroundInLowerPowerMode()Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBgInLowPowerMode:Z

    const-string v19, "NetworkPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mRestrictBgInLowPowerMode: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBgInLowPowerMode:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyLocked()V

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn(Z)V

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .local v12, "screenFilter":Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v19, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v16, Landroid/content/IntentFilter;

    const-string v19, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v16, "whitelistFilter":Landroid/content/IntentFilter;
    const-string v19, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v19, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v7, "connFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const-string v21, "android.permission.CONNECTIVITY_INTERNAL"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .local v11, "packageFilter":Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v19, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v19, "package"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    new-instance v21, Landroid/content/IntentFilter;

    const-string v22, "android.intent.action.UID_REMOVED"

    invoke-direct/range {v21 .. v22}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .local v15, "userFilter":Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v19, "android.intent.action.USER_REMOVED"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v14, Landroid/content/IntentFilter;

    const-string v19, "com.android.server.action.NETWORK_STATS_UPDATED"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v14, "statsFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const-string v21, "android.permission.READ_NETWORK_USAGE_HISTORY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v19, "com.android.server.net.action.ALLOW_BACKGROUND"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v5, "allowFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const-string v21, "android.permission.MANAGE_NETWORK_POLICY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v13, Landroid/content/IntentFilter;

    const-string v19, "com.android.server.net.action.SNOOZE_WARNING"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v13, "snoozeWarningFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const-string v21, "android.permission.MANAGE_NETWORK_POLICY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v17, Landroid/content/IntentFilter;

    const-string v19, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v17, "wifiConfigFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v18, Landroid/content/IntentFilter;

    const-string v19, "android.net.wifi.STATE_CHANGE"

    invoke-direct/range {v18 .. v19}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v18, "wifiStateFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    const-string v19, "NetworkPolicy"

    const-string v20, ">> NetworkPolicyManagerService"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .local v10, "mVideoCallReceiver":Landroid/content/BroadcastReceiver;
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .local v6, "callFilter":Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.PRECISE_CALL_STATE"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v19, "NetworkPolicy"

    const-string v20, "<< NetworkPolicyManagerService"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/content/IntentFilter;

    const-string v19, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v9, "localeChanged":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto/16 :goto_0

    .end local v5    # "allowFilter":Landroid/content/IntentFilter;
    .end local v6    # "callFilter":Landroid/content/IntentFilter;
    .end local v7    # "connFilter":Landroid/content/IntentFilter;
    .end local v9    # "localeChanged":Landroid/content/IntentFilter;
    .end local v10    # "mVideoCallReceiver":Landroid/content/BroadcastReceiver;
    .end local v11    # "packageFilter":Landroid/content/IntentFilter;
    .end local v12    # "screenFilter":Landroid/content/IntentFilter;
    .end local v13    # "snoozeWarningFilter":Landroid/content/IntentFilter;
    .end local v14    # "statsFilter":Landroid/content/IntentFilter;
    .end local v15    # "userFilter":Landroid/content/IntentFilter;
    .end local v16    # "whitelistFilter":Landroid/content/IntentFilter;
    .end local v17    # "wifiConfigFilter":Landroid/content/IntentFilter;
    .end local v18    # "wifiStateFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v19

    :try_start_3
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v19

    :catch_0
    move-exception v19

    goto/16 :goto_2

    :catch_1
    move-exception v19

    goto/16 :goto_1
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method updateNetworkEnabledLocked()V
    .locals 20

    .prologue
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "configNetworkTypeCapability":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v2, "VZW-"

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isATT()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateVideoCallLocked()V

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v10

    .local v10, "currentTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v12, v2, -0x1

    .local v12, "i":I
    :goto_0
    if-ltz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/NetworkPolicy;

    .local v15, "policy":Landroid/net/NetworkPolicy;
    iget-wide v2, v15, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v18, -0x1

    cmp-long v2, v2, v18

    if-eqz v2, :cond_3

    invoke-virtual {v15}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    :try_start_0
    iget-object v2, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "NetworkPolicy"

    const-string v3, ""

    invoke-static {v2, v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    invoke-static {v10, v11, v15}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .local v4, "start":J
    move-wide v6, v10

    .local v6, "end":J
    iget-object v3, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v16

    .local v16, "totalBytes":J
    invoke-virtual/range {v15 .. v17}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    if-nez v2, :cond_5

    iget-wide v2, v15, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    const/4 v14, 0x1

    .local v14, "overLimitWithoutSnooze":Z
    :goto_2
    if-nez v14, :cond_6

    const/4 v13, 0x1

    .local v13, "networkEnabled":Z
    :goto_3
    :try_start_1
    iget-object v2, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v9

    .restart local v9    # "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "NetworkPolicy"

    const-string v3, ""

    invoke-static {v2, v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v13    # "networkEnabled":Z
    .end local v14    # "overLimitWithoutSnooze":Z
    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    .restart local v14    # "overLimitWithoutSnooze":Z
    :cond_6
    const/4 v13, 0x0

    goto :goto_3

    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v14    # "overLimitWithoutSnooze":Z
    .end local v15    # "policy":Landroid/net/NetworkPolicy;
    .end local v16    # "totalBytes":J
    :cond_7
    return-void
.end method

.method updateNetworkRulesLocked()V
    .locals 44

    .prologue
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v4}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v39

    .local v39, "states":[Landroid/net/NetworkState;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v4, :cond_3

    const/16 v32, 0x1

    .local v32, "powerSave":Z
    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, v39

    array-length v4, v0

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    .local v12, "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    new-instance v13, Landroid/util/ArraySet;

    move-object/from16 v0, v39

    array-length v4, v0

    invoke-direct {v13, v4}, Landroid/util/ArraySet;-><init>(I)V

    .local v13, "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v10, v39

    .local v10, "arr$":[Landroid/net/NetworkState;
    array-length v0, v10

    move/from16 v26, v0

    .local v26, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    move/from16 v19, v18

    .end local v18    # "i$":I
    .local v19, "i$":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    aget-object v38, v10, v19

    .local v38, "state":Landroid/net/NetworkState;
    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_4

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v4, :cond_0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v38

    invoke-static {v4, v0}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v20

    .local v20, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    .local v11, "baseIface":Ljava/lang/String;
    if-eqz v11, :cond_1

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v32, :cond_1

    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object/from16 v0, v38

    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v37

    .local v37, "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .end local v19    # "i$":I
    .local v18, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/net/LinkProperties;

    .local v36, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual/range {v36 .. v36}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v33

    .local v33, "stackedIface":Ljava/lang/String;
    if-eqz v33, :cond_2

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v32, :cond_2

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v10    # "arr$":[Landroid/net/NetworkState;
    .end local v11    # "baseIface":Ljava/lang/String;
    .end local v12    # "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    .end local v13    # "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "ident":Landroid/net/NetworkIdentity;
    .end local v26    # "len$":I
    .end local v32    # "powerSave":Z
    .end local v33    # "stackedIface":Ljava/lang/String;
    .end local v36    # "stackedLink":Landroid/net/LinkProperties;
    .end local v37    # "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    .end local v38    # "state":Landroid/net/NetworkState;
    .end local v39    # "states":[Landroid/net/NetworkState;
    :catch_0
    move-exception v14

    :goto_3
    return-void

    .restart local v39    # "states":[Landroid/net/NetworkState;
    :cond_3
    const/16 v32, 0x0

    goto/16 :goto_0

    .restart local v10    # "arr$":[Landroid/net/NetworkState;
    .restart local v12    # "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    .restart local v13    # "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v26    # "len$":I
    .restart local v32    # "powerSave":Z
    .restart local v38    # "state":Landroid/net/NetworkState;
    :cond_4
    add-int/lit8 v18, v19, 0x1

    .local v18, "i$":I
    move/from16 v19, v18

    .end local v18    # "i$":I
    .restart local v19    # "i$":I
    goto/16 :goto_1

    .end local v38    # "state":Landroid/net/NetworkState;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v23

    .local v23, "ifaceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    .local v17, "i":I
    :goto_4
    if-ltz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/net/NetworkPolicy;

    .local v31, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v25, v4, -0x1

    .local v25, "j":I
    :goto_5
    if-ltz v25, :cond_7

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/Pair;

    .local v21, "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/net/NetworkIdentity;

    invoke-virtual {v5, v4}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v25, v25, -0x1

    goto :goto_5

    .end local v21    # "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    :cond_7
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Ljava/lang/String;

    .local v24, "ifaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v24    # "ifaces":[Ljava/lang/String;
    :cond_8
    add-int/lit8 v17, v17, -0x1

    goto :goto_4

    .end local v25    # "j":I
    .end local v31    # "policy":Landroid/net/NetworkPolicy;
    :cond_9
    const-wide v28, 0x7fffffffffffffffL

    .local v28, "lowestRule":J
    new-instance v30, Landroid/util/ArraySet;

    move-object/from16 v0, v39

    array-length v4, v0

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Landroid/util/ArraySet;-><init>(I)V

    .local v30, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v8

    .local v8, "currentTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    .end local v10    # "arr$":[Landroid/net/NetworkState;
    .end local v19    # "i$":I
    :goto_6
    if-ltz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/net/NetworkPolicy;

    .restart local v31    # "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Ljava/lang/String;

    .restart local v24    # "ifaces":[Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, v31

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .local v6, "start":J
    move-object/from16 v0, v31

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v40

    .local v40, "totalBytes":J
    :goto_7
    move-object/from16 v0, v31

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v42, -0x1

    cmp-long v4, v4, v42

    if-eqz v4, :cond_e

    const/16 v16, 0x1

    .local v16, "hasWarning":Z
    :goto_8
    move-object/from16 v0, v31

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v42, -0x1

    cmp-long v4, v4, v42

    if-eqz v4, :cond_f

    const/4 v15, 0x1

    .local v15, "hasLimit":Z
    :goto_9
    if-nez v15, :cond_a

    move-object/from16 v0, v31

    iget-boolean v4, v0, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v4, :cond_13

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z

    if-eqz v4, :cond_10

    const-wide v34, 0x7fffffffffffffffL

    .local v34, "quotaBytes":J
    :goto_a
    move-object/from16 v0, v24

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_b

    const-string v4, "NetworkPolicy"

    const-string v5, "shared quota unsupported; generating rule for each iface"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v10, v24

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v26, v0

    const/16 v18, 0x0

    .restart local v18    # "i$":I
    :goto_b
    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_13

    aget-object v22, v10, v18

    .local v22, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-eqz v32, :cond_c

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .end local v6    # "start":J
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v15    # "hasLimit":Z
    .end local v16    # "hasWarning":Z
    .end local v18    # "i$":I
    .end local v22    # "iface":Ljava/lang/String;
    .end local v34    # "quotaBytes":J
    .end local v40    # "totalBytes":J
    :cond_d
    const-wide v6, 0x7fffffffffffffffL

    .restart local v6    # "start":J
    const-wide/16 v40, 0x0

    .restart local v40    # "totalBytes":J
    goto :goto_7

    :cond_e
    const/16 v16, 0x0

    goto :goto_8

    .restart local v16    # "hasWarning":Z
    :cond_f
    const/4 v15, 0x0

    goto :goto_9

    .restart local v15    # "hasLimit":Z
    :cond_10
    if-nez v15, :cond_11

    const-wide v34, 0x7fffffffffffffffL

    .restart local v34    # "quotaBytes":J
    goto :goto_a

    .end local v34    # "quotaBytes":J
    :cond_11
    move-object/from16 v0, v31

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_12

    const-wide v34, 0x7fffffffffffffffL

    .restart local v34    # "quotaBytes":J
    goto :goto_a

    .end local v34    # "quotaBytes":J
    :cond_12
    const-wide/16 v4, 0x1

    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v42, v0

    sub-long v42, v42, v40

    move-wide/from16 v0, v42

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v34

    .restart local v34    # "quotaBytes":J
    goto :goto_a

    .end local v34    # "quotaBytes":J
    :cond_13
    if-eqz v16, :cond_14

    move-object/from16 v0, v31

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v4, v4, v28

    if-gez v4, :cond_14

    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v28, v0

    :cond_14
    if-eqz v15, :cond_15

    move-object/from16 v0, v31

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v4, v4, v28

    if-gez v4, :cond_15

    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v28, v0

    :cond_15
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_6

    .end local v6    # "start":J
    .end local v15    # "hasLimit":Z
    .end local v16    # "hasWarning":Z
    .end local v24    # "ifaces":[Ljava/lang/String;
    .end local v31    # "policy":Landroid/net/NetworkPolicy;
    .end local v40    # "totalBytes":J
    :cond_16
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    :goto_c
    if-ltz v17, :cond_17

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .restart local v22    # "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    const-wide v4, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v17, -0x1

    goto :goto_c

    .end local v22    # "iface":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    :goto_d
    if-ltz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .restart local v22    # "iface":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    :cond_18
    add-int/lit8 v17, v17, -0x1

    goto :goto_d

    .end local v22    # "iface":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Ljava/lang/String;

    .local v27, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3
.end method

.method updateNotificationsLocked()V
    .locals 23

    .prologue
    new-instance v10, Landroid/util/ArraySet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-direct {v10, v4}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .local v10, "beforeNotifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v12

    .local v12, "currentTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v14, v4, -0x1

    .local v14, "i":I
    :goto_0
    if-ltz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/NetworkPolicy;

    .local v18, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, v18

    invoke-static {v12, v13, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .local v6, "start":J
    move-wide v8, v12

    .local v8, "end":J
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v20

    .local v20, "totalBytes":J
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateNotificationsLocked() - totalBytes : "

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v22, ", policy : "

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z

    if-nez v4, :cond_3

    move-object/from16 v0, v18

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "cscValues":Ljava/lang/String;
    if-eqz v11, :cond_4

    const-string v4, "trafficmanager"

    invoke-virtual {v11, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .local v15, "intent":Landroid/content/Intent;
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v4

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->DataWarningFlag:Z

    if-nez v4, :cond_5

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->DataWarningFlag:Z

    const-string v4, "android.intent.action.ACTION_DATA_WARNING"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v15    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_2
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, v18

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto/16 :goto_1

    .restart local v15    # "intent":Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v4

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->DataWarningFlag:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->DataWarningFlag:Z

    const-string v4, "android.intent.action.ACTION_DATA_WARNING_CANCEL"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v11    # "cscValues":Ljava/lang/String;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    .end local v20    # "totalBytes":J
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .local v16, "identity":J
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v4, :cond_7

    const-string v4, "NetworkPolicy:allowBackground"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueRestrictedNotification(Ljava/lang/String;)V

    :cond_7
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v14, v4, -0x1

    :goto_3
    if-ltz v14, :cond_9

    invoke-virtual {v10, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .local v19, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v14, v14, -0x1

    goto :goto_3

    .end local v19    # "tag":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method updatePowerSaveTempWhitelistLocked()V
    .locals 9

    .prologue
    :try_start_0
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v7}, Landroid/os/IDeviceIdleController;->getAppIdTempWhitelist()[I

    move-result-object v6

    .local v6, "whitelist":[I
    if-eqz v6, :cond_1

    move-object v1, v6

    .local v1, "arr$":[I
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget v5, v1, v3

    .local v5, "uid":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x1

    invoke-virtual {v7, v5, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "N":I
    .end local v1    # "arr$":[I
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "uid":I
    .end local v6    # "whitelist":[I
    :catch_0
    move-exception v7

    :cond_1
    return-void
.end method

.method updatePowerSaveWhitelistLocked()V
    .locals 8

    .prologue
    :try_start_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v5}, Landroid/os/IDeviceIdleController;->getAppIdWhitelistExceptIdle()[I

    move-result-object v4

    .local v4, "whitelist":[I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    if-eqz v4, :cond_0

    move-object v0, v4

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .local v3, "uid":I
    const-string v5, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePowerSaveWhitelistLocked, uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "uid":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v5}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    if-eqz v4, :cond_1

    move-object v0, v4

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .restart local v3    # "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "uid":I
    .end local v4    # "whitelist":[I
    :catch_0
    move-exception v5

    :cond_1
    return-void
.end method

.method updateRuleForAppIdleLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x2

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForRules(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    goto :goto_1
.end method

.method updateRuleForDeviceIdleLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdle(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-direct {p0, v2, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .end local v0    # "appId":I
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    return-void

    .restart local v0    # "appId":I
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    goto :goto_0
.end method

.method updateRulesForAppIdleLocked()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .local v6, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "ui":I
    :goto_0
    if-ltz v4, :cond_2

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .local v7, "user":Landroid/content/pm/UserInfo;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Landroid/app/usage/UsageStatsManagerInternal;->getIdleUidsForUser(I)[I

    move-result-object v2

    .local v2, "idleUids":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_1

    aget v5, v0, v1

    .local v5, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v6, v5, v12}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v5    # "uid":I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "idleUids":[I
    .end local v3    # "len$":I
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    invoke-direct {p0, v12, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRules(ILandroid/util/SparseIntArray;)V

    return-void
.end method

.method updateRulesForAppIdleParoleLocked()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .local v0, "enableChain":Z
    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainLocked(IZ)V

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidsLocked(Landroid/util/SparseIntArray;)V

    return-void

    .end local v0    # "enableChain":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateRulesForDeviceIdleLocked()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v7, :cond_4

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .local v4, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .local v5, "user":Landroid/content/pm/UserInfo;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .local v0, "appId":I
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .local v3, "uid":I
    invoke-virtual {v4, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_1
    if-ltz v1, :cond_0

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .restart local v0    # "appId":I
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .restart local v3    # "uid":I
    invoke-virtual {v4, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0    # "appId":I
    .end local v1    # "i":I
    .end local v3    # "uid":I
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    invoke-direct {p0, v8, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRules(ILandroid/util/SparseIntArray;)V

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "uidRules":Landroid/util/SparseIntArray;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_4
    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-direct {p0, v8, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainLocked(IZ)V

    return-void
.end method

.method updateRulesForGlobalChangeLocked(Z)V
    .locals 10
    .param p1, "restrictedNetworksChanged"    # Z

    .prologue
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleLocked()V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleLocked()V

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v8, 0x2200

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .local v6, "user":Landroid/content/pm/UserInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .local v5, "uid":I
    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    goto :goto_0

    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "uid":I
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    const/16 v8, 0x3f5

    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    const/16 v8, 0x3fb

    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    :cond_2
    return-void
.end method

.method updateRulesForTempWhitelistChangeLocked()V
    .locals 7

    .prologue
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .local v0, "appId":I
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .local v3, "uid":I
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleLocked(I)V

    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleLocked(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "appId":I
    .end local v1    # "i":I
    .end local v3    # "uid":I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method updateRulesForUidLocked(I)V
    .locals 13
    .param p1, "uid"    # I

    .prologue
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForRules(I)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .local v2, "ipm":Landroid/content/pm/IPackageManager;
    :try_start_0
    const-string v11, "android.permission.INTERNET"

    invoke-interface {v2, v11, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v11

    if-nez v11, :cond_0

    :goto_1
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v12, 0x0

    invoke-virtual {v11, p1, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .local v7, "uidPolicy":I
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidAllowedForData(I)I

    move-result v5

    .local v5, "uidAllowedForData":I
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundLockedForPSM(I)Z

    move-result v9

    .local v9, "uidStateForPSM":Z
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundLocked(I)Z

    move-result v6

    .local v6, "uidForeground":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "cscValues":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v11, "trafficmanager"

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    :try_start_1
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v11}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v11}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getFirewallRuleWifi(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    :cond_2
    :goto_2
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .local v0, "appId":I
    const/4 v8, 0x0

    .local v8, "uidRules":I
    if-nez v9, :cond_b

    and-int/lit8 v11, v7, 0x1

    if-eqz v11, :cond_b

    const/4 v8, 0x1

    :cond_3
    :goto_3
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    const/4 v12, 0x0

    invoke-virtual {v11, p1, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    const/4 v8, 0x2

    :cond_4
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    const/4 v12, 0x0

    invoke-virtual {v11, p1, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    const/4 v8, 0x2

    :cond_5
    if-nez v6, :cond_6

    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLimitBackground:Z

    if-eqz v11, :cond_6

    const/4 v8, 0x1

    :cond_6
    if-nez v6, :cond_7

    if-nez v5, :cond_f

    const/4 v8, 0x0

    :cond_7
    :goto_4
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v11, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .local v3, "oldRules":I
    if-nez v8, :cond_10

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v11, p1}, Landroid/util/SparseIntArray;->delete(I)V

    :goto_5
    const/4 v11, 0x1

    if-ne v8, v11, :cond_11

    const/4 v4, 0x1

    .local v4, "rejectMetered":Z
    :goto_6
    invoke-direct {p0, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidNetworkRules(IZ)V

    if-eq v3, v8, :cond_8

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12, p1, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    :cond_8
    :try_start_2
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    invoke-interface {v11, p1, v6}, Landroid/net/INetworkStatsService;->setUidForeground(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v11

    goto/16 :goto_0

    .end local v0    # "appId":I
    .end local v3    # "oldRules":I
    .end local v4    # "rejectMetered":Z
    .end local v8    # "uidRules":I
    :cond_9
    :try_start_3
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v11}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getFirewallRuleMobileData(I)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundLocked(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v11

    if-eqz v11, :cond_a

    const/4 v6, 0x1

    :goto_7
    goto/16 :goto_2

    :cond_a
    const/4 v6, 0x0

    goto :goto_7

    .restart local v0    # "appId":I
    .restart local v8    # "uidRules":I
    :cond_b
    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v11, :cond_c

    if-nez v9, :cond_3

    const/4 v8, 0x1

    goto/16 :goto_3

    :cond_c
    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v11, :cond_3

    iget-boolean v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBgInLowPowerMode:Z

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    if-nez v11, :cond_d

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    if-eqz v11, :cond_e

    :cond_d
    const/4 v10, 0x1

    .local v10, "whitelisted":Z
    :goto_8
    if-nez v10, :cond_3

    if-nez v9, :cond_3

    and-int/lit8 v11, v7, 0x2

    if-nez v11, :cond_3

    const/4 v8, 0x1

    goto/16 :goto_3

    .end local v10    # "whitelisted":Z
    :cond_e
    const/4 v10, 0x0

    goto :goto_8

    :cond_f
    const/4 v11, 0x1

    if-ne v5, v11, :cond_7

    const/4 v8, 0x1

    goto :goto_4

    .restart local v3    # "oldRules":I
    :cond_10
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v11, p1, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5

    :cond_11
    const/4 v4, 0x0

    goto :goto_6

    .end local v0    # "appId":I
    .end local v3    # "oldRules":I
    .end local v8    # "uidRules":I
    :catch_1
    move-exception v11

    goto/16 :goto_2

    .end local v1    # "cscValues":Ljava/lang/String;
    .end local v5    # "uidAllowedForData":I
    .end local v6    # "uidForeground":Z
    .end local v7    # "uidPolicy":I
    .end local v9    # "uidStateForPSM":Z
    :catch_2
    move-exception v11

    goto/16 :goto_1
.end method

.method updateRulesForUidStateChangeLocked(III)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "oldUidState"    # I
    .param p3, "newUidState"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-gt p2, v6, :cond_2

    move v3, v2

    .local v3, "oldForeground":Z
    :goto_0
    if-gt p3, v6, :cond_3

    .local v2, "newForeground":Z
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "configNetworkTypeCapability":Ljava/lang/String;
    if-eq v3, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    if-eqz v0, :cond_1

    const-string v6, "SPR-"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReduction:Z

    if-eqz v6, :cond_1

    sget-boolean v6, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingState:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundLocked(I)Z

    move-result v1

    .local v1, "isFg":Z
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .local v4, "policy_rule":I
    if-nez v4, :cond_1

    if-eqz v1, :cond_0

    const/16 v5, 0x1001

    :cond_0
    invoke-direct {p0, p1, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setWhiteListUidNetworkRules(II)V

    .end local v1    # "isFg":Z
    .end local v4    # "policy_rule":I
    :cond_1
    return-void

    .end local v0    # "configNetworkTypeCapability":Ljava/lang/String;
    .end local v2    # "newForeground":Z
    .end local v3    # "oldForeground":Z
    :cond_2
    move v3, v5

    goto :goto_0

    .restart local v3    # "oldForeground":Z
    :cond_3
    move v2, v5

    goto :goto_1
.end method

.method updateRulesForUidsLocked(Landroid/util/SparseIntArray;)V
    .locals 2
    .param p1, "uids"    # Landroid/util/SparseIntArray;

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateUidStateLocked(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .local v0, "oldUidState":I
    if-eq v0, p2, :cond_0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidStateChangeLocked(III)V

    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdle(I)Z

    move-result v1

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdle(I)Z

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleLocked(I)V

    :cond_0
    return-void
.end method

.method writePolicyLocked()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v9, 0x0

    const-string v10, "policy-list"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "version"

    const/16 v10, 0xa

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string v9, "restrictBackground"

    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v2, v9, :cond_2

    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkPolicy;

    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .local v7, "template":Landroid/net/NetworkTemplate;
    const/4 v9, 0x0

    const-string v10, "network-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "networkTemplate"

    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v10

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .local v6, "subscriberId":Ljava/lang/String;
    if-eqz v6, :cond_0

    const/4 v9, 0x0

    const-string v10, "subscriberId"

    invoke-interface {v4, v9, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    .local v3, "networkId":Ljava/lang/String;
    if-eqz v3, :cond_1

    const/4 v9, 0x0

    const-string v10, "networkId"

    invoke-interface {v4, v9, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    const-string v9, "cycleDay"

    iget v10, v5, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const/4 v9, 0x0

    const-string v10, "cycleTimezone"

    iget-object v11, v5, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-interface {v4, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "warningBytes"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string v9, "limitBytes"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string v9, "lastWarningSnooze"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string v9, "lastLimitSnooze"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string v9, "metered"

    iget-boolean v10, v5, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string v9, "inferred"

    iget-boolean v10, v5, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const/4 v9, 0x0

    const-string v10, "network-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .end local v3    # "networkId":Ljava/lang/String;
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    .end local v6    # "subscriberId":Ljava/lang/String;
    .end local v7    # "template":Landroid/net/NetworkTemplate;
    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_5

    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .local v8, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .local v5, "policy":I
    if-nez v5, :cond_3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    const-string v10, "uid-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "uid"

    invoke-static {v4, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string v9, "policy"

    invoke-static {v4, v9, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const/4 v9, 0x0

    const-string v10, "uid-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v2    # "i":I
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "policy":I
    .end local v8    # "uid":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_4

    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v9, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    return-void

    .restart local v2    # "i":I
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_5
    const/4 v2, 0x0

    :goto_4
    :try_start_1
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_7

    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .restart local v8    # "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRoamingReductionPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .restart local v5    # "policy":I
    if-nez v5, :cond_6

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v9, 0x0

    const-string v10, "uid-roaming-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "uid"

    invoke-static {v4, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string v9, "policy"

    invoke-static {v4, v9, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const/4 v9, 0x0

    const-string v10, "uid-roaming-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    .end local v5    # "policy":I
    .end local v8    # "uid":I
    :cond_7
    const/4 v2, 0x0

    :goto_6
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_9

    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .restart local v8    # "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .restart local v5    # "policy":I
    if-nez v5, :cond_8

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    const/4 v9, 0x0

    const-string v10, "firewall-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "uid"

    invoke-static {v4, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string v9, "policy"

    invoke-static {v4, v9, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const/4 v9, 0x0

    const-string v10, "firewall-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7

    .end local v5    # "policy":I
    .end local v8    # "uid":I
    :cond_9
    const/4 v9, 0x0

    const-string v10, "policy-list"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v9, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
