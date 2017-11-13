.class public Lcom/android/server/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;,
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;,
        Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    }
.end annotation


# static fields
.field private static final ACTION_FINGERPRINT_ADDED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_ADDED"

.field private static final ACTION_FINGERPRINT_REMOVED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

.field private static final ACTION_FINGERPRINT_RESET:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_RESET"

.field private static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

.field private static final DEBUG:Z

.field private static final ENROLLMENT_TIMEOUT_MS:I = 0x0

.field private static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0x7530L

.field private static final FINGERPRINTD:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintDaemon"

.field private static final FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field private static final IS_SUPPORT_LOCKOUT_FEATURE:Z = true

.field private static final MAX_FAILED_ATTEMPTS:I = 0x5

.field private static final MSG_USER_REMOVED:I = 0xb

.field private static final MSG_USER_SWITCHING:I = 0xa

.field private static final MS_PER_SEC:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "FingerprintService"

.field private static accquiredEventNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static errorEventNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final isEnableSurveyMode:Z

.field private static requestCmdNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

.field private mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

.field private mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private mFailedAttempts:I

.field private final mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

.field private final mFpmsPackage:Ljava/lang/String;

.field private mHalDeviceId:J

.field mHandler:Landroid/os/Handler;

.field private mIsEnrolling:Z

.field private final mKeyguardPackage:Ljava/lang/String;

.field private mLatestSensorStatus:I

.field private mLockOutTime:J

.field private final mLockoutMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private final mResetFailedAttemptsRunnable:Ljava/lang/Runnable;

