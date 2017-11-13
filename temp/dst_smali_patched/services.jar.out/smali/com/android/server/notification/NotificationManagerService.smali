.class public Lcom/android/server/notification/NotificationManagerService;
.super Lcom/android/server/SystemService;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationManagerService$EdgeLight;,
        Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;,
        Lcom/android/server/notification/NotificationManagerService$PickupPlayer;,
        Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;,
        Lcom/android/server/notification/NotificationManagerService$PolicyAccess;,
        Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;,
        Lcom/android/server/notification/NotificationManagerService$DumpFilter;,
        Lcom/android/server/notification/NotificationManagerService$NotificationListeners;,
        Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;,
        Lcom/android/server/notification/NotificationManagerService$WorkerHandler;,
        Lcom/android/server/notification/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;,
        Lcom/android/server/notification/NotificationManagerService$ToastRecord;,
        Lcom/android/server/notification/NotificationManagerService$Archive;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field static final DBG:Z

.field private static final DB_VERSION:I = 0x1

.field static final DEFAULT_MOOD_LED_NUMBER:I = -0x1

.field static final DEFAULT_MOOD_LED_ON_OFF_TIME:I = 0x1f4

.field static final DEFAULT_STREAM_TYPE:I = 0x5

.field static final DEFAULT_VIBRATE_PATTERN:[J

.field private static final EDGE_NOTIFICATION_COMPONENT:Landroid/content/ComponentName;

.field static final ENABLE_BLOCKED_NOTIFICATIONS:Z = true

.field static final ENABLE_BLOCKED_TOASTS:Z = true

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field private static final EVENTLOG_ENQUEUE_STATUS_IGNORED:I = 0x2

.field private static final EVENTLOG_ENQUEUE_STATUS_NEW:I = 0x0

.field private static final EVENTLOG_ENQUEUE_STATUS_UPDATE:I = 0x1

.field static final FLAG_SHOW_MOOD_LIGHTS:I = 0x10

.field private static final GEAR1_PLUGIN:Ljava/lang/String; = "com.samsung.android.gear1plugin"

.field private static final GEARFIT_PLUGIN:Ljava/lang/String; = "com.samsung.android.wms"

.field private static final GEAR_HOSTMANAGER:Ljava/lang/String; = "com.samsung.android.hostmanager"

.field static final GEAR_PACKAGE_FILTER:[Ljava/lang/String;

.field static final JUNK_SCORE:I = -0x3e8

.field private static final KEEP:I = 0x3131d

.field static final LONG_DELAY:I = 0xdac

.field static final LONG_DOUBLE_DELAY:I = 0x1b58

.field static final MATCHES_CALL_FILTER_CONTACTS_TIMEOUT_MS:I = 0xbb8

.field static final MATCHES_CALL_FILTER_TIMEOUT_AFFINITY:F = 1.0f

.field static final MATCHES_MESSAGE_FILTER_CONTACTS_TIMEOUT_MS:I = 0xbb8

.field static final MATCHES_MESSAGE_FILTER_TIMEOUT_AFFINITY:F = 1.0f

.field static final MAX_PACKAGE_NOTIFICATIONS:I = 0x32

.field static final MESSAGE_LISTENER_HINTS_CHANGED:I = 0x7

.field static final MESSAGE_LISTENER_NOTIFICATION_FILTER_CHANGED:I = 0x8

.field static final MESSAGE_RANKING_CONFIG_CHANGE:I = 0x5

.field static final MESSAGE_RECONSIDER_RANKING:I = 0x4

.field static final MESSAGE_SAVE_POLICY_FILE:I = 0x3

.field static final MESSAGE_SEND_RANKING_UPDATE:I = 0x6

.field static final MESSAGE_TIMEOUT:I = 0x2

.field private static final MY_PID:I

.field private static final MY_UID:I

.field static final NOTIFICATION_PRIORITY_MULTIPLIER:I = 0xa

.field private static final REASON_DELEGATE_CANCEL:I = 0x2

.field private static final REASON_DELEGATE_CANCEL_ALL:I = 0x3

.field private static final REASON_DELEGATE_CLICK:I = 0x1

.field private static final REASON_DELEGATE_ERROR:I = 0x4

.field private static final REASON_GROUP_OPTIMIZATION:I = 0xd

.field private static final REASON_GROUP_SUMMARY_CANCELED:I = 0xc

.field private static final REASON_LISTENER_CANCEL:I = 0xa

.field private static final REASON_LISTENER_CANCEL_ALL:I = 0xb

.field private static final REASON_NOMAN_CANCEL:I = 0x8

.field private static final REASON_NOMAN_CANCEL_ALL:I = 0x9

.field private static final REASON_PACKAGE_BANNED:I = 0x7

.field private static final REASON_PACKAGE_CHANGED:I = 0x5

.field private static final REASON_USER_STOPPED:I = 0x6

.field static final SCORE_DISPLAY_THRESHOLD:I = -0x14

.field static final SCORE_INTERRUPTION_THRESHOLD:I = -0xa

.field static final SCORE_ONGOING_HIGHER:Z = false

.field static final SHORT_DELAY:I = 0x7d0

.field static final TAG:Ljava/lang/String; = "NotificationService"

.field private static final TAG_BLOCKED_PKGS:Ljava/lang/String; = "blocked-packages"

.field private static final TAG_NOTIFICATION_POLICY:Ljava/lang/String; = "notification-policy"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field static final VIBRATE_PATTERN_MAXLEN:I = 0x11

.field private static mReasonClearLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final KNOX_URI2:Ljava/lang/String;

.field private mAm:Landroid/app/IActivityManager;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

.field mAttentionLight:Lcom/android/server/lights/Light;

.field mAudioManager:Landroid/media/AudioManager;

.field mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private mBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBuzzBeepBlinked:Ljava/lang/Runnable;

.field private mCallState:I

.field private mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field final mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mDefaultNotificationColor:I

.field private mDefaultNotificationLedOff:I

.field private mDefaultNotificationLedOn:I

.field private mDefaultVibrationPattern:[J

.field private mDisableNotificationEffects:Z

.field private mEdgeLight:Lcom/android/server/notification/NotificationManagerService$EdgeLight;

.field private mEffectsSuppressor:Landroid/content/ComponentName;

.field private mFallbackVibrationPattern:[J

.field final mForegroundToken:Landroid/os/IBinder;

.field private mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

.field private mInCall:Z

.field private mInCallState:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

.field private mInterruptionFilter:I

.field private mIsDormantModeLedDisabled:Z

.field private mIsDormantModeOn:Z

.field private mIsPlaying:Z

.field mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerHints:I

.field private mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field private final mListenersDisablingEffects:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMethodRingtonePlayer:Ljava/lang/reflect/Method;

.field private mMissedNotificationLightEnabled:Z

.field private mMissedNotificationReminderLightEnabled:Z

.field mMoodLight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMoodLightEnabled:Z

.field mMoodLightObserver:Lcom/android/server/notification/NotificationManagerService$MoodLightObserver;

.field mMoodLightPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMoodLights:Lcom/android/server/lights/Light;

.field private final mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field private mNotificationLight:Lcom/android/server/lights/Light;

.field final mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPlayerBinder:Landroid/os/IBinder;

.field private mNotificationPulseEnabled:Z

.field private mNotificationReminder:Z

.field final mNotificationsByKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

.field private mPM:Landroid/os/PowerManager;

.field private final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field mPickupPlayer:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

.field final mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private mRankingHelper:Lcom/android/server/notification/RankingHelper;

.field private final mRankingThread:Landroid/os/HandlerThread;

.field private mReasonClear:I

.field private mScreenOn:Z

.field private final mService:Landroid/os/IBinder;

.field private mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

.field private mSoundNotificationKey:Ljava/lang/String;

.field mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field final mSummaryByGroupKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field mSystemReady:Z

.field final mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationManagerService$ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field private mUseAttentionLight:Z

.field private final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field private mVibrateNotificationKey:Ljava/lang/String;

.field mVibrator:Landroid/os/Vibrator;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWindowManager:Landroid/view/WindowManagerInternal;

.field private mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "NotificationService"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "debug.child_notifs"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->ENABLE_CHILD_NOTIFICATIONS:Z

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.service.peoplestripe"

    const-string v4, "com.samsung.android.service.peoplestripe.PeopleNotiListenerService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->EDGE_NOTIFICATION_COMPONENT:Landroid/content/ComponentName;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$15;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationManagerService$15;-><init>()V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->mReasonClearLocal:Ljava/lang/ThreadLocal;

    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "com.samsung.android.hostmanager"

    aput-object v3, v0, v2

    const-string v2, "com.samsung.android.gear1plugin"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.samsung.android.wms"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->GEAR_PACKAGE_FILTER:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    nop

    :array_0
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ranker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    iput v4, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    iput-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    iput-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallState:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    invoke-direct {v0, p0, v3}, Lcom/android/server/notification/NotificationManagerService$PolicyAccess;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMoodLight:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMoodLightPackage:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$1;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$2;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$3;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$4;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mBuzzBeepBlinked:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$6;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$7;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    invoke-direct {v0, p0, v3}, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPickupPlayer:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->KNOX_URI2:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/notification/NotificationManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->setLEDCoverState(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mMoodLightEnabled:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMissedNotificationLightEnabled:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mMissedNotificationLightEnabled:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMissedNotificationReminderLightEnabled:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mMissedNotificationReminderLightEnabled:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationReminder:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationReminder:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateInterruptionFilterLocked()V

    return-void
.end method

.method static synthetic access$3400()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->noteNotificationOp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSystemUI()V

    return-void
.end method

.method static synthetic access$3800()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/usage/UsageStatsManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "x2"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateListenerHintsLocked()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateEffectsSuppressorLocked()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$4900(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressor:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/io/OutputStream;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/notification/NotificationManagerService;Ljava/io/InputStream;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;Z)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->removeUnusedGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/android/server/notification/NotificationManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSendRankingUpdate()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerHintsChanged(I)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerInterruptionFilterChanged(I)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleRankingReconsideration(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleRankingConfigChange()V

    return-void
.end method

.method static synthetic access$6802(Lcom/android/server/notification/NotificationManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mReasonClear:I

    return p1
.end method

.method static synthetic access$6900(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return v0
.end method

.method static synthetic access$7102(Lcom/android/server/notification/NotificationManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return p1
.end method

.method static synthetic access$7200(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7900()Landroid/content/ComponentName;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->EDGE_NOTIFICATION_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mReasonClearLocal:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    return v0
.end method

.method static synthetic access$8500(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I

    return v0
.end method

.method static synthetic access$8600(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    return v0
.end method

.method private applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setIntercepted(Z)Z

    return-void
.end method

.method private static audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;
    .locals 5
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iget-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    goto :goto_0

    :cond_2
    const-string v0, "NotificationService"

    const-string v1, "Invalid stream type: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    goto :goto_0
.end method

.method private buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 35
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v8, 0x0

    .local v8, "buzz":Z
    const/4 v6, 0x0

    .local v6, "beep":Z
    const/4 v7, 0x0

    .local v7, "blink":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v19

    .local v19, "notification":Landroid/app/Notification;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/notification/NotificationRecord;->score:I

    move/from16 v31, v0

    const/16 v32, -0xa

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_13

    const/4 v4, 0x1

    .local v4, "aboveThreshold":Z
    :goto_0
    if-eqz v4, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v31

    if-nez v31, :cond_14

    const/4 v9, 0x1

    .local v9, "canInterrupt":Z
    :goto_1
    sget-boolean v31, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-nez v31, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v31

    if-eqz v31, :cond_1

    :cond_0
    const-string v31, "NotificationService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "pkg="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " canInterrupt="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " intercept="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .local v26, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    .local v11, "currentUser":I
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v12

    .local v12, "disableEffects":Ljava/lang/String;
    if-eqz v12, :cond_2

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/server/notification/ZenLog;->traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x11200be

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    .local v23, "smsRingtone":Z
    if-eqz v12, :cond_3

    if-eqz v23, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    move/from16 v31, v0

    if-eqz v31, :cond_e

    :cond_3
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    move/from16 v31, v0

    if-eqz v31, :cond_4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x8

    if-nez v31, :cond_e

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v31

    move/from16 v0, v31

    if-eq v0, v11, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-object/from16 v31, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v31

    if-eqz v31, :cond_e

    :cond_5
    if-eqz v9, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    move/from16 v31, v0

    if-eqz v31, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v31, v0

    if-eqz v31, :cond_e

    sget-boolean v31, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v31, :cond_6

    const-string v31, "NotificationService"

    const-string v32, "Interrupting!"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/notification/NotificationManagerService;->isPrayModeNotiOn(Landroid/content/Context;)Z

    move-result v31

    if-nez v31, :cond_e

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x1

    if-nez v31, :cond_7

    sget-object v31, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_15

    :cond_7
    const/16 v25, 0x1

    .local v25, "useDefaultSound":Z
    :goto_2
    const/16 v24, 0x0

    .local v24, "soundUri":Landroid/net/Uri;
    const/4 v15, 0x0

    .local v15, "hasValidSound":Z
    if-eqz v25, :cond_17

    sget-object v24, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .local v22, "resolver":Landroid/content/ContentResolver;
    const-string v31, "notification_sound"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_16

    const/4 v15, 0x1

    .end local v22    # "resolver":Landroid/content/ContentResolver;
    :cond_8
    :goto_3
    if-eqz v15, :cond_b

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x4

    if-eqz v31, :cond_19

    const/16 v18, 0x1

    .local v18, "looping":Z
    :goto_4
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1a

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .local v5, "audioAttributes":Landroid/media/AudioAttributes;
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v31, v0

    invoke-static {v5}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v31

    if-eqz v31, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v31

    if-nez v31, :cond_b

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .local v16, "identity":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v21

    .local v21, "player":Landroid/media/IRingtonePlayer;
    if-eqz v21, :cond_a

    sget-boolean v31, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v31, :cond_9

    const-string v31, "NotificationService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Playing sound "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " with attributes "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3, v5}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V

    const/4 v6, 0x1

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    move-object/from16 v31, v0

    if-eqz v31, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v31, v0

    if-eqz v31, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isEnable()Z

    move-result v31

    if-eqz v31, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v31

    if-nez v31, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->register()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;

    move-object/from16 v31, v0

    if-nez v31, :cond_a

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v31, 0x0

    new-instance v32, Lcom/android/server/notification/NotificationManagerService$10;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationManagerService$10;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    aput-object v32, v20, v31
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v20, "parameter":[Ljava/lang/Object;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/IBinder;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;

    move-object/from16 v31, v0

    new-instance v32, Lcom/android/server/notification/NotificationManagerService$11;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationManagerService$11;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    const/16 v33, 0x0

    invoke-interface/range {v31 .. v33}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v20    # "parameter":[Ljava/lang/Object;
    :cond_a
    :goto_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v5    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v16    # "identity":J
    .end local v18    # "looping":Z
    .end local v21    # "player":Landroid/media/IRingtonePlayer;
    :cond_b
    :goto_7
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v31, v0

    if-eqz v31, :cond_1d

    const/4 v14, 0x1

    .local v14, "hasCustomVibrate":Z
    :goto_8
    if-nez v14, :cond_1e

    if-eqz v15, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1e

    const/4 v10, 0x1

    .local v10, "convertSoundToVibration":Z
    :goto_9
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x2

    if-eqz v31, :cond_1f

    const/16 v28, 0x1

    .local v28, "useDefaultVibrate":Z
    :goto_a
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->haptic:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->doesItUseHaptic(I)Z

    move-result v29

    .local v29, "useHaptic":Z
    if-nez v28, :cond_c

    if-nez v10, :cond_c

    if-nez v14, :cond_c

    if-eqz v29, :cond_e

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v31

    if-eqz v31, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    const/4 v8, 0x1

    const-string v31, "NotificationService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Noti Alert - doVibrate "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " convertStoV="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v28, :cond_d

    if-eqz v10, :cond_20

    :cond_d
    const/16 v31, 0x1

    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v29

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->doVibrate(ZZLandroid/app/Notification;)V

    .end local v10    # "convertSoundToVibration":Z
    .end local v14    # "hasCustomVibrate":Z
    .end local v15    # "hasValidSound":Z
    .end local v24    # "soundUri":Landroid/net/Uri;
    .end local v25    # "useDefaultSound":Z
    .end local v28    # "useDefaultVibrate":Z
    .end local v29    # "useHaptic":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v30

    .local v30, "wasShowLights":Z
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x1

    if-eqz v31, :cond_21

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    move/from16 v31, v0

    if-eqz v31, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/lights/Light;->pulse()V

    :cond_f
    const/4 v7, 0x1

    :cond_10
    :goto_c
    if-nez v8, :cond_11

    if-nez v6, :cond_11

    if-eqz v7, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/android/server/notification/NotificationManagerService;->isPrayModeNotiOn(Landroid/content/Context;)Z

    move-result v31

    if-nez v31, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v34

    if-eqz v8, :cond_22

    const/16 v31, 0x1

    move/from16 v33, v31

    :goto_d
    if-eqz v6, :cond_23

    const/16 v31, 0x1

    move/from16 v32, v31

    :goto_e
    if-eqz v7, :cond_24

    const/16 v31, 0x1

    :goto_f
    move-object/from16 v0, v34

    move/from16 v1, v33

    move/from16 v2, v32

    move/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/EventLogTags;->writeNotificationAlert(Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mBuzzBeepBlinked:Ljava/lang/Runnable;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void

    .end local v4    # "aboveThreshold":Z
    .end local v9    # "canInterrupt":Z
    .end local v11    # "currentUser":I
    .end local v12    # "disableEffects":Ljava/lang/String;
    .end local v23    # "smsRingtone":Z
    .end local v26    # "token":J
    .end local v30    # "wasShowLights":Z
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_0

    .restart local v4    # "aboveThreshold":Z
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_1

    .restart local v9    # "canInterrupt":Z
    .restart local v26    # "token":J
    :catchall_0
    move-exception v31

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v31

    .restart local v11    # "currentUser":I
    .restart local v12    # "disableEffects":Ljava/lang/String;
    .restart local v23    # "smsRingtone":Z
    :cond_15
    const/16 v25, 0x0

    goto/16 :goto_2

    .restart local v15    # "hasValidSound":Z
    .restart local v22    # "resolver":Landroid/content/ContentResolver;
    .restart local v24    # "soundUri":Landroid/net/Uri;
    .restart local v25    # "useDefaultSound":Z
    :cond_16
    const/4 v15, 0x0

    goto/16 :goto_3

    .end local v22    # "resolver":Landroid/content/ContentResolver;
    :cond_17
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v31, v0

    if-eqz v31, :cond_8

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v24, v0

    if-eqz v24, :cond_18

    const/4 v15, 0x1

    :goto_10
    goto/16 :goto_3

    :cond_18
    const/4 v15, 0x0

    goto :goto_10

    :cond_19
    const/16 v18, 0x0

    goto/16 :goto_4

    .restart local v18    # "looping":Z
    :cond_1a
    sget-object v5, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .restart local v5    # "audioAttributes":Landroid/media/AudioAttributes;
    goto/16 :goto_5

    .restart local v16    # "identity":J
    .restart local v20    # "parameter":[Ljava/lang/Object;
    .restart local v21    # "player":Landroid/media/IRingtonePlayer;
    :catch_0
    move-exception v13

    .local v13, "ex":Ljava/lang/IllegalAccessException;
    :try_start_3
    const-string v31, "NotificationService"

    const-string v32, "IllegalAccessException"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v31

    if-eqz v31, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    :cond_1b
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_6

    .end local v13    # "ex":Ljava/lang/IllegalAccessException;
    .end local v20    # "parameter":[Ljava/lang/Object;
    .end local v21    # "player":Landroid/media/IRingtonePlayer;
    :catch_1
    move-exception v31

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7

    .restart local v20    # "parameter":[Ljava/lang/Object;
    .restart local v21    # "player":Landroid/media/IRingtonePlayer;
    :catch_2
    move-exception v13

    .local v13, "ex":Ljava/lang/reflect/InvocationTargetException;
    :try_start_4
    const-string v31, "NotificationService"

    const-string v32, "InvocationTargetException"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v31

    if-eqz v31, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    :cond_1c
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_6

    .end local v13    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v20    # "parameter":[Ljava/lang/Object;
    .end local v21    # "player":Landroid/media/IRingtonePlayer;
    :catchall_1
    move-exception v31

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v31

    .end local v5    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v16    # "identity":J
    .end local v18    # "looping":Z
    :cond_1d
    const/4 v14, 0x0

    goto/16 :goto_8

    .restart local v14    # "hasCustomVibrate":Z
    :cond_1e
    const/4 v10, 0x0

    goto/16 :goto_9

    .restart local v10    # "convertSoundToVibration":Z
    :cond_1f
    const/16 v28, 0x0

    goto/16 :goto_a

    .restart local v28    # "useDefaultVibrate":Z
    .restart local v29    # "useHaptic":Z
    :cond_20
    const/16 v31, 0x0

    goto/16 :goto_b

    .end local v10    # "convertSoundToVibration":Z
    .end local v14    # "hasCustomVibrate":Z
    .end local v15    # "hasValidSound":Z
    .end local v24    # "soundUri":Landroid/net/Uri;
    .end local v25    # "useDefaultSound":Z
    .end local v28    # "useDefaultVibrate":Z
    .end local v29    # "useHaptic":Z
    .restart local v30    # "wasShowLights":Z
    :cond_21
    if-eqz v30, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    goto/16 :goto_c

    :cond_22
    const/16 v31, 0x0

    move/from16 v33, v31

    goto/16 :goto_d

    :cond_23
    const/16 v31, 0x0

    move/from16 v32, v31

    goto/16 :goto_e

    :cond_24
    const/16 v31, 0x0

    goto/16 :goto_f
.end method

.method private static callStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CALL_STATE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "CALL_STATE_IDLE"

    goto :goto_0

    :pswitch_1
    const-string v0, "CALL_STATE_RINGING"

    goto :goto_0

    :pswitch_2
    const-string v0, "CALL_STATE_OFFHOOK"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V
    .locals 17
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "listenerName"    # Ljava/lang/String;
    .param p5, "reason"    # I

    .prologue
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v16

    .local v16, "n":Landroid/app/Notification;
    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v7

    .local v7, "userId":I
    if-nez v4, :cond_2

    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No package for group summary: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .local v12, "N":I
    add-int/lit8 v15, v12, -0x1

    .local v15, "i":I
    :goto_1
    if-ltz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    .local v13, "childR":Lcom/android/server/notification/NotificationRecord;
    iget-object v14, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .local v14, "childSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupChild()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v10, p5

    move-object/from16 v11, p4

    invoke-static/range {v2 .. v11}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v13, v2, v1}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    :cond_3
    add-int/lit8 v15, v15, -0x1

    goto :goto_1
.end method

.method private cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    .locals 15
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I

    .prologue
    if-eqz p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget-object v11, v11, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget-object v11, v11, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v11}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    move-object/from16 v0, p1

    iput-boolean v11, v0, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    packed-switch p3, :pswitch_data_0

    :goto_1
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11, v12}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Landroid/service/notification/StatusBarNotification;)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    .local v2, "canceledKey":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "identity":J
    :try_start_1
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v10

    .local v10, "player":Landroid/media/IRingtonePlayer;
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    :cond_3
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z

    .end local v6    # "identity":J
    .end local v10    # "player":Landroid/media/IRingtonePlayer;
    :cond_4
    :goto_2
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .restart local v6    # "identity":J
    :try_start_2
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v11}, Landroid/os/Vibrator;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v6    # "identity":J
    :cond_5
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    packed-switch p3, :pswitch_data_1

    :goto_3
    :pswitch_0
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    .local v4, "groupKey":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v11, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .local v5, "groupSummary":Lcom/android/server/notification/NotificationRecord;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v11, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11, v12}, Lcom/android/server/notification/NotificationManagerService$Archive;->record(Landroid/service/notification/StatusBarNotification;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .local v8, "now":J
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v13

    move/from16 v0, p3

    invoke-static {v2, v0, v11, v12, v13}, Lcom/android/server/EventLogTags;->writeNotificationCanceled(Ljava/lang/String;IIII)V

    return-void

    .end local v2    # "canceledKey":Ljava/lang/String;
    .end local v4    # "groupKey":Ljava/lang/String;
    .end local v5    # "groupSummary":Lcom/android/server/notification/NotificationRecord;
    .end local v8    # "now":J
    :catch_0
    move-exception v3

    .local v3, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v11, "NotificationService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "canceled PendingIntent for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v3    # "ex":Landroid/app/PendingIntent$CanceledException;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget-object v11, v11, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v11, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget-object v12, v11, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "remove_reason"

    iget v11, p0, Lcom/android/server/notification/NotificationManagerService;->mReasonClear:I

    const v14, 0x3131d

    if-ne v11, v14, :cond_8

    const-string v11, "keep"

    :goto_4
    invoke-virtual {v12, v13, v11}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_7
    const-string v12, "NotificationService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v11, p0, Lcom/android/server/notification/NotificationManagerService;->mReasonClear:I

    const v14, 0x3131d

    if-ne v11, v14, :cond_9

    const-string v11, "k.it"

    :goto_5
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    const-string v11, "cancel"

    goto :goto_4

    :cond_9
    const-string v11, "c.it"

    goto :goto_5

    .restart local v2    # "canceledKey":Ljava/lang/String;
    .restart local v6    # "identity":J
    :catch_1
    move-exception v11

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    :cond_a
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z

    goto/16 :goto_2

    :catchall_0
    move-exception v11

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    if-eqz v12, :cond_b

    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v12

    if-eqz v12, :cond_b

    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    :cond_b
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z

    throw v11

    :catchall_1
    move-exception v11

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .end local v6    # "identity":J
    :pswitch_2
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static checkCallerIsSameApp(Ljava/lang/String;)V
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, "uid":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-interface {v3, p0, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :try_start_1
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which is owned by uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-void
.end method

.method private static checkCallerIsSystem()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static checkCallerIsSystemOrSystemUI()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystem()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemUI()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkNotificationOp(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    if-ge p0, p1, :cond_0

    .end local p1    # "low":I
    :goto_0
    return p1

    .restart local p1    # "low":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    if-eqz v0, :cond_0

    const-string v0, "booleanState"

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string v0, "listenerHints"

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "callState"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doVibrate(ZZLandroid/app/Notification;)V
    .locals 9
    .param p1, "useDefaultVibrate"    # Z
    .param p2, "useHaptic"    # Z
    .param p3, "n"    # Landroid/app/Notification;

    .prologue
    const/4 v8, 0x0

    const/4 v4, -0x1

    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    iget v6, p3, Landroid/app/Notification;->haptic:I

    sget-object v7, Landroid/os/Vibrator$MagnitudeTypes;->NotificationMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v5, v6, v4, v8, v7}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    const v5, 0xc361

    const/4 v6, -0x1

    const/4 v7, 0x0

    sget-object v8, Landroid/os/Vibrator$MagnitudeTypes;->NotificationMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .end local v0    # "identity":J
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity2":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    iget-object v6, p3, Landroid/app/Notification;->vibrate:[J

    iget v7, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_2

    const/4 v4, 0x0

    :cond_2
    const/4 v7, 0x0

    sget-object v8, Landroid/os/Vibrator$MagnitudeTypes;->NotificationMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private doesItUseHaptic(I)Z
    .locals 1
    .param p1, "haptic"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc35d
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .local v2, "dump":Lorg/json/JSONObject;
    :try_start_0
    const-string v9, "service"

    const-string v10, "Notification Manager"

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "bans":Lorg/json/JSONArray;
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->getPackageBans(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Landroid/util/ArrayMap;

    move-result-object v6

    .local v6, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .local v8, "userId":Ljava/lang/Integer;
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "packageName":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .local v0, "ban":Lorg/json/JSONObject;
    const-string v9, "userId"

    invoke-virtual {v0, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "packageName"

    invoke-virtual {v0, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .end local v0    # "ban":Lorg/json/JSONObject;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "userId":Ljava/lang/Integer;
    :catch_0
    move-exception v9

    :cond_1
    :try_start_2
    const-string v9, "bans"

    invoke-virtual {v2, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "stats"

    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v10, p2}, Lcom/android/server/notification/NotificationUsageStats;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v1    # "bans":Lorg/json/JSONArray;
    :goto_1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception v3

    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private edm_handleStatusBarNotificationNotAllowedAsUser(Ljava/lang/String;ILandroid/app/Notification;)Z
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "notification"    # Landroid/app/Notification;

    .prologue
    :try_start_0
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v0

    .local v0, "appPolicy":Landroid/app/enterprise/ApplicationPolicy;
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "token":J
    invoke-virtual {v0, p2}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationNotificationModeAsUser(I)I

    move-result v3

    .local v3, "notificationMode":I
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    packed-switch v3, :pswitch_data_0

    .end local v0    # "appPolicy":Landroid/app/enterprise/ApplicationPolicy;
    .end local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3    # "notificationMode":I
    .end local v4    # "token":J
    :cond_0
    :goto_0
    const/4 v6, 0x1

    :goto_1
    return v6

    .restart local v0    # "appPolicy":Landroid/app/enterprise/ApplicationPolicy;
    .restart local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v3    # "notificationMode":I
    .restart local v4    # "token":J
    :pswitch_0
    const-string v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notify: Block all - flag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Landroid/app/Notification;->flags:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "com.android.phone"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->getIncalluiPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget v6, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    const-string v6, "NotificationService"

    const-string v7, "notify: Do not block"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "appPolicy":Landroid/app/enterprise/ApplicationPolicy;
    .end local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3    # "notificationMode":I
    .end local v4    # "token":J
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "NotificationService"

    const-string v7, "Is edm running?"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "appPolicy":Landroid/app/enterprise/ApplicationPolicy;
    .restart local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v3    # "notificationMode":I
    .restart local v4    # "token":J
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :pswitch_1
    const/4 v6, 0x0

    :try_start_1
    iput-object v6, p3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v6, p3, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x2

    iput v6, p3, Landroid/app/Notification;->defaults:I

    const-string v6, "NotificationService"

    const-string v7, "notify: Block text sound"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_2
    const-string v6, ""

    iput-object v6, p3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v6, p3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_3

    iget-object v6, p3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x1020083

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v6, p3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v7, 0x1020016

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_3
    iget-object v6, p3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_4

    iget-object v6, p3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v7, 0x1020083

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v6, p3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const v7, 0x1020016

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_4
    iget-object v6, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v6, :cond_5

    iget-object v6, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.title"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.text"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.subText"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.infoText"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.summaryText"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.bigText"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.title.big"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v6, "NotificationService"

    const-string v7, "notify: Block text"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private edm_isStatusBarNotificationAllowedAsUser(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .local v3, "returnValue":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v6, "enterprise_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v0

    .local v0, "appPolicy":Landroid/app/enterprise/ApplicationPolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/ApplicationPolicy;->isStatusBarNotificationAllowedAsUser(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .end local v0    # "appPolicy":Landroid/app/enterprise/ApplicationPolicy;
    :cond_0
    move v4, v3

    .end local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3    # "returnValue":Z
    .local v4, "returnValue":I
    :goto_0
    return v4

    .end local v4    # "returnValue":I
    .restart local v3    # "returnValue":Z
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "NotificationService"

    const-string v6, "Is edm running?"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v3

    .restart local v4    # "returnValue":I
    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "returnValue":I
    :catchall_0
    move-exception v5

    move v4, v3

    .restart local v4    # "returnValue":I
    goto :goto_0
.end method

.method private findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I
    .locals 2
    .param p1, "target"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    return v0
.end method

.method private getIncalluiPkgName()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v1, "com.android.incallui"

    .local v1, "incallui":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    const-string v4, "com.android.incallui"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "NotificationService"

    const-string v3, "No FloatingFeature"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getLongArray(Landroid/content/res/Resources;II[J)[J
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I
    .param p2, "maxlen"    # I
    .param p3, "def"    # [J

    .prologue
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .local v0, "ar":[I
    if-nez v0, :cond_0

    .end local p3    # "def":[J
    :goto_0
    return-object p3

    .restart local p3    # "def":[J
    :cond_0
    array-length v4, v0

    if-le v4, p2, :cond_1

    move v2, p2

    .local v2, "len":I
    :goto_1
    new-array v3, v2, [J

    .local v3, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    aget v4, v0, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "out":[J
    :cond_1
    array-length v2, v0

    goto :goto_1

    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "out":[J
    :cond_2
    move-object p3, v3

    goto :goto_0
.end method

.method private getPackageBans(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Landroid/util/ArrayMap;
    .locals 12
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .local v2, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .local v9, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .local v10, "userId":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    invoke-virtual {v4, v11, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v7

    .local v7, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "packageCount":I
    const/4 v1, 0x0

    .local v1, "p":I
    :goto_1
    if-ge v1, v3, :cond_3

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageInfo;

    iget-object v5, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .local v5, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    invoke-virtual {v4, v5, v10}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v8

    .local v8, "uid":I
    invoke-direct {p0, v5, v8}, Lcom/android/server/notification/NotificationManagerService;->checkNotificationOp(Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v8    # "uid":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v5    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .restart local v6    # "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .end local v1    # "p":I
    .end local v3    # "packageCount":I
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "user":Landroid/content/pm/UserInfo;
    .end local v10    # "userId":I
    :cond_4
    return-object v2
.end method

.method private handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .locals 16
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    .prologue
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .local v15, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .local v9, "n":Landroid/app/Notification;
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v7

    .local v7, "group":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v8

    .local v8, "isSummary":Z
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    .local v12, "oldN":Landroid/app/Notification;
    :goto_0
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v10

    .local v10, "oldGroup":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_6

    invoke-virtual {v12}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v11, 0x1

    .local v11, "oldIsSummary":Z
    :goto_2
    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    .local v14, "removedSummary":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p2

    if-eq v14, v0, :cond_0

    if-eqz v14, :cond_7

    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v13

    .local v13, "removedKey":Ljava/lang/String;
    :goto_3
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed summary didn\'t match old notification: old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v13    # "removedKey":Ljava/lang/String;
    .end local v14    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v11, :cond_3

    if-eqz v8, :cond_2

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    :cond_3
    return-void

    .end local v10    # "oldGroup":Ljava/lang/String;
    .end local v11    # "oldIsSummary":Z
    .end local v12    # "oldN":Landroid/app/Notification;
    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    .restart local v12    # "oldN":Landroid/app/Notification;
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .restart local v10    # "oldGroup":Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .restart local v11    # "oldIsSummary":Z
    .restart local v14    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_7
    const-string v13, "<null>"

    goto :goto_3
.end method

.method private handleListenerHintsChanged(I)V
    .locals 2
    .param p1, "hints"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChangedLocked(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleListenerInterruptionFilterChanged(I)V
    .locals 2
    .param p1, "interruptionFilter"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleRankingConfigChange()V
    .locals 8

    .prologue
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v4, v0, [I

    .local v4, "visibilities":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v5

    aput v5, v4, v1

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v5, v3}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .restart local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget v5, v4, v1

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v7

    if-eq v5, v7, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->scheduleSendRankingUpdate()V

    monitor-exit v6

    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_2
    return-void

    .restart local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    monitor-exit v6

    goto :goto_2

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "visibilities":[I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private handleRankingReconsideration(Landroid/os/Message;)V
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v9, v9, Lcom/android/server/notification/RankingReconsideration;

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/notification/RankingReconsideration;

    .local v5, "recon":Lcom/android/server/notification/RankingReconsideration;
    invoke-virtual {v5}, Lcom/android/server/notification/RankingReconsideration;->run()V

    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v10

    :try_start_0
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Lcom/android/server/notification/RankingReconsideration;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .local v6, "record":Lcom/android/server/notification/NotificationRecord;
    if-nez v6, :cond_2

    monitor-exit v10

    goto :goto_0

    .end local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    :try_start_1
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v2

    .local v2, "indexBefore":I
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    .local v4, "interceptBefore":Z
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v8

    .local v8, "visibilityBefore":I
    invoke-virtual {v5, v6}, Lcom/android/server/notification/RankingReconsideration;->applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V

    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v1

    .local v1, "indexAfter":I
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v3

    .local v3, "interceptAfter":Z
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v7

    .local v7, "visibilityAfter":I
    if-ne v2, v1, :cond_3

    if-ne v4, v3, :cond_3

    if-eq v8, v7, :cond_5

    :cond_3
    const/4 v0, 0x1

    .local v0, "changed":Z
    :goto_1
    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V

    :cond_4
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->scheduleSendRankingUpdate()V

    goto :goto_0

    .end local v0    # "changed":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleSavePolicyFile()V
    .locals 5

    .prologue
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NotificationService"

    const-string v3, "handleSavePolicyFile"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "stream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;Z)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v2, "NotificationService"

    const-string v4, "Failed to save policy file"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v3

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_4
    const-string v2, "NotificationService"

    const-string v4, "Failed to save policy file, restoring backup"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private handleSendRankingUpdate()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .prologue
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v0

    .local v0, "index":I
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V

    :cond_1
    monitor-exit v2

    return-void

    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private importOldBlockDb()V
    .locals 6

    .prologue
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->loadPolicyFile()V

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "info":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->setNotificationsEnabledForPackageImpl(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private static isCallerSystem()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method private static isCallerSystemUI()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .local v0, "callingPackageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-interface {v2, v5}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v5, "android.uid.systemui"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :cond_0
    :goto_0
    return v3

    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    :cond_1
    move v3, v4

    goto :goto_0

    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v5, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException - isCallerSystemUI:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    const-string v5, "android.uid.systemui"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_3

    const-string v5, "android.uid.systemui"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method private isGearNotification(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->GEAR_PACKAGE_FILTER:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .end local v3    # "pkg":Ljava/lang/String;
    :goto_1
    return v4

    .restart local v3    # "pkg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isPrayModeLedOn(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .local v1, "data":Z
    :try_start_0
    const-string v4, "com.sec.android.settings.praymodewidget"

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .local v0, "con":Landroid/content/Context;
    const-string v4, "PraymodePreference"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .local v3, "pref":Landroid/content/SharedPreferences;
    const-string v4, "isPrayerLEDOn"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v0    # "con":Landroid/content/Context;
    .end local v3    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pray mode not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isPrayModeNotiOn(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .local v1, "data":Z
    :try_start_0
    const-string v3, "com.sec.android.settings.praymodewidget"

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .local v0, "con":Landroid/content/Context;
    const-string v3, "PraymodePreference"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string v3, "isPrayerNotiOn"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v0    # "con":Landroid/content/Context;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static isUidSystem(I)Z
    .locals 2
    .param p0, "uid"    # I

    .prologue
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .local v0, "appid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private listenForCallState()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$14;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationManagerService$14;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private loadPolicyFile()V
    .locals 5

    .prologue
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "NotificationService"

    const-string v3, "loadPolicyFile"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .local v1, "infile":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_0
    monitor-exit v3

    return-void

    :catch_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .end local v1    # "infile":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v1    # "infile":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v2, "NotificationService"

    const-string v4, "Unable to read notification policy"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v2, "NotificationService"

    const-string v4, "Unable to parse notification policy"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v0

    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_7
    const-string v2, "NotificationService"

    const-string v4, "Unable to parse notification policy"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_1
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .locals 11
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    const/4 v7, -0x1

    .local v7, "speedBumpIndex":I
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .local v4, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, "interceptedKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .local v8, "visibilityOverrides":Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .local v6, "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v9, p1}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v9

    const/16 v10, -0x3e8

    if-eq v9, v10, :cond_3

    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    const/4 v9, -0x1

    if-ne v7, v9, :cond_0

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isRecentlyIntrusive()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v9

    if-gtz v9, :cond_0

    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->priority:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    goto :goto_1

    .end local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .local v5, "keysAr":[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .local v3, "interceptedKeysAr":[Ljava/lang/String;
    new-instance v9, Landroid/service/notification/NotificationRankingUpdate;

    invoke-direct {v9, v5, v3, v8, v7}, Landroid/service/notification/NotificationRankingUpdate;-><init>([Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)V

    return-object v9
.end method

.method private noteNotificationOp(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifications are disabled by AppOps for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

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

.method private notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readPolicyXml(Ljava/io/InputStream;Z)V
    .locals 8
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "forRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v3, 0x1

    .local v3, "version":I
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    if-eq v2, v6, :cond_4

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, "tag":Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    const-string v4, "notification-policy"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "version"

    invoke-interface {v0, v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4, v0, p2}, Lcom/android/server/notification/ZenModeHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v4, v0, p2}, Lcom/android/server/notification/RankingHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_0

    :cond_1
    const-string v4, "blocked-packages"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v6, :cond_0

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "package"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    const-string v5, "name"

    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string v4, "blocked-packages"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    goto :goto_1

    .end local v1    # "tag":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private removeUnusedGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)Z
    .locals 11
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    .prologue
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notificationGroupsDesired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v9, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .local v9, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    .local v6, "group":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v8

    .local v8, "isSummary":Z
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupChild()Z

    move-result v7

    .local v7, "isChild":Z
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/notification/NotificationRecord;

    .local v10, "summary":Lcom/android/server/notification/NotificationRecord;
    if-eqz v7, :cond_4

    if-eqz v10, :cond_4

    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring group child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to existing summary "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p2, :cond_3

    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling old version of ignored group child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz v8, :cond_5

    const/4 v4, 0x0

    const/16 v5, 0xd

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    .end local v6    # "group":Ljava/lang/String;
    .end local v7    # "isChild":Z
    .end local v8    # "isSummary":Z
    .end local v9    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v10    # "summary":Lcom/android/server/notification/NotificationRecord;
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private scheduleInterruptionFilterChanged(I)V
    .locals 3
    .param p1, "listenerInterruptionFilter"    # I

    .prologue
    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private scheduleListenerHintsChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x7

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private scheduleSendRankingUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private scheduleTimeoutLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .prologue
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, "m":Landroid/os/Message;
    iget v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    const-wide/16 v0, 0x1b58

    .local v0, "delay":J
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .end local v0    # "delay":J
    :cond_0
    iget v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-wide/16 v0, 0xdac

    .restart local v0    # "delay":J
    goto :goto_0

    .end local v0    # "delay":J
    :cond_1
    const-wide/16 v0, 0x7d0

    .restart local v0    # "delay":J
    goto :goto_0
.end method

.method private sendRegisteredOnlyBroadcast(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private setLEDCoverState(Z)V
    .locals 7
    .param p1, "state"    # Z

    .prologue
    const/16 v6, 0x12

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    new-array v1, v5, [B

    .local v1, "data":[B
    if-eqz p1, :cond_1

    aput-byte v5, v1, v4

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v2, v6, v1}, Lcom/samsung/android/cover/CoverManager;->sendDataToCover(I[B)V

    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v1    # "data":[B
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    .restart local v1    # "data":[B
    :cond_1
    const/4 v2, 0x2

    aput-byte v2, v1, v4

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v2, v6, v1}, Lcom/samsung/android/cover/CoverManager;->sendDataToCover(I[B)V

    goto :goto_0
.end method

.method private updateEffectsSuppressorLocked()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .local v0, "suppressor":Landroid/content/ComponentName;
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return-void

    .end local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressor:Landroid/content/ComponentName;

    invoke-static {v1, v0}, Lcom/android/server/notification/ZenLog;->traceEffectsSuppressorChanged(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressor:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/server/notification/ZenModeHelper;->setEffectsSuppressed(Z)V

    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private updateInterruptionFilterLocked()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v0

    .local v0, "interruptionFilter":I
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleInterruptionFilterChanged(I)V

    goto :goto_0
.end method

.method private updateListenerHintsLocked()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .local v0, "hints":I
    :goto_0
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    if-ne v0, v1, :cond_1

    :goto_1
    return-void

    .end local v0    # "hints":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .restart local v0    # "hints":I
    :cond_1
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/server/notification/ZenLog;->traceListenerHintsChanged(III)V

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleListenerHintsChanged(I)V

    goto :goto_1
.end method

.method private updateNotificationPulse()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private writePolicyXml(Ljava/io/OutputStream;Z)V
    .locals 4
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .local v0, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "notification-policy"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "version"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/ZenModeHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/RankingHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    const-string v1, "notification-policy"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    return-void
.end method


# virtual methods
.method cancelAll(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .local v2, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v2, p1}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x22

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v5, 0x3

    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    goto :goto_1

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .locals 15
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # I
    .param p5, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p6, "includeCurrentProfiles"    # Z

    .prologue
    if-nez p5, :cond_1

    const/4 v8, 0x0

    .local v8, "listenerName":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p3

    move/from16 v7, p4

    invoke-static/range {v1 .. v8}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    const/4 v12, 0x0

    .local v12, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .local v11, "N":I
    add-int/lit8 v13, v11, -0x1

    .local v13, "i":I
    :goto_1
    if-ltz v13, :cond_5

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    .local v14, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz p6, :cond_2

    move/from16 v0, p3

    invoke-direct {p0, v14, v0}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    :goto_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .end local v8    # "listenerName":Ljava/lang/String;
    .end local v11    # "N":I
    .end local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v13    # "i":I
    .end local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .restart local v8    # "listenerName":Ljava/lang/String;
    .restart local v11    # "N":I
    .restart local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v13    # "i":I
    .restart local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    move/from16 v0, p3

    invoke-direct {p0, v14, v0}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x22

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    move/from16 v0, p4

    invoke-direct {p0, v14, v1, v0}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    if-nez v12, :cond_4

    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .restart local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    :cond_4
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_5
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    .local v10, "M":I
    :goto_3
    const/4 v13, 0x0

    :goto_4
    if-ge v13, v10, :cond_7

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    const/16 v9, 0xc

    move-object v4, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .end local v10    # "M":I
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .restart local v10    # "M":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    return-void
.end method

.method cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 15
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "mustHaveFlags"    # I
    .param p5, "mustNotHaveFlags"    # I
    .param p6, "doit"    # Z
    .param p7, "userId"    # I
    .param p8, "reason"    # I
    .param p9, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    if-nez p9, :cond_1

    const/4 v8, 0x0

    .local v8, "listenerName":Ljava/lang/String;
    :goto_0
    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p8

    invoke-static/range {v1 .. v8}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .local v11, "N":I
    const/4 v12, 0x0

    .local v12, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    add-int/lit8 v13, v11, -0x1

    .local v13, "i":I
    :goto_1
    if-ltz v13, :cond_7

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    .local v14, "r":Lcom/android/server/notification/NotificationRecord;
    move/from16 v0, p7

    invoke-direct {p0, v14, v0}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .end local v8    # "listenerName":Ljava/lang/String;
    .end local v11    # "N":I
    .end local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v13    # "i":I
    .end local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    move-object/from16 v0, p9

    iget-object v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .restart local v8    # "listenerName":Ljava/lang/String;
    .restart local v11    # "N":I
    .restart local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v13    # "i":I
    .restart local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    :try_start_1
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    if-eqz p3, :cond_0

    :cond_3
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v1

    and-int v1, v1, p4

    move/from16 v0, p4

    if-ne v1, v0, :cond_0

    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v1

    and-int v1, v1, p5

    if-nez v1, :cond_0

    if-eqz p3, :cond_4

    iget-object v1, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    if-nez v12, :cond_5

    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .restart local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    :cond_5
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p6, :cond_6

    const/4 v1, 0x1

    monitor-exit v2

    .end local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_3
    return v1

    .restart local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_6
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x0

    move/from16 v0, p8

    invoke-direct {p0, v14, v1, v0}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    goto :goto_2

    .end local v11    # "N":I
    .end local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v13    # "i":I
    .end local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v11    # "N":I
    .restart local v12    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v13    # "i":I
    :cond_7
    if-eqz p6, :cond_8

    if-eqz v12, :cond_8

    :try_start_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    .local v10, "M":I
    const/4 v13, 0x0

    :goto_4
    if-ge v13, v10, :cond_8

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    const/16 v9, 0xc

    move-object v4, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .end local v10    # "M":I
    :cond_8
    if-eqz v12, :cond_9

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    :cond_9
    if-eqz v12, :cond_a

    const/4 v1, 0x1

    :goto_5
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    goto :goto_5
.end method

.method cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 15
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "mustHaveFlags"    # I
    .param p7, "mustNotHaveFlags"    # I
    .param p8, "sendDelete"    # Z
    .param p9, "userId"    # I
    .param p10, "reason"    # I
    .param p11, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mReasonClearLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .local v12, "reasonClear":I
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mReasonClearLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    iget-object v14, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$13;

    move-object v1, p0

    move-object/from16 v2, p11

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move/from16 v8, p9

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p10

    move/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Lcom/android/server/notification/NotificationManagerService$13;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIIZ)V

    invoke-virtual {v14, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method cancelToastLocked(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .local v1, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :try_start_0
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v2}, Landroid/app/ITransientNotification;->hide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v2, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveLocked(I)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object died trying to hide notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    const-string v18, "Current Notification Manager state"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    const-string v18, " (filtered to "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v18, ")"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    const/16 v18, 0x3a

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(C)V

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    const/16 v17, 0x1

    .local v17, "zenOnly":Z
    :goto_0
    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "N":I
    if-lez v4, :cond_3

    const-string v18, "  Toast Queue:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v17    # "zenOnly":Z
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .restart local v4    # "N":I
    .restart local v6    # "i":I
    .restart local v17    # "zenOnly":Z
    :cond_2
    const-string v18, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v6    # "i":I
    :cond_3
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "N":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    if-nez v17, :cond_e

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .restart local v4    # "N":I
    if-lez v4, :cond_7

    const-string v18, "  Notification List:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/notification/NotificationRecord;

    .local v11, "nr":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    iget-object v0, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v18

    if-nez v18, :cond_5

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v11    # "nr":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v18

    :try_start_2
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v18

    .restart local v4    # "N":I
    .restart local v6    # "i":I
    .restart local v11    # "nr":Lcom/android/server/notification/NotificationRecord;
    :cond_5
    :try_start_3
    const-string v18, "    "

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    goto :goto_3

    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v11    # "nr":Lcom/android/server/notification/NotificationRecord;
    :catchall_1
    move-exception v18

    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v18

    .restart local v4    # "N":I
    .restart local v6    # "i":I
    :cond_6
    :try_start_4
    const-string v18, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v6    # "i":I
    :cond_7
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v18, v0

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    const-string v18, "  Lights List:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    if-ge v6, v4, :cond_9

    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_8

    const-string v18, "  > "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    const-string v18, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    const-string v18, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v6    # "i":I
    :cond_a
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mUseAttentionLight="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mNotificationPulseEnabled="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mMissedNotificationLightEnabled="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mMissedNotificationLightEnabled:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mSoundNotificationKey="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mVibrateNotificationKey="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mDisableNotificationEffects="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mCallState="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mSystemReady="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  mArchive="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/notification/NotificationManagerService$Archive;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/notification/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/service/notification/StatusBarNotification;

    .local v15, "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz p2, :cond_d

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v18

    if-eqz v18, :cond_c

    :cond_d
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    const/16 v18, 0x5

    move/from16 v0, v18

    if-lt v6, v0, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e

    const-string v18, "    ..."

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    .end local v15    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_e
    if-nez v17, :cond_f

    const-string v18, "\n  Usage Stats:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v18, v0

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    :cond_f
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10

    if-eqz v17, :cond_11

    :cond_10
    const-string v18, "\n  Zen Mode:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v18, "    mInterruptionFilter="

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    move-object/from16 v18, v0

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v18, "\n  Zen Log:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v18, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/server/notification/ZenLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_11
    if-nez v17, :cond_14

    const-string v18, "\n  Ranking Config:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    move-object/from16 v18, v0

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/RankingHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    const-string v18, "\n  Notification listeners:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    const-string v18, "    mListenerHints: "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v18, "    mListenersDisablingEffects: ("

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArraySet;->size()I

    move-result v4

    .restart local v4    # "N":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_6
    if-ge v6, v4, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .local v10, "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-lez v6, :cond_12

    const/16 v18, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    :cond_12
    iget-object v0, v10, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .end local v10    # "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_13
    const/16 v18, 0x29

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(C)V

    .end local v4    # "N":I
    .end local v6    # "i":I
    :cond_14
    const-string v18, "\n  Policy access:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v18, "    mPolicyAccess: "

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPolicyAccess:Lcom/android/server/notification/NotificationManagerService$PolicyAccess;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v18, "\n  Condition providers:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    const-string v18, "\n  Group summaries:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    .local v14, "r":Lcom/android/server/notification/NotificationRecord;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " -> "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    if-eq v0, v14, :cond_15

    const-string v18, "!!!!!!LEAK: Record not found in mNotificationsByKey."

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v18, "      "

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_7

    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v14    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_16
    :try_start_5
    const-string v18, "\n  Banned Packages:"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->getPackageBans(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Landroid/util/ArrayMap;

    move-result-object v12

    .local v12, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v12}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_17
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .local v16, "userId":Ljava/lang/Integer;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .local v13, "packageName":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ": "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_8

    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v16    # "userId":Ljava/lang/Integer;
    :catch_0
    move-exception v18

    :cond_18
    :try_start_6
    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void
.end method

.method enqueueEdgeNotificationInternal(Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Bundle;I)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "id"    # I
    .param p6, "extra"    # Landroid/os/Bundle;
    .param p7, "incomingUserId"    # I

    .prologue
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueEdgeNotificationInternal: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "enqueueNotificationExtra"

    move v0, p4

    move v1, p3

    move v2, p7

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .local v5, "userId":I
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v5}, Landroid/os/UserHandle;-><init>(I)V

    .local v7, "user":Landroid/os/UserHandle;
    if-eqz p1, :cond_1

    if-nez p6, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null not allowed: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " notification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$8;

    move-object v1, p0

    move-object v2, p1

    move v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$8;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/os/Bundle;I)V

    invoke-virtual {v6, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
    .locals 23
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "notification"    # Landroid/app/Notification;
    .param p8, "idOut"    # [I
    .param p9, "incomingUserId"    # I

    .prologue
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enqueueNotificationInternal: pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " notification="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->isGearNotification(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p7

    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    const-string v3, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .local v21, "uri":Landroid/net/Uri;
    const-string v3, "getGearNotificationState"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/notification/NotificationManagerService;->getKnoxBoolValue(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v17

    .local v17, "gearNotificationState":Z
    if-nez v17, :cond_2

    const-string v3, "NotificationService"

    const-string v4, "Gear ongoing notification disabled by Knox Customization"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v17    # "gearNotificationState":Z
    .end local v21    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Lcom/android/server/notification/NotificationManagerService;->isUidSystem(I)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_3
    const/4 v14, 0x1

    .local v14, "isSystemNotification":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isListenerPackage(Ljava/lang/String;)Z
    invoke-static {v3, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->access$5400(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Ljava/lang/String;)Z

    move-result v19

    .local v19, "isNotificationFromListener":Z
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "enqueueNotification"

    move/from16 v3, p4

    move/from16 v4, p3

    move/from16 v5, p9

    move-object/from16 v9, p1

    invoke-static/range {v3 .. v9}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v13

    .local v13, "userId":I
    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    .local v12, "user":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/server/notification/NotificationManagerService;->edm_isStatusBarNotificationAllowedAsUser(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v13, v2}, Lcom/android/server/notification/NotificationManagerService;->edm_handleStatusBarNotificationNotAllowedAsUser(Ljava/lang/String;ILandroid/app/Notification;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_4
    if-nez v14, :cond_6

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    const/16 v16, 0x0

    .local v16, "count":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, "N":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/notification/NotificationRecord;

    .local v20, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    if-ne v3, v13, :cond_a

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    move/from16 v0, p6

    if-ne v3, v0, :cond_9

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .end local v20    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v15    # "N":I
    .end local v16    # "count":I
    .end local v18    # "i":I
    :cond_6
    if-eqz p1, :cond_7

    if-nez p7, :cond_b

    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "null not allowed: pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " notification="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v12    # "user":Landroid/os/UserHandle;
    .end local v13    # "userId":I
    .end local v14    # "isSystemNotification":Z
    .end local v19    # "isNotificationFromListener":Z
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_1

    .restart local v12    # "user":Landroid/os/UserHandle;
    .restart local v13    # "userId":I
    .restart local v14    # "isSystemNotification":Z
    .restart local v15    # "N":I
    .restart local v16    # "count":I
    .restart local v18    # "i":I
    .restart local v19    # "isNotificationFromListener":Z
    .restart local v20    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_9
    add-int/lit8 v16, v16, 0x1

    const/16 v3, 0x32

    move/from16 v0, v16

    if-lt v0, v3, :cond_a

    :try_start_1
    const-string v3, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package has already posted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " notifications.  Not showing more.  package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto/16 :goto_0

    .end local v15    # "N":I
    .end local v18    # "i":I
    .end local v20    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v15    # "N":I
    .restart local v18    # "i":I
    .restart local v20    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_a
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .end local v15    # "N":I
    .end local v16    # "count":I
    .end local v18    # "i":I
    .end local v20    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_b
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->isValid()Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid notification (): pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " notification="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v22, v0

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$9;

    move-object/from16 v4, p0

    move-object/from16 v5, p7

    move-object/from16 v6, p1

    move/from16 v7, p3

    move-object/from16 v8, p2

    move/from16 v9, p6

    move-object/from16 v10, p5

    move/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/android/server/notification/NotificationManagerService$9;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILandroid/os/UserHandle;IZ)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    const/4 v3, 0x0

    aput p6, p8, v3

    goto/16 :goto_0
.end method

.method public getKnoxBoolValue(Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "strValue":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v8    # "strValue":Ljava/lang/String;
    :goto_1
    return v0

    .restart local v8    # "strValue":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .end local v8    # "strValue":Ljava/lang/String;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    move v0, p3

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method indexOfNotificationLocked(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v1    # "i":I
    :goto_1
    return v1

    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    .prologue
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v3, p4}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v4, p3, :cond_0

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v0    # "i":I
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_1
    return v0

    .restart local v0    # "i":I
    .restart local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;

    .prologue
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, "cbak":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .local v4, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v5}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v0, :cond_0

    .end local v1    # "i":I
    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :goto_1
    return v1

    .restart local v1    # "i":I
    .restart local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method keepProcessAliveLocked(I)V
    .locals 9
    .param p1, "pid"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .local v4, "toastCount":I
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .local v3, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget v6, v3, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    if-ne v6, p1, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v4, :cond_2

    :goto_1
    const/4 v8, 0x1

    invoke-interface {v6, v7, p1, v5, v8}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public onBootPhase(I)V
    .locals 7
    .param p1, "phase"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v4, 0x1f4

    if-ne p1, v4, :cond_1

    iput-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    const-class v4, Landroid/media/AudioManagerInternal;

    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManagerInternal;

    iput-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/ZenModeHelper;->onSystemReady()V

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    .local v3, "pickupObserver":Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;->observe()V

    new-instance v4, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-direct {v4, p0}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    :try_start_0
    const-string v4, "android.media.IRingtonePlayer"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "classRingtonePlayer":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/INotificationPlayerOnCompletionListener;

    aput-object v5, v2, v4

    .local v2, "parameterRingtonePlayer":[Ljava/lang/Class;
    const-string v4, "setOnCompletionListener"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0    # "classRingtonePlayer":Ljava/lang/Class;
    .end local v2    # "parameterRingtonePlayer":[Ljava/lang/Class;
    .end local v3    # "pickupObserver":Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;
    :cond_0
    :goto_0
    return-void

    .restart local v3    # "pickupObserver":Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    const-string v4, "NotificationService"

    const-string v5, "ClassNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    goto :goto_0

    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    const-string v4, "NotificationService"

    const-string v5, "NoSuchMethodException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    goto :goto_0

    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    .end local v3    # "pickupObserver":Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;
    :cond_1
    const/16 v4, 0x258

    if-ne p1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->observe()V

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onBootPhaseAppsCanStart()V

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v4}, Lcom/android/server/notification/ConditionProviders;->onBootPhaseAppsCanStart()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 17

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .local v15, "resources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPM:Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPM:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "pickup"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    const-class v1, Landroid/view/WindowManagerInternal;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mWindowManager:Landroid/view/WindowManagerInternal;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    const v1, 0x1070036

    :try_start_0
    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .local v12, "extractorNames":[Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/notification/NotificationUsageStats;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    new-instance v1, Lcom/android/server/notification/RankingHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5}, Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-direct {v1, v2, v3, v5, v12}, Lcom/android/server/notification/RankingHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    new-instance v1, Lcom/android/server/notification/ConditionProviders;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/notification/ConditionProviders;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    new-instance v1, Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/notification/ZenModeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/notification/NotificationManagerService$5;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    new-instance v16, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v16, "systemDir":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "notification_policy.xml"

    move-object/from16 v0, v16

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->importOldBlockDb()V

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V

    const-class v1, Lcom/android/server/lights/LightsManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/lights/LightsManager;

    .local v14, "lights":Lcom/android/server/lights/LightsManager;
    const/4 v1, 0x6

    invoke-virtual {v14, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    const/4 v1, 0x7

    invoke-virtual {v14, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$EdgeLight;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$EdgeLight;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLight:Lcom/android/server/notification/NotificationManagerService$EdgeLight;

    const v1, 0x10600ed

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    const v1, 0x10e0053

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I

    const v1, 0x10e0054

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I

    const v1, 0x1070032

    const/16 v2, 0x11

    sget-object v3, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    invoke-static {v15, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultVibrationPattern:[J

    const v1, 0x1070033

    const/16 v2, 0x11

    sget-object v3, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    invoke-static {v15, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    const v1, 0x112002c

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->initZenMode()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->listenForCallState()V

    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    :cond_1
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .local v13, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .local v4, "pkgFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v8, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v8, "sdFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$Archive;

    const v2, 0x10e005a

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/server/notification/NotificationManagerService$Archive;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    const-string v1, "notification"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v1, Lcom/android/server/notification/NotificationManagerInternal;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    .end local v4    # "pkgFilter":Landroid/content/IntentFilter;
    .end local v8    # "sdFilter":Landroid/content/IntentFilter;
    .end local v12    # "extractorNames":[Ljava/lang/String;
    .end local v13    # "filter":Landroid/content/IntentFilter;
    .end local v14    # "lights":Lcom/android/server/lights/LightsManager;
    .end local v16    # "systemDir":Ljava/io/File;
    :catch_0
    move-exception v11

    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    new-array v12, v1, [Ljava/lang/String;

    .restart local v12    # "extractorNames":[Ljava/lang/String;
    goto/16 :goto_0
.end method

.method removeEdgeNotificationInternal(IILjava/lang/String;ILandroid/os/Bundle;I)V
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "extra"    # Landroid/os/Bundle;
    .param p6, "userId"    # I

    .prologue
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$12;

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$12;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/os/Bundle;I)V

    invoke-virtual {v6, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public savePolicyFile()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "packageName"    # Ljava/lang/CharSequence;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .local v1, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v3, 0x40

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    const-class v3, Landroid/app/Notification;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .local v2, "tickerText":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method setNotificationsEnabledForPackageImpl(Ljava/lang/String;IZ)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_1

    const-string v0, "en"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "abling notifications for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0xb

    if-eqz p3, :cond_2

    move v0, v4

    :goto_1
    invoke-virtual {v1, v2, p2, p1, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    if-nez p3, :cond_0

    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    :cond_0
    return-void

    :cond_1
    const-string v0, "dis"

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_1
.end method

.method showNextToastLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .local v2, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :goto_0
    if-eqz v2, :cond_1

    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Show pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v3}, Landroid/app/ITransientNotification;->show()V

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->scheduleTimeoutLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object died trying to show notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, "index":I
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    iget v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveLocked(I)V

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .restart local v2    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method updateLightsLocked()V
    .locals 15

    .prologue
    const/16 v14, 0xc

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v3, 0x0

    .local v3, "ledNotification":Lcom/android/server/notification/NotificationRecord;
    const/4 v8, 0x0

    .local v8, "tempLedNotification":Lcom/android/server/notification/NotificationRecord;
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    if-nez v3, :cond_3

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "owner":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "tempLedNotification":Lcom/android/server/notification/NotificationRecord;
    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    .restart local v8    # "tempLedNotification":Lcom/android/server/notification/NotificationRecord;
    if-nez v8, :cond_1

    const-string v9, "NotificationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LED Notification does not exist: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_2
    move-object v3, v8

    goto :goto_1

    .end local v7    # "owner":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    .local v1, "isForceLED":Z
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v9

    and-int/lit16 v9, v9, 0x400

    if-nez v9, :cond_4

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->secFlags:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    if-eqz v3, :cond_6

    iget-boolean v9, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    if-nez v9, :cond_6

    iget-boolean v9, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    if-eqz v9, :cond_8

    if-nez v1, :cond_8

    :cond_6
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v9}, Lcom/android/server/lights/Light;->turnOff()V

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v9}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightOff()V

    invoke-direct {p0, v12}, Lcom/android/server/notification/NotificationManagerService;->setLEDCoverState(Z)V

    :goto_2
    if-eqz v3, :cond_7

    iget-boolean v9, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    if-eqz v9, :cond_f

    :cond_7
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLight:Lcom/android/server/notification/NotificationManagerService$EdgeLight;

    invoke-virtual {v9}, Lcom/android/server/notification/NotificationManagerService$EdgeLight;->turnOff()V

    :goto_3
    return-void

    :cond_8
    iget-object v9, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .local v6, "ledno":Landroid/app/Notification;
    iget v2, v6, Landroid/app/Notification;->ledARGB:I

    .local v2, "ledARGB":I
    iget v5, v6, Landroid/app/Notification;->ledOnMS:I

    .local v5, "ledOnMS":I
    iget v4, v6, Landroid/app/Notification;->ledOffMS:I

    .local v4, "ledOffMS":I
    iget v9, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_9

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I

    :cond_9
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->isPrayModeLedOn(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v9}, Lcom/android/server/lights/Light;->turnOff()V

    :cond_a
    :goto_4
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v9, v2, v5, v4}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightPulse(III)V

    goto :goto_2

    :cond_b
    iget-boolean v9, p0, Lcom/android/server/notification/NotificationManagerService;->mMissedNotificationReminderLightEnabled:Z

    if-eqz v9, :cond_d

    iget-boolean v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationReminder:Z

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    iget v10, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    iget v11, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I

    iget v12, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I

    invoke-virtual {v9, v10, v14, v11, v12}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_4

    :cond_c
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v9}, Lcom/android/server/lights/Light;->turnOff()V

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v9}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightOff()V

    invoke-direct {p0, v12}, Lcom/android/server/notification/NotificationManagerService;->setLEDCoverState(Z)V

    goto :goto_4

    :cond_d
    iget-boolean v9, p0, Lcom/android/server/notification/NotificationManagerService;->mMissedNotificationLightEnabled:Z

    if-eqz v9, :cond_a

    iget v9, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v9, v2, v14, v5, v4}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    :goto_5
    invoke-direct {p0, v13}, Lcom/android/server/notification/NotificationManagerService;->setLEDCoverState(Z)V

    goto :goto_4

    :cond_e
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v9, v2, v13, v5, v4}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_5

    .end local v2    # "ledARGB":I
    .end local v4    # "ledOffMS":I
    .end local v5    # "ledOnMS":I
    .end local v6    # "ledno":Landroid/app/Notification;
    :cond_f
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mEdgeLight:Lcom/android/server/notification/NotificationManagerService$EdgeLight;

    invoke-virtual {v9, v3}, Lcom/android/server/notification/NotificationManagerService$EdgeLight;->turnOn(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_3
.end method