.field private final syncObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    .line 126
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->isEnableSurveyMode:Z

    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 221
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 110
    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 111
    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 112
    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 113
    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    .line 124
    const-string v0, "com.samsung.android.fingerprint.service"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpmsPackage:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->syncObj:Ljava/lang/Object;

    .line 130
    iput v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mLatestSensorStatus:I

    .line 132
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    .line 154
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockOutTime:J

    .line 160
    iput-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z

    .line 163
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 165
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$2;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 213
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$3;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetFailedAttemptsRunnable:Ljava/lang/Runnable;

    .line 1397
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$5;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    .line 222
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    .line 225
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    .line 226
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    .line 227
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 228
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 230
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService;->accquiredEventNameMap:Landroid/util/SparseArray;

    .line 232
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService;->errorEventNameMap:Landroid/util/SparseArray;

    .line 233
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService;->requestCmdNameMap:Landroid/util/SparseArray;

    .line 234
    sget-object v0, Lcom/android/server/fingerprint/FingerprintService;->accquiredEventNameMap:Landroid/util/SparseArray;

    const-string v1, "FINGERPRINT_ACQUIRED_"

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/android/server/fingerprint/FingerprintService;->errorEventNameMap:Landroid/util/SparseArray;

    const-string v1, "FINGERPRINT_ERROR_"

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 236
    sget-object v0, Lcom/android/server/fingerprint/FingerprintService;->requestCmdNameMap:Landroid/util/SparseArray;

    const-string v1, "FINGERPRINT_REQUEST_"

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 238
    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/FingerprintService;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->removeFinger(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/fingerprint/FingerprintService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->handleFailedAttempt(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/fingerprint/FingerprintService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->userActivity()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/fingerprint/FingerprintService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetFailedAttemptsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->resetFailedAttempts()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/fingerprint/FingerprintService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->checkIntegrity(I)V

    return-void
.end method

.method private addLockoutResetMonitor(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 1
    .param p1, "monitor"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    :cond_0
    return-void
.end method

.method private addTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V
    .locals 3
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p2, "fingerId"    # I

    .prologue
    .line 506
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTemplateForUser : fingerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    if-nez p1, :cond_1

    .line 508
    const-string v0, "FingerprintService"

    const-string v1, "addTemplateForUser : no clientMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->addFingerprintForUser(Landroid/content/Context;II)V

    .line 512
    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-direct {p0, v0, p2}, Lcom/android/server/fingerprint/FingerprintService;->sendBroadcast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private canStopExclusiveIdentify(Landroid/os/Bundle;ZLjava/lang/String;)Z
    .locals 7
    .param p1, "attr"    # Landroid/os/Bundle;
    .param p2, "restricted"    # Z
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1885
    if-nez p2, :cond_1

    .line 1886
    if-eqz p3, :cond_0

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1887
    const-string v4, "FingerprintService"

    const-string v5, "canStopExclusiveIdentify : Keyguard client"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    :goto_0
    return v3

    .line 1890
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v5, "privileged_attr"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    .line 1892
    const-string v4, "FingerprintService"

    const-string v5, "canStopExclusiveIdentify : have PRIVILEGED_ATTR_EXCLUSIVE_IDENTIFY attr"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1896
    :cond_1
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->opPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1897
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 1898
    .local v2, "kgm":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1899
    const-string v4, "FingerprintService"

    const-string v5, "canStopExclusiveIdentify : keyguard is unlocked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1904
    .end local v2    # "kgm":Landroid/app/KeyguardManager;
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 1905
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_3

    .line 1906
    const-string v3, "FingerprintService"

    const-string v5, "canStopExclusiveIdentify: no fingeprintd!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1907
    goto :goto_0

    .line 1909
    :cond_3
    const v3, 0x186c9

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->getSensorStatus(Landroid/hardware/fingerprint/IFingerprintDaemon;)I

    move-result v5

    if-ne v3, v5, :cond_4

    .line 1910
    const-string v3, "FingerprintService"

    const-string v5, "canStopExclusiveIdentify : sensor is working"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 1911
    goto :goto_0

    .line 1913
    .end local v0    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    :catch_0
    move-exception v1

    .line 1914
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "FingerprintService"

    const-string v5, "canStopExclusiveIdentify: failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1916
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v3, "FingerprintService"

    const-string v5, "canStopExclusiveIdentify : false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1917
    goto :goto_0
.end method

.method private canUseFingerprint(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "foregroundOnly"    # Z

    .prologue
    .line 1010
    const-string v0, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canUseFingerprint(Ljava/lang/String;ZZ)Z
    .locals 6
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "foregroundOnly"    # Z
    .param p3, "restricted"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1014
    const-string v4, "android.permission.USE_FINGERPRINT"

    invoke-virtual {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1015
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1016
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1017
    .local v0, "pid":I
    if-nez p3, :cond_1

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.samsung.android.fingerprint.service"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1033
    :cond_0
    :goto_0
    return v2

    .line 1020
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->isCurrentUserOrProfile(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1021
    const-string v2, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; not a current user or profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1022
    goto :goto_0

    .line 1024
    :cond_2
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x37

    invoke-virtual {v4, v5, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 1026
    const-string v2, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; permission denied"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1027
    goto :goto_0

    .line 1029
    :cond_3
    if-eqz p2, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->isForegroundActivity(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1030
    const-string v2, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; not in foreground"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1031
    goto :goto_0
.end method

.method private cancelLockoutReset()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 418
    return-void
.end method

.method private checkIntegrity(I)V
    .locals 32
    .param p1, "userId"    # I

    .prologue
    .line 1922
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v18

    .line 1923
    .local v18, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v18, :cond_1

    .line 1924
    const-string v3, "FingerprintService"

    const-string v4, "checkIntegrity: no fingeprintd!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    :cond_0
    :goto_0
    return-void

    .line 1928
    :cond_1
    const/16 v3, 0xa

    :try_start_0
    new-array v7, v3, [B

    .line 1929
    .local v7, "tmpOutBuffer":[B
    const/4 v4, 0x0

    const/16 v5, 0xb

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move/from16 v9, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/fingerprint/FingerprintService;->startRequest(Landroid/os/IBinder;I[B[BIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)I

    move-result v31

    .line 1930
    .local v31, "sizeOfDaemon":I
    if-gez v31, :cond_2

    .line 1931
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIntegrity: error ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2006
    .end local v7    # "tmpOutBuffer":[B
    .end local v31    # "sizeOfDaemon":I
    :catch_0
    move-exception v19

    .line 2007
    .local v19, "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1934
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v7    # "tmpOutBuffer":[B
    .restart local v31    # "sizeOfDaemon":I
    :cond_2
    :try_start_1
    move/from16 v0, v31

    invoke-static {v7, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v29

    .line 1935
    .local v29, "outBuffer":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v22

    .line 1936
    .local v22, "fpList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 1937
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1938
    .local v21, "fpInfo":Ljava/lang/StringBuilder;
    const-string v3, "FPS : "

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1939
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/fingerprint/Fingerprint;

    .line 1940
    .local v20, "fp":Landroid/hardware/fingerprint/Fingerprint;
    const-string v3, "%02d "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1942
    .end local v20    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_3
    const-string v3, "\n"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1943
    const-string v3, "FPD : "

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1944
    move-object/from16 v16, v29

    .local v16, "arr$":[B
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v28, v0

    .local v28, "len$":I
    const/16 v26, 0x0

    .local v26, "i$":I
    :goto_2
    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    aget-byte v17, v16, v26

    .line 1945
    .local v17, "b":B
    const-string v3, "%02d "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1944
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 1947
    .end local v17    # "b":B
    :cond_4
    const-string v3, "FingerprintService"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    .end local v16    # "arr$":[B
    .end local v21    # "fpInfo":Ljava/lang/StringBuilder;
    .end local v26    # "i$":I
    .end local v28    # "len$":I
    :cond_5
    if-lez v31, :cond_10

    .line 1950
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 1951
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v30

    .line 1952
    .local v30, "sFpMgr":Lcom/samsung/android/fingerprint/FingerprintManager;
    move-object/from16 v16, v29

    .restart local v16    # "arr$":[B
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v28, v0

    .restart local v28    # "len$":I
    const/16 v26, 0x0

    .restart local v26    # "i$":I
    :goto_3
    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    aget-byte v25, v16, v26
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1953
    .local v25, "i":B
    const/16 v23, 0x0

    .line 1955
    .local v23, "fpName":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getIndexName(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v23

    .line 1958
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    move/from16 v0, v25

    move/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->addFingerprintForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V

    .line 1959
    if-eqz v23, :cond_6

    .line 1960
    const/4 v3, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->setIndexName(ILjava/lang/String;)Z

    .line 1952
    :goto_5
    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    .line 1962
    :cond_6
    const-string v3, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v3, v1}, Lcom/android/server/fingerprint/FingerprintService;->sendBroadcast(Ljava/lang/String;I)V

    goto :goto_5

    .line 1967
    .end local v16    # "arr$":[B
    .end local v23    # "fpName":Ljava/lang/String;
    .end local v25    # "i":B
    .end local v26    # "i$":I
    .end local v28    # "len$":I
    .end local v30    # "sFpMgr":Lcom/samsung/android/fingerprint/FingerprintManager;
    :cond_7
    move-object/from16 v16, v29

    .restart local v16    # "arr$":[B
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v28, v0

    .restart local v28    # "len$":I
    const/16 v26, 0x0

    .restart local v26    # "i$":I
    move/from16 v27, v26

    .end local v26    # "i$":I
    .local v27, "i$":I
    :goto_6
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_b

    aget-byte v25, v16, v27

    .line 1968
    .restart local v25    # "i":B
    const/16 v24, 0x0

    .line 1969
    .local v24, "hasFinger":Z
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .end local v27    # "i$":I
    .local v26, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/fingerprint/Fingerprint;

    .line 1970
    .restart local v20    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    move/from16 v0, v25

    if-ne v0, v3, :cond_8

    .line 1971
    const/16 v24, 0x1

    .line 1975
    .end local v20    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_9
    if-nez v24, :cond_a

    .line 1976
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    move/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils;->addFingerprintForUser(Landroid/content/Context;II)V

    .line 1977
    const-string v3, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v3, v1}, Lcom/android/server/fingerprint/FingerprintService;->sendBroadcast(Ljava/lang/String;I)V

    .line 1967
    :cond_a
    add-int/lit8 v26, v27, 0x1

    .local v26, "i$":I
    move/from16 v27, v26

    .end local v26    # "i$":I
    .restart local v27    # "i$":I
    goto :goto_6

    .line 1981
    .end local v24    # "hasFinger":Z
    .end local v25    # "i":B
    :cond_b
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .end local v27    # "i$":I
    :cond_c
    :goto_7
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/fingerprint/Fingerprint;

    .line 1982
    .restart local v20    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    const/16 v24, 0x0

    .line 1983
    .restart local v24    # "hasFinger":Z
    move-object/from16 v16, v29

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v28, v0

    const/16 v27, 0x0

    .restart local v27    # "i$":I
    :goto_8
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    aget-byte v25, v16, v27

    .line 1984
    .restart local v25    # "i":B
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    move/from16 v0, v25

    if-ne v0, v3, :cond_d

    .line 1985
    const/16 v24, 0x1

    .line 1983
    :cond_d
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 1988
    .end local v25    # "i":B
    :cond_e
    if-nez v24, :cond_c

    .line 1989
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    move/from16 v0, p1

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    .line 1990
    const-string v3, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->sendBroadcast(Ljava/lang/String;I)V

    goto :goto_7

    .line 1993
    .end local v20    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    .end local v24    # "hasFinger":Z
    .end local v27    # "i$":I
    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1994
    const-string v3, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->sendBroadcast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1999
    .end local v16    # "arr$":[B
    .end local v28    # "len$":I
    :cond_10
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2000
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/fingerprint/Fingerprint;

    .line 2002
    .restart local v20    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v8, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move/from16 v13, p1

    invoke-direct/range {v8 .. v15}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3}, Lcom/android/server/fingerprint/FingerprintService;->removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_9

    .line 1956
    .end local v20    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    .restart local v16    # "arr$":[B
    .restart local v23    # "fpName":Ljava/lang/String;
    .restart local v25    # "i":B
    .local v26, "i$":I
    .restart local v28    # "len$":I
    .restart local v30    # "sFpMgr":Lcom/samsung/android/fingerprint/FingerprintManager;
    :catch_1
    move-exception v3

    goto/16 :goto_4
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1743
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1745
    .local v1, "dump":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v8, "service"

    const-string v9, "Fingerprint Manager"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1747
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1748
    .local v5, "sets":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 1749
    .local v6, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 1750
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v9, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v7}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 1751
    .local v0, "N":I
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1752
    .local v4, "set":Lorg/json/JSONObject;
    const-string/jumbo v8, "id"

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1753
    const-string/jumbo v8, "count"

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1754
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1758
    .end local v0    # "N":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "set":Lorg/json/JSONObject;
    .end local v5    # "sets":Lorg/json/JSONArray;
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "userId":I
    :catch_0
    move-exception v2

    .line 1759
    .local v2, "e":Lorg/json/JSONException;
    const-string v8, "FingerprintService"

    const-string/jumbo v9, "dump formatting failure"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1761
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1762
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " latest sensor status : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/fingerprint/FingerprintService;->mLatestSensorStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1763
    return-void

    .line 1757
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "sets":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    const-string/jumbo v8, "prints"

    invoke-virtual {v1, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 211
    :cond_0
    return-void

    .line 194
    :cond_1
    const-class v7, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 195
    .local v4, "fields":[Ljava/lang/reflect/Field;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v0, v5

    .line 196
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 195
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 200
    :cond_3
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 201
    .local v3, "fieldValue":I
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 202
    .end local v3    # "fieldValue":I
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "FingerprintService"

    const-string/jumbo v8, "generateNameMap: failed "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-boolean v7, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 205
    if-eqz v1, :cond_2

    .line 206
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getLockoutResetIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getSensorStatus(Landroid/hardware/fingerprint/IFingerprintDaemon;)I
    .locals 8
    .param p1, "daemon"    # Landroid/hardware/fingerprint/IFingerprintDaemon;

    .prologue
    .line 832
    if-nez p1, :cond_1

    .line 833
    const-string v4, "FingerprintService"

    const-string/jumbo v5, "getSensorStatus: daemon is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const v3, 0x186ca

    .line 848
    :cond_0
    :goto_0
    return v3

    .line 836
    :cond_1
    const v3, 0x186ca

    .line 838
    .local v3, "result":I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 839
    .local v0, "begin":J
    const/4 v4, 0x6

    const/4 v5, 0x0

    new-array v5, v5, [B

    const/4 v6, 0x0

    new-array v6, v6, [B

    const/4 v7, 0x0

    invoke-interface {p1, v4, v5, v6, v7}, Landroid/hardware/fingerprint/IFingerprintDaemon;->request(I[B[BI)I

    move-result v3

    .line 840
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSensorStatus FP_FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms) RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iput v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mLatestSensorStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    const v4, 0x186c8

    if-eq v3, v4, :cond_0

    const v4, 0x186c9

    if-eq v3, v4, :cond_0

    .line 843
    const v3, 0x186ca

    goto :goto_0

    .line 845
    .end local v0    # "begin":J
    :catch_0
    move-exception v2

    .line 846
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "FingerprintService"

    const-string/jumbo v5, "getSensorStatus"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleFailedAttempt(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    .locals 4
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    const/4 v0, 0x1

    .line 442
    if-eqz p1, :cond_1

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 445
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleFailedAttempt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    .line 447
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->scheduleLockoutReset()V

    .line 450
    const/4 v1, 0x7

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {p1, v1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 451
    const-string v1, "FingerprintService"

    const-string v2, "Cannot send lockout message to client"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :goto_0
    return v0

    .line 453
    :cond_0
    iput-boolean v0, p1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isDone:Z

    goto :goto_0

    .line 458
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inLockoutMode()Z
    .locals 2

    .prologue
    .line 405
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isForegroundActivity(II)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 988
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 990
    .local v4, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 991
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 992
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 993
    .local v3, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p2, :cond_0

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p1, :cond_0

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    .line 995
    const/4 v5, 0x1

    .line 1001
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_1
    return v5

    .line 991
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v4    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 998
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v1

    .line 999
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "FingerprintService"

    const-string v6, "am.getRunningAppProcesses() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isTZCommand(I)Z
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 819
    packed-switch p1, :pswitch_data_0

    .line 828
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 826
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 819
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private listenForUserSwitches()V
    .locals 3

    .prologue
    .line 1817
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$6;

    invoke-direct {v2, p0}, Lcom/android/server/fingerprint/FingerprintService$6;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1836
    :goto_0
    return-void

    .line 1833
    :catch_0
    move-exception v0

    .line 1834
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to listen for user switching event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyLockoutResetMonitors()V
    .locals 2

    .prologue
    .line 1048
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1049
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->sendLockoutReset()V

    .line 1048
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1051
    :cond_0
    return-void
.end method

.method private remove(Landroid/hardware/fingerprint/IFingerprintDaemon;II)I
    .locals 8
    .param p1, "daemon"    # Landroid/hardware/fingerprint/IFingerprintDaemon;
    .param p2, "fpId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 807
    const/4 v3, -0x1

    .line 809
    .local v3, "result":I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 810
    .local v0, "begin":J
    invoke-interface {p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->remove(II)I

    move-result v3

    .line 811
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove FP_FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms) RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    .end local v0    # "begin":J
    :goto_0
    return v3

    .line 812
    :catch_0
    move-exception v2

    .line 813
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string/jumbo v5, "remove failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    .locals 2
    .param p1, "client"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    const/4 v1, 0x0

    .line 392
    if-nez p1, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->destroy()V

    .line 394
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-ne p1, v0, :cond_2

    .line 395
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    goto :goto_0

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-ne p1, v0, :cond_3

    .line 397
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    goto :goto_0

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-ne p1, v0, :cond_0

    .line 399
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    goto :goto_0
.end method

.method private removeFinger(II)I
    .locals 15
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v9

    .line 778
    .local v9, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v9, :cond_1

    .line 779
    const-string v1, "FingerprintService"

    const-string/jumbo v2, "removeFinger: no fingeprintd!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v14, -0x1

    .line 803
    :cond_0
    :goto_0
    return v14

    .line 782
    :cond_1
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v6

    .line 783
    .local v6, "effectiveUserId":I
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 784
    const/4 v14, 0x0

    .line 785
    .local v14, "retVal":I
    const/4 v1, -0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 786
    invoke-virtual {p0, v6}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v11

    .line 787
    .local v11, "fpList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/fingerprint/Fingerprint;

    .line 788
    .local v10, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v10}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    invoke-direct {p0, v9, v1, v6}, Lcom/android/server/fingerprint/FingerprintService;->remove(Landroid/hardware/fingerprint/IFingerprintDaemon;II)I

    move-result v13

    .line 789
    .local v13, "result":I
    if-eqz v13, :cond_2

    .line 790
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed, result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const/4 v14, -0x1

    .line 792
    goto :goto_1

    .line 794
    :cond_2
    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    invoke-virtual {v10}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V

    goto :goto_1

    .line 797
    .end local v10    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    .end local v11    # "fpList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "result":I
    :cond_3
    move/from16 v0, p1

    invoke-direct {p0, v9, v0, v6}, Lcom/android/server/fingerprint/FingerprintService;->remove(Landroid/hardware/fingerprint/IFingerprintDaemon;II)I

    move-result v1

    if-nez v1, :cond_4

    .line 798
    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    move/from16 v0, p1

    invoke-direct {p0, v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V

    .line 799
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 801
    :cond_4
    const/4 v14, -0x1

    goto/16 :goto_0
.end method

.method private removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 1
    .param p1, "monitor"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1045
    return-void
.end method

.method private removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V
    .locals 6
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p2, "fingerId"    # I

    .prologue
    const-wide/16 v4, -0x1

    .line 490
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeTemplateForUser : fingerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    if-nez p1, :cond_1

    .line 492
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "removeTemplateForUser : no clientMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :goto_0
    return-void

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    .line 496
    iget v0, p1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    invoke-direct {p0, v0, p2}, Lcom/android/server/fingerprint/FingerprintService;->sendBroadcast(Ljava/lang/String;I)V

    .line 498
    const-string v0, "FPRM"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/server/fingerprint/FingerprintService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 500
    :cond_2
    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->sendBroadcast(Ljava/lang/String;I)V

    .line 501
    const-string v0, "FPRM"

    const-string v1, "ALL"

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/server/fingerprint/FingerprintService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private resetFailedAttempts()V
    .locals 2

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 429
    const-string v0, "FingerprintService"

    const-string v1, "Reset fingerprint lockout"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->cancelLockoutReset()V

    .line 434
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->notifyLockoutResetMonitors()V

    .line 436
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    .line 437
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockOutTime:J

    .line 439
    return-void
.end method

.method private scheduleLockoutReset()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7530

    .line 411
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 413
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v6

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockOutTime:J

    .line 414
    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;I)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "fingerId"    # I

    .prologue
    .line 462
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    .local v1, "intent":Landroid/content/Intent;
    if-lez p2, :cond_0

    .line 464
    const-string/jumbo v2, "fingerIndex"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 465
    const-string/jumbo v2, "verificationType"

    const-string v3, "Device Credential"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 470
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is sended with fingerId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :goto_0
    return-void

    .line 472
    :cond_1
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is sended"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendBroadcast failed :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V
    .locals 4
    .param p1, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p2, "error"    # I

    .prologue
    .line 480
    if-eqz p1, :cond_0

    .line 482
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-interface {p1, v2, v3, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to send error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stopPendingOperations(Z)V
    .locals 6
    .param p1, "initiatedByClient"    # Z

    .prologue
    .line 589
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopPendingOperations : initiatedByClient="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_0
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v3, :cond_1

    .line 591
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v3, v3, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v3, p1}, Lcom/android/server/fingerprint/FingerprintService;->stopEnrollment(Landroid/os/IBinder;Z)V

    .line 593
    :cond_1
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v3, :cond_2

    .line 594
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v3, v3, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v3, p1}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    .line 596
    :cond_2
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v3, :cond_3

    .line 597
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v3}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 600
    :cond_3
    if-eqz p1, :cond_4

    .line 602
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 603
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_5

    .line 604
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "stopPendingOperations: no fingeprintd!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .end local v0    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    :cond_4
    :goto_0
    return-void

    .line 607
    .restart local v0    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->getSensorStatus(Landroid/hardware/fingerprint/IFingerprintDaemon;)I

    move-result v3

    const v4, 0x186c9

    if-ne v3, v4, :cond_4

    .line 608
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelAuthentication()I

    move-result v2

    .line 609
    .local v2, "ret":I
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopPendingOperations: cancel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 611
    .end local v0    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    .end local v2    # "ret":I
    :catch_0
    move-exception v1

    .line 612
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "stopPendingOperations: failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateActiveGroup(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 1777
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    .line 1778
    .local v2, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v2, :cond_0

    .line 1780
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result p1

    .line 1803
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 1805
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1806
    .local v0, "begin":J
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/biometrics/fp/User_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-interface {v2, p1, v4}, Landroid/hardware/fingerprint/IFingerprintDaemon;->setActiveGroup(I[B)I

    .line 1807
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateActiveGroup FP_FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1812
    .end local v0    # "begin":J
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 1813
    return-void

    .line 1808
    :catch_0
    move-exception v3

    .line 1809
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string v5, "Failed to setActiveGroup():"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private userActivity()V
    .locals 5

    .prologue
    .line 382
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 383
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 384
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 242
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "fingerprintd died"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    .line 244
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JI)V

    .line 245
    return-void
.end method

.method checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 955
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    return-void
.end method

.method public getAuthenticatorId()J
    .locals 10

    .prologue
    .line 1839
    sget-boolean v6, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "FingerprintService"

    const-string/jumbo v7, "getAuthenticatorId"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    .line 1841
    .local v2, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v2, :cond_1

    .line 1843
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1844
    .local v0, "begin":J
    invoke-interface {v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->getAuthenticatorId()J

    move-result-wide v4

    .line 1845
    .local v4, "result":J
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAuthenticatorId FP_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1851
    .end local v0    # "begin":J
    .end local v4    # "result":J
    :goto_0
    return-wide v4

    .line 1847
    :catch_0
    move-exception v3

    .line 1848
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "getAuthenticatorId failed"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1851
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method getEffectiveUserId(I)I
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 960
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 961
    .local v2, "um":Landroid/os/UserManager;
    if-eqz v2, :cond_1

    .line 962
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 963
    .local v0, "callingIdentity":J
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    .line 964
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 968
    .end local v0    # "callingIdentity":J
    :goto_0
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getEffectiveUserId return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_0
    return p1

    .line 966
    :cond_1
    const-string v3, "FingerprintService"

    const-string v4, "Unable to acquire UserManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 936
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 937
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemonInternal(I)Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFingerprintDaemonInternal(I)Landroid/hardware/fingerprint/IFingerprintDaemon;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    if-nez v1, :cond_0

    .line 249
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    .line 250
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 252
    :try_start_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 253
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->init(Landroid/hardware/fingerprint/IFingerprintDaemonCallback;)V

    .line 254
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->openHal()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 255
    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 256
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(I)V

    .line 257
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->checkIntegrity(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 259
    :cond_1
    :try_start_3
    const-string v1, "FingerprintService"

    const-string v2, "Failed to open Fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v1, "FingerprintService"

    const-string v2, "Failed to open fingeprintd HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 248
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 267
    :cond_2
    :try_start_5
    const-string v1, "FingerprintService"

    const-string/jumbo v2, "fingerprint service not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method protected handleAcquired(JI)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I

    .prologue
    .line 345
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 346
    const-string v1, "FingerprintService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleAcquired : deviceId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", acquiredInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/android/server/fingerprint/FingerprintService;->accquiredEventNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAcquired(I)Z
    invoke-static {v0, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$800(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 363
    :cond_0
    :goto_1
    return-void

    .line 348
    :cond_1
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleAcquired : acquiredInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_3

    .line 355
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAcquired(I)Z
    invoke-static {v0, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$800(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_1

    .line 358
    :cond_3
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAcquired(I)Z
    invoke-static {v0, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$800(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_1
.end method

.method protected handleAuthenticated(JII)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 330
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 331
    const-string v1, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleAuthenticated : deviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,fingerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,groupId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 337
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAuthenticated(II)Z
    invoke-static {v1, p3, p4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$700(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    if-eqz p3, :cond_3

    :goto_1
    or-int/lit8 v1, v2, 0x0

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    .line 339
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 342
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_0
    return-void

    .line 333
    :cond_1
    const-string v4, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleAuthenticated : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p3, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_2

    .restart local v0    # "token":Landroid/os/IBinder;
    :cond_3
    move v2, v3

    .line 338
    goto :goto_1
.end method

.method protected handleEnrollResult(JIII)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .prologue
    .line 366
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleEnrollResult : deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,fingerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,groupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendEnrollResult(III)Z
    invoke-static {v0, p3, p4, p5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$900(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    const/16 v0, 0x64

    if-ne p5, v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0, p3}, Lcom/android/server/fingerprint/FingerprintService;->addTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V

    .line 374
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 375
    const-string v0, "FPEN"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 379
    :cond_1
    return-void
.end method

.method protected handleEnumerate(J[I[I)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "fingerIds"    # [I
    .param p4, "groupIds"    # [I

    .prologue
    .line 278
    array-length v0, p3

    array-length v1, p4

    if-eq v0, v1, :cond_1

    .line 279
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fingerIds and groupIds differ in length: f[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", g[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enumerate: f[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", g[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected handleError(JI)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "error"    # I

    .prologue
    const/4 v4, 0x0

    .line 299
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 300
    const-string v2, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleError : deviceId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", error="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/android/server/fingerprint/FingerprintService;->errorEventNameMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_3

    .line 305
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 306
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {p0, v0, v4}, Lcom/android/server/fingerprint/FingerprintService;->stopEnrollment(Landroid/os/IBinder;Z)V

    .line 319
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_0
    :goto_1
    const/16 v1, 0x3ec

    if-ne p3, v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$4;

    invoke-direct {v2, p0}, Lcom/android/server/fingerprint/FingerprintService$4;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    :cond_1
    return-void

    .line 302
    :cond_2
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleError : error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    :cond_3
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_4

    .line 310
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 311
    .restart local v0    # "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {p0, v0, v4}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    goto :goto_1

    .line 314
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_4
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_1
.end method

.method protected handleRemoved(JII)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 288
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleRemoved : deviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,fingerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 290
    .local v0, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 291
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1, p3}, Lcom/android/server/fingerprint/FingerprintService;->removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V

    .line 293
    :cond_1
    if-eqz v0, :cond_2

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendRemoved(II)Z
    invoke-static {v0, p3, p4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$400(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 296
    :cond_2
    return-void
.end method

.method handleUserSwitching(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 387
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleUserSwitching : userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(I)V

    .line 389
    return-void
.end method

.method public hasEnrolledFingerprints(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 943
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 944
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 950
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 1855
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1856
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertSurveyLog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->isEnableSurveyMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :cond_0
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->isEnableSurveyMode:Z

    if-eqz v2, :cond_1

    .line 1859
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1860
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1875
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1876
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1877
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1878
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 1879
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1882
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method isCurrentUserOrProfile(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 973
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 976
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 977
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 978
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 979
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, p1, :cond_0

    .line 980
    const/4 v4, 0x1

    .line 983
    :goto_1
    return v4

    .line 978
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 983
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 1767
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    :cond_0
    const-string/jumbo v1, "fingerprint"

    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1769
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->listenForUserSwitches()V

    .line 1770
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1771
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1772
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1773
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1774
    return-void
.end method

.method startAuthentication(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 18
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "groupId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "flags"    # I
    .param p7, "restricted"    # Z
    .param p8, "opPackageName"    # Ljava/lang/String;
    .param p9, "attr"    # Landroid/os/Bundle;

    .prologue
    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v13

    .line 661
    .local v13, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v13, :cond_0

    .line 662
    const-string v4, "FingerprintService"

    const-string/jumbo v5, "startAuthentication: no fingeprintd!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/android/server/fingerprint/FingerprintService;->sendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V

    .line 710
    :goto_0
    return-void

    .line 668
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v4, :cond_3

    .line 669
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startAuthentication: current client = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->owner:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v4, v4, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    if-ne v4, v0, :cond_1

    .line 671
    const-string v4, "FingerprintService"

    const-string v5, "authentication is already in progress."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 674
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move/from16 v2, p7

    move-object/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->canStopExclusiveIdentify(Landroid/os/Bundle;ZLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 676
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v4, :cond_2

    .line 677
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Locked client["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->owner:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is in progress"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_2
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/android/server/fingerprint/FingerprintService;->sendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V

    goto/16 :goto_0

    .line 683
    :cond_3
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 684
    if-nez p9, :cond_4

    .line 685
    new-instance p9, Landroid/os/Bundle;

    .end local p9    # "attr":Landroid/os/Bundle;
    invoke-direct/range {p9 .. p9}, Landroid/os/Bundle;-><init>()V

    .line 687
    .restart local p9    # "attr":Landroid/os/Bundle;
    :cond_4
    const-string/jumbo v4, "packageName"

    move-object/from16 v0, p9

    move-object/from16 v1, p8

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    new-instance v4, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move/from16 v9, p4

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v4 .. v12}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 689
    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 690
    const-string v4, "FingerprintService"

    const-string v5, "In lockout mode; disallowing authentication"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v5, 0x7

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v4, v5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 692
    const-string v4, "FingerprintService"

    const-string v5, "Cannot send timeout message to client"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto/16 :goto_0

    .line 697
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/fingerprint/FingerprintService;->syncObj:Ljava/lang/Object;

    monitor-enter v5

    .line 699
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 700
    .local v14, "begin":J
    move-wide/from16 v0, p2

    move/from16 v2, p4

    invoke-interface {v13, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->authenticate(JI)I

    move-result v17

    .line 701
    .local v17, "result":I
    const-string v4, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startAuthentication FP_FINISH ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v14

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms) RESULT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    if-eqz v17, :cond_7

    .line 703
    const-string v4, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startAuthentication failed, result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v4}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    .end local v14    # "begin":J
    .end local v17    # "result":I
    :cond_7
    :goto_1
    :try_start_1
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 706
    :catch_0
    move-exception v16

    .line 707
    .local v16, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "FingerprintService"

    const-string/jumbo v6, "startAuthentication failed"

    move-object/from16 v0, v16

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLandroid/os/Bundle;)V
    .locals 17
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "flags"    # I
    .param p6, "restricted"    # Z
    .param p7, "attr"    # Landroid/os/Bundle;

    .prologue
    .line 517
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startEnrollment : token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,groupId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,restricted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v11

    .line 519
    .local v11, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v11, :cond_2

    .line 520
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "enroll: no fingeprintd!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->sendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V

    .line 538
    :cond_1
    :goto_0
    return-void

    .line 524
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 525
    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move/from16 v7, p3

    move/from16 v8, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 526
    const/16 v16, 0x0

    .line 528
    .local v16, "timeout":I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 529
    .local v12, "begin":J
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v11, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->enroll([BII)I

    move-result v15

    .line 530
    .local v15, "result":I
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startEnrollment FP_FINISH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms) RESULT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    if-eqz v15, :cond_1

    .line 532
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startEnroll failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 535
    .end local v12    # "begin":J
    .end local v15    # "result":I
    :catch_0
    move-exception v14

    .line 536
    .local v14, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "startEnroll failed"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public declared-synchronized startPostEnroll(Landroid/os/IBinder;)I
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    .line 565
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v6, :cond_0

    move v4, v5

    .line 585
    :goto_0
    monitor-exit p0

    return v4

    .line 568
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    .line 569
    .local v2, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v2, :cond_1

    .line 570
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "startPostEnroll: no fingeprintd!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v4, v5

    .line 571
    goto :goto_0

    .line 574
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->syncObj:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 575
    const/4 v6, 0x1

    :try_start_3
    invoke-direct {p0, v6}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 577
    .local v0, "begin":J
    invoke-interface {v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->postEnroll()I

    move-result v4

    .line 578
    .local v4, "result":I
    const-string v6, "FingerprintService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startPostEnroll FP_FINISH ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms) RESULT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z

    .line 580
    monitor-exit v7

    goto :goto_0

    .line 581
    .end local v0    # "begin":J
    .end local v4    # "result":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 582
    :catch_0
    move-exception v3

    .line 583
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "startPostEnroll failed"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v4, v5

    .line 585
    goto :goto_0

    .line 565
    .end local v2    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public startPreEnroll(Landroid/os/IBinder;)J
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const-wide/16 v6, 0x0

    .line 541
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    .line 542
    .local v2, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v2, :cond_0

    .line 543
    const-string v8, "FingerprintService"

    const-string/jumbo v9, "startPreEnroll: no fingeprintd!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v6

    .line 561
    :goto_0
    return-wide v4

    .line 548
    :cond_0
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/fingerprint/FingerprintService;->getSensorStatus(Landroid/hardware/fingerprint/IFingerprintDaemon;)I

    move-result v8

    const v9, 0x186ca

    if-ne v8, v9, :cond_1

    .line 549
    const-string v8, "FingerprintService"

    const-string/jumbo v9, "startPreEnroll: sensor error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v6

    .line 550
    goto :goto_0

    .line 552
    :cond_1
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 554
    .local v0, "begin":J
    invoke-interface {v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->preEnroll()J

    move-result-wide v4

    .line 555
    .local v4, "result":J
    const-string v8, "FingerprintService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startPreEnroll FP_FINISH ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ms) RESULT: 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 558
    .end local v0    # "begin":J
    .end local v4    # "result":J
    :catch_0
    move-exception v3

    .line 559
    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "FingerprintService"

    const-string/jumbo v9, "startPreEnroll failed"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v4, v6

    .line 561
    goto :goto_0
.end method

.method startRemove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V
    .locals 15
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "restricted"    # Z

    .prologue
    .line 753
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRemove: token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v12

    .line 755
    .local v12, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v12, :cond_2

    .line 756
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "startRemove: no fingeprintd!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-direct {p0, v0, v2}, Lcom/android/server/fingerprint/FingerprintService;->sendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V

    .line 774
    :cond_1
    :goto_0
    return-void

    .line 760
    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 761
    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move/from16 v7, p3

    move/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 764
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 765
    .local v10, "begin":J
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v12, v0, v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->remove(II)I

    move-result v14

    .line 766
    .local v14, "result":I
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRemove FP_FINISH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms) RESULT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    if-eqz v14, :cond_1

    .line 768
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRemove with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 771
    .end local v10    # "begin":J
    .end local v14    # "result":I
    :catch_0
    move-exception v13

    .line 772
    .local v13, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "startRemove failed"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method declared-synchronized startRequest(Landroid/os/IBinder;I[B[BIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)I
    .locals 28
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cmd"    # I
    .param p3, "inputBuf"    # [B
    .param p4, "outputBuf"    # [B
    .param p5, "inParam"    # I
    .param p6, "groupId"    # I
    .param p7, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .prologue
    .line 853
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v18

    .line 854
    .local v18, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v18, :cond_0

    .line 855
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "startRequest: no fingeprintd!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    const/16 v24, -0x2

    .line 932
    :goto_0
    monitor-exit p0

    return v24

    .line 859
    :cond_0
    :try_start_1
    sget-boolean v6, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 860
    const-string v7, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startRequest: CMD= "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v6, Lcom/android/server/fingerprint/FingerprintService;->requestCmdNameMap:Landroid/util/SparseArray;

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", Param = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_1
    const/16 v6, 0x3e8

    move/from16 v0, p2

    if-ne v0, v6, :cond_2

    .line 866
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->removeFinger(II)I

    move-result v24

    goto :goto_0

    .line 867
    :cond_2
    const/4 v6, 0x2

    move/from16 v0, p2

    if-ne v0, v6, :cond_9

    .line 868
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 869
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/fingerprint/FingerprintService;->startPostEnroll(Landroid/os/IBinder;)I

    .line 891
    :cond_3
    :goto_1
    if-nez p3, :cond_4

    .line 892
    const/4 v6, 0x0

    new-array v0, v6, [B

    move-object/from16 p3, v0

    .line 894
    :cond_4
    if-nez p4, :cond_5

    .line 895
    const/4 v6, 0x0

    new-array v0, v6, [B

    move-object/from16 p4, v0

    .line 897
    :cond_5
    const/16 v23, -0x1

    .line 898
    .local v23, "result":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->syncObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 899
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->isTZCommand(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 900
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 902
    :cond_6
    if-eqz p7, :cond_7

    .line 903
    new-instance v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p7

    move/from16 v11, p6

    invoke-direct/range {v6 .. v13}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 905
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 906
    .local v16, "begin":J
    move-object/from16 v0, v18

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintDaemon;->request(I[B[BI)I

    move-result v23

    .line 907
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startRequest["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] FP_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v16

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v6, :cond_8

    .line 909
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->needRetry:Z

    .line 911
    :cond_8
    monitor-exit v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 912
    :try_start_3
    sget-boolean v6, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v6, :cond_12

    .line 913
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 914
    .local v25, "strInBuiler":Ljava/lang/StringBuilder;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 915
    .local v26, "strOutBuiler":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_10

    move-object/from16 v0, p3

    array-length v6, v0

    if-lez v6, :cond_10

    .line 916
    move-object/from16 v14, p3

    .local v14, "arr$":[B
    array-length v0, v14

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    aget-byte v15, v14, v21

    .line 917
    .local v15, "b":B
    const-string v6, "%02x "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    and-int/lit16 v9, v15, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 871
    .end local v14    # "arr$":[B
    .end local v15    # "b":B
    .end local v16    # "begin":J
    .end local v21    # "i$":I
    .end local v22    # "len$":I
    .end local v23    # "result":I
    .end local v25    # "strInBuiler":Ljava/lang/StringBuilder;
    .end local v26    # "strOutBuiler":Ljava/lang/StringBuilder;
    :cond_9
    const/16 v6, 0x3e9

    move/from16 v0, p2

    if-ne v0, v6, :cond_b

    .line 872
    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 873
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mLockOutTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v0, v6

    move/from16 v24, v0

    .line 874
    .local v24, "ret":I
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startRequest["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] FP_FINISH - RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 929
    .end local v24    # "ret":I
    :catch_0
    move-exception v19

    .line 930
    .local v19, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "startRequest failed"

    move-object/from16 v0, v19

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 932
    const/16 v24, -0x3

    goto/16 :goto_0

    .line 877
    .end local v19    # "e":Landroid/os/RemoteException;
    :cond_a
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 878
    :cond_b
    const/16 v6, 0x3ea

    move/from16 v0, p2

    if-ne v0, v6, :cond_d

    .line 879
    :try_start_5
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startRequest["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] FP_FINISH - RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z

    if-eqz v6, :cond_c

    .line 881
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 883
    :cond_c
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 884
    :cond_d
    const/4 v6, 0x7

    move/from16 v0, p2

    if-ne v0, v6, :cond_e

    .line 885
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->opPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 886
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->needRetry:Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 853
    .end local v18    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 888
    .restart local v18    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    :cond_e
    const/4 v6, 0x6

    move/from16 v0, p2

    if-ne v0, v6, :cond_3

    .line 889
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->getSensorStatus(Landroid/hardware/fingerprint/IFingerprintDaemon;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v24

    goto/16 :goto_0

    .line 911
    .restart local v23    # "result":I
    :catchall_1
    move-exception v6

    :try_start_7
    monitor-exit v27
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v6

    .line 919
    .restart local v14    # "arr$":[B
    .restart local v16    # "begin":J
    .restart local v21    # "i$":I
    .restart local v22    # "len$":I
    .restart local v25    # "strInBuiler":Ljava/lang/StringBuilder;
    .restart local v26    # "strOutBuiler":Ljava/lang/StringBuilder;
    :cond_f
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startRequest: In = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    .end local v14    # "arr$":[B
    .end local v21    # "i$":I
    .end local v22    # "len$":I
    :cond_10
    if-eqz p4, :cond_12

    move-object/from16 v0, p4

    array-length v6, v0

    if-lez v6, :cond_12

    .line 922
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_11

    .line 923
    const-string v6, "%02x "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-byte v9, p4, v20

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 925
    :cond_11
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startRequest: Out= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v20    # "i":I
    .end local v25    # "strInBuiler":Ljava/lang/StringBuilder;
    .end local v26    # "strOutBuiler":Ljava/lang/StringBuilder;
    :cond_12
    move/from16 v24, v23

    .line 928
    goto/16 :goto_0
.end method

.method stopAuthentication(Landroid/os/IBinder;Z)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "initiatedByClient"    # Z

    .prologue
    .line 719
    sget-boolean v6, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopAuthentication: token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", initiatedByClient="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v3

    .line 722
    .local v3, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v3, :cond_2

    .line 723
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "stopAuthentication: no fingeprintd!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v6, :cond_1

    .line 725
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/server/fingerprint/FingerprintService;->sendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V

    .line 749
    :cond_1
    :goto_0
    return-void

    .line 729
    :cond_2
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 730
    .local v2, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    if-eqz v2, :cond_3

    iget-object v6, v2, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eq v6, p1, :cond_4

    .line 731
    :cond_3
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "stopAuthentication: invalid client or token!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 735
    :cond_4
    if-eqz p2, :cond_6

    .line 737
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 738
    .local v0, "begin":J
    invoke-interface {v3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelAuthentication()I

    move-result v5

    .line 739
    .local v5, "result":I
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopAuthentication FP_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    if-eqz v5, :cond_5

    .line 741
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopAuthentication failed, result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    .end local v0    # "begin":J
    .end local v5    # "result":I
    :cond_5
    :goto_1
    const/4 v6, 0x5

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v2, v6}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    .line 748
    :cond_6
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v6}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_0

    .line 743
    :catch_0
    move-exception v4

    .line 744
    .local v4, "e":Landroid/os/RemoteException;
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "stopAuthentication failed"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method stopEnrollment(Landroid/os/IBinder;Z)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "initiatedByClient"    # Z

    .prologue
    .line 624
    sget-boolean v6, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopEnrollment: token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", initiatedByClient="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v3

    .line 626
    .local v3, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v3, :cond_2

    .line 627
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "stopEnrollment: no fingeprintd!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v6, :cond_1

    .line 630
    :try_start_0
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-wide v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v7, 0x1

    invoke-interface {v6, v8, v9, v7}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :cond_1
    :goto_0
    return-void

    .line 631
    :catch_0
    move-exception v4

    .line 632
    .local v4, "e":Landroid/os/RemoteException;
    const-string v6, "FingerprintService"

    const-string v7, "Failed to invoke sendError:"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 637
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 638
    .local v2, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    if-eqz v2, :cond_3

    iget-object v6, v2, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eq v6, p1, :cond_4

    .line 639
    :cond_3
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "stopEnrollment: invalid client or token!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 642
    :cond_4
    if-eqz p2, :cond_6

    .line 644
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 645
    .local v0, "begin":J
    invoke-interface {v3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelEnrollment()I

    move-result v5

    .line 646
    .local v5, "result":I
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopEnrollment FP_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    if-eqz v5, :cond_5

    .line 648
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startEnrollCancel failed, result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 653
    .end local v0    # "begin":J
    .end local v5    # "result":I
    :cond_5
    :goto_1
    const/4 v6, 0x5

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v2, v6}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    .line 655
    :cond_6
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v6}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_0

    .line 650
    :catch_1
    move-exception v4

    .line 651
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "stopEnrollment failed"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
.method private addLockoutResetMonitor(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 1
    .param p1, "monitor"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_0
    return-void
.end method
.method private canUseFingerprint(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "foregroundOnly"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 637
    const-string v4, "android.permission.USE_FINGERPRINT"

    invoke-virtual {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 638
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 639
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 640
    .local v0, "pid":I
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 656
    :cond_0
    :goto_0
    return v2

    .line 643
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->isCurrentUserOrProfile(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 644
    const-string v2, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; not a current user or profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 645
    goto :goto_0

    .line 647
    :cond_2
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x37

    invoke-virtual {v4, v5, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 649
    const-string v2, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; permission denied"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 650
    goto :goto_0

    .line 652
    :cond_3
    if-eqz p2, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->isForegroundActivity(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 653
    const-string v2, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; not in foreground"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 654
    goto :goto_0
.end method
.method private cancelLockoutReset()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 342
    return-void
.end method
.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1189
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1191
    .local v1, "dump":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "service"

    const-string v9, "Fingerprint Manager"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1193
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1194
    .local v5, "sets":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 1195
    .local v6, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 1196
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v9, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v7}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 1197
    .local v0, "N":I
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1198
    .local v4, "set":Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1199
    const-string v8, "count"

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1200
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1204
    .end local v0    # "N":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "set":Lorg/json/JSONObject;
    .end local v5    # "sets":Lorg/json/JSONArray;
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "userId":I
    :catch_0
    move-exception v2

    .line 1205
    .local v2, "e":Lorg/json/JSONException;
    const-string v8, "FingerprintService"

    const-string v9, "dump formatting failure"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1207
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1209
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " halId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1210
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " fake:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/fingerprint/FingerprintService;->mConfigNeedFake:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rootId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/fingerprint/FingerprintService;->mRootUserId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reqId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1212
    return-void

    .line 1203
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "sets":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    const-string v8, "prints"

    invoke-virtual {v1, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
.method private getLockoutResetIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
.method private isForegroundActivity(II)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 615
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 617
    .local v4, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 618
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 619
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 620
    .local v3, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p2, :cond_0

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p1, :cond_0

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    .line 622
    const/4 v5, 0x1

    .line 628
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_1
    return v5

    .line 618
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v4    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 625
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v1

    .line 626
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "FingerprintService"

    const-string v6, "am.getRunningAppProcesses() failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method
.method private notifyLockoutResetMonitors()V
    .locals 2

    .prologue
    .line 671
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->sendLockoutReset()V

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 674
    :cond_0
    return-void
.end method
.method private removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 1
    .param p1, "monitor"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 668
    return-void
.end method
.method private scheduleLockoutReset()V
    .locals 6

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 338
    return-void
.end method
.method protected handleAcquired(JI)V
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAcquired(I)Z
    invoke-static {v0, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$400(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAcquired(I)Z
    invoke-static {v0, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$400(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_0
.end method
.method protected handleAuthenticated(JII)V
    .locals 4
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 251
    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mConfigNeedFake:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    if-eq v1, p4, :cond_0

    .line 252
    iget p4, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 257
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAuthenticated(II)Z
    invoke-static {v1, p3, p4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$300(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    .line 261
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAuthenticated(), Also call cancelAuthenticationwhen inLockoutMode. mFailedAttempts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    .line 268
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 271
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_1
    return-void

    .line 265
    .restart local v0    # "token":Landroid/os/IBinder;
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    goto :goto_0
.end method
.method protected handleEnrollResult(JIII)V
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mConfigNeedFake:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    if-eq v0, p4, :cond_0

    .line 288
    iget p4, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendEnrollResult(III)Z
    invoke-static {v0, p3, p4, p5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    if-nez p5, :cond_2

    .line 295
    if-eqz p3, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0, p3}, Lcom/android/server/fingerprint/FingerprintService;->addTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 302
    :cond_2
    return-void
.end method
.method protected handleEnumerate(J[I[I)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "fingerIds"    # [I
    .param p4, "groupIds"    # [I

    .prologue
    .line 209
    array-length v0, p3

    array-length v1, p4

    if-eq v0, v1, :cond_0

    .line 210
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fingerIds and groupIds differ in length: f[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", g[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enumerate: f[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", g[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
.method protected handleError(JI)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "error"    # I

    .prologue
    const/4 v2, 0x0

    .line 234
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 236
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$200(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {p0, v0, v2}, Lcom/android/server/fingerprint/FingerprintService;->stopEnrollment(Landroid/os/IBinder;Z)V

    .line 247
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_2

    .line 240
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 241
    .restart local v0    # "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$200(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {p0, v0, v2}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    goto :goto_0

    .line 244
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_2
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$200(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_0
.end method
.method protected handleRemoved(JII)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 220
    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mConfigNeedFake:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    if-eq v1, p4, :cond_0

    .line 221
    iget p4, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 225
    .local v0, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    if-eqz p3, :cond_1

    .line 226
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1, p3}, Lcom/android/server/fingerprint/FingerprintService;->removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V

    .line 228
    :cond_1
    if-eqz v0, :cond_2

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendRemoved(II)Z
    invoke-static {v0, p3, p4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$100(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 231
    :cond_2
    return-void
.end method
.method startAuthentication(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .locals 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "groupId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "flags"    # I
    .param p7, "restricted"    # Z
    .param p8, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 480
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mConfigNeedFake:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mRootUserId:I

    move/from16 v0, p4

    if-eq v4, v0, :cond_0

    .line 481
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    .line 482
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mRootUserId:I

    move/from16 p4, v0

    .line 485
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v12

    .line 486
    .local v12, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v12, :cond_2

    .line 487
    const-string v4, "FingerprintService"

    const-string v5, "startAuthentication: no fingeprintd!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_1
    :goto_0
    return-void

    .line 490
    :cond_2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 491
    new-instance v4, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move/from16 v9, p4

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v4 .. v11}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 493
    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 494
    const-string v4, "FingerprintService"

    const-string v5, "In lockout mode; disallowing authentication"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v5, 0x7

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v4, v5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$200(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 496
    const-string v4, "FingerprintService"

    const-string v5, "Cannot send timeout message to client"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    goto :goto_0

    .line 502
    :cond_4
    :try_start_0
    move-wide/from16 v0, p2

    move/from16 v2, p4

    invoke-interface {v12, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->authenticate(JI)I

    move-result v14

    .line 503
    .local v14, "result":I
    if-eqz v14, :cond_1

    .line 504
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startAuthentication failed, result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 507
    .end local v14    # "result":I
    :catch_0
    move-exception v13

    .line 508
    .local v13, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string v5, "startAuthentication failed"

    invoke-static {v4, v5, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
.method startExtCmd(Landroid/os/IBinder;III)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "groupId"    # I
    .param p3, "cmd"    # I
    .param p4, "param1"    # I

    .prologue
    .line 1286
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 1287
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_1

    .line 1288
    const-string v3, "FingerprintService"

    const-string v4, "startExtCmd: no fingeprintd!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1292
    :cond_1
    :try_start_0
    invoke-interface {v0, p3, p4}, Landroid/hardware/fingerprint/IFingerprintDaemon;->extCmd(II)I

    move-result v2

    .line 1293
    .local v2, "result":I
    if-eqz v2, :cond_0

    .line 1294
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extCmd failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1296
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    .line 1297
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "extCmd failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
.field private static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"
.field private final mAlarmManager:Landroid/app/AlarmManager;
.field private mConfigNeedFake:Z
.field private mCurrentUserId:I
.field private final mKeyguardPackage:Ljava/lang/String;
.field private final mLockoutMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;",
            ">;"
        }
    .end annotation
.end field
.field private final mLockoutReceiver:Landroid/content/BroadcastReceiver;
.field private mRequestId:I
.field private final mResetFailedAttemptsRunnable:Ljava/lang/Runnable;
.field private mRootUserId:I
