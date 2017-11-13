.class public Lcom/samsung/android/server/iris/IrisService;
.super Lcom/android/server/SystemService;
.source "IrisService.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;,
        Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;,
        Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    }
.end annotation


# static fields
.field private static final ACTION_IRIS_ADDED:Ljava/lang/String; = "com.samsung.android.intent.action.IRIS_ADDED"

.field private static final ACTION_IRIS_REMOVED:Ljava/lang/String; = "com.samsung.android.intent.action.IRIS_REMOVED"

.field private static final ACTION_IRIS_RESET:Ljava/lang/String; = "com.samsung.android.intent.action.IRIS_RESET"

.field private static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.iris.ACTION_LOCKOUT_RESET"

.field private static final BUFFERS_COUNT:I = 0x3

.field private static final DEBUG:Z

.field private static final ENROLLMENT_TIMEOUT_MS:I = 0x0

.field private static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0x7530L

.field private static IRCAMERA_ADAPTED_IMAGEVIEW_RATIO_HEIGHT:I = 0x0

.field private static IRCAMERA_ADAPTED_IMAGEVIEW_RATIO_WIDTH:I = 0x0

.field private static IRCAMERA_HEIGHT:I = 0x0

.field private static IRCAMERA_OFFSET_X:I = 0x0

.field private static IRCAMERA_WIDTH:I = 0x0

.field private static final IRISD:Ljava/lang/String; = "com.samsung.android.camera.iris.IIrisDaemon"

.field private static final IRIS_ACQUIRED_GOOD:I = 0x0

.field private static final IS_SUPPORT_LOCKOUT_FEATURE:Z = true

.field private static final MANAGE_IRIS:Ljava/lang/String; = "com.samsung.android.iris.permission.MANAGE_IRIS"

.field private static final MAX_FAILED_ATTEMPTS:I = 0x5

.field private static final MSG_USER_REMOVED:I = 0xb

.field private static final MSG_USER_SWITCHING:I = 0xa

.field private static final MS_PER_SEC:J = 0x3e8L

.field private static final RESET_IRIS_LOCKOUT:Ljava/lang/String; = "com.samsung.android.iris.permission.RESET_IRIS_LOCKOUT"

.field private static final TAG:Ljava/lang/String; = "IrisService"

.field private static final USE_IRIS:Ljava/lang/String; = "com.samsung.android.iris.permission.USE_IRIS"

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
.field private img_main_circle:Landroid/widget/ImageView;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<[B",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mCamera:Lcom/sec/android/seccamera/SecCamera;

.field private mContext:Landroid/content/Context;

.field private mDaemon:Lcom/samsung/android/camera/iris/IIrisDaemon;

.field private mDaemonCallback:Lcom/samsung/android/camera/iris/IIrisDaemonCallback;

.field private mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

.field private mEnrollEyePreview:Landroid/widget/ImageView;

.field private mEnrollLayout:Landroid/widget/LinearLayout;

.field private mEyeProgressbar_left:Landroid/widget/ProgressBar;

.field private mEyeProgressbar_right:Landroid/widget/ProgressBar;

.field private mFailedAttempts:I

.field private mHalDeviceId:J

.field mHandler:Landroid/os/Handler;

.field private final mIrisUtils:Lcom/samsung/android/server/iris/IrisUtils;

.field private mIrisView:Landroid/view/View;

.field private mIris_percentage:Landroid/widget/TextView;

.field private mIsEnrolling:Z

.field private final mKeyguardPackage:Ljava/lang/String;

.field private mLatestSensorStatus:I

.field private mLockOutTime:J

.field private final mLockoutMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;",
            ">;"
        }
    .end annotation
.end field

.field mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProgressValue:I

.field private mRemoveClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

.field private mRequestClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

.field private final mResetFailedAttemptsRunnable:Ljava/lang/Runnable;

.field private mSeekBar_left:Landroid/widget/SeekBar;

.field private mSeekBar_right:Landroid/widget/SeekBar;

.field private mTempToken:Landroid/os/IBinder;

.field private mTempararyTestBtn:Landroid/widget/Button;

.field private mWindowManager:Landroid/view/WindowManager;

.field private final syncObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x2e0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/iris/IrisService;->isEnableSurveyMode:Z

    sput v2, Lcom/samsung/android/server/iris/IrisService;->IRCAMERA_WIDTH:I

    sput v2, Lcom/samsung/android/server/iris/IrisService;->IRCAMERA_HEIGHT:I

    const/16 v0, 0xfe

    sput v0, Lcom/samsung/android/server/iris/IrisService;->IRCAMERA_ADAPTED_IMAGEVIEW_RATIO_WIDTH:I

    sput v2, Lcom/samsung/android/server/iris/IrisService;->IRCAMERA_ADAPTED_IMAGEVIEW_RATIO_HEIGHT:I

    const/16 v0, 0xf1

    sput v0, Lcom/samsung/android/server/iris/IrisService;->IRCAMERA_OFFSET_X:I

    return-void

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

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iput-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iput-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mRemoveClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iput-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mRequestClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mLockoutMonitors:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->syncObj:Ljava/lang/Object;

    iput v2, p0, Lcom/samsung/android/server/iris/IrisService;->mLatestSensorStatus:I

    iput-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/samsung/android/server/iris/IrisService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/iris/IrisService$1;-><init>(Lcom/samsung/android/server/iris/IrisService;)V

    iput-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/server/iris/IrisUtils;->getInstance()Lcom/samsung/android/server/iris/IrisUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mIrisUtils:Lcom/samsung/android/server/iris/IrisUtils;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/server/iris/IrisService;->mLockOutTime:J

    iput-boolean v2, p0, Lcom/samsung/android/server/iris/IrisService;->mIsEnrolling:Z

    iput-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->img_main_circle:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mTempToken:Landroid/os/IBinder;

    iput-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollEyePreview:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollLayout:Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mEyeProgressbar_left:Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mEyeProgressbar_right:Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mSeekBar_left:Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mSeekBar_right:Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mIris_percentage:Landroid/widget/TextView;

    iput v2, p0, Lcom/samsung/android/server/iris/IrisService;->mProgressValue:I

    iput-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mTempararyTestBtn:Landroid/widget/Button;

    new-instance v0, Lcom/samsung/android/server/iris/IrisService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/iris/IrisService$2;-><init>(Lcom/samsung/android/server/iris/IrisService;)V

    iput-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/server/iris/IrisService$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/iris/IrisService$3;-><init>(Lcom/samsung/android/server/iris/IrisService;)V

    iput-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mResetFailedAttemptsRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/server/iris/IrisService$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/iris/IrisService$6;-><init>(Lcom/samsung/android/server/iris/IrisService;)V

    iput-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mDaemonCallback:Lcom/samsung/android/camera/iris/IIrisDaemonCallback;

    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mKeyguardPackage:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.iris.ACTION_LOCKOUT_RESET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.iris.permission.RESET_IRIS_LOCKOUT"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-boolean v0, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/server/iris/IrisService;->accquiredEventNameMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/server/iris/IrisService;->errorEventNameMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/server/iris/IrisService;->requestCmdNameMap:Landroid/util/SparseArray;

    sget-object v0, Lcom/samsung/android/server/iris/IrisService;->accquiredEventNameMap:Landroid/util/SparseArray;

    const-string v1, "IRIS_ACQUIRED_"

    invoke-static {v0, v1}, Lcom/samsung/android/server/iris/IrisService;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/server/iris/IrisService;->errorEventNameMap:Landroid/util/SparseArray;

    const-string v1, "IRIS_ERROR_"

    invoke-static {v0, v1}, Lcom/samsung/android/server/iris/IrisService;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/server/iris/IrisService;->requestCmdNameMap:Landroid/util/SparseArray;

    const-string v1, "IRIS_REQUEST_"

    invoke-static {v0, v1}, Lcom/samsung/android/server/iris/IrisService;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/server/iris/IrisService;II)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/iris/IrisService;->removeIris(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/server/iris/IrisService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;

    .prologue
    iget v0, p0, Lcom/samsung/android/server/iris/IrisService;->mProgressValue:I

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/server/iris/IrisService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/server/iris/IrisService;->mProgressValue:I

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/server/iris/IrisService;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mIris_percentage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/server/iris/IrisService;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mEyeProgressbar_left:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/server/iris/IrisService;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mEyeProgressbar_right:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/server/iris/IrisService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mKeyguardPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/server/iris/IrisService;)Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/server/iris/IrisService;Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;
    .param p1, "x1"    # Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/server/iris/IrisService;)Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/server/iris/IrisService;Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;
    .param p1, "x1"    # Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/server/iris/IrisService;->removeClient(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/server/iris/IrisService;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;

    .prologue
    iget-wide v0, p0, Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/server/iris/IrisService;Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;
    .param p1, "x1"    # Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/server/iris/IrisService;->handleFailedAttempt(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/server/iris/IrisService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/server/iris/IrisService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService;->inLockoutMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/server/iris/IrisService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService;->userActivity()V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/android/server/iris/IrisService;Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;
    .param p1, "x1"    # Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/server/iris/IrisService;->removeLockoutResetCallback(Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/android/server/iris/IrisService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService;->startIRCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/server/iris/IrisService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService;->stopIRCamera()V

    return-void
.end method

.method static synthetic access$2500(Lcom/samsung/android/server/iris/IrisService;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/iris/IrisService;->canUseIris(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/server/iris/IrisService;Lcom/samsung/android/camera/iris/IIrisServiceReceiver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;
    .param p1, "x1"    # Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/iris/IrisService;->sendError(Lcom/samsung/android/camera/iris/IIrisServiceReceiver;I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/android/server/iris/IrisService;Landroid/os/Bundle;ZLjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/iris/IrisService;->canStopExclusiveIdentify(Landroid/os/Bundle;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/server/iris/IrisService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/server/iris/IrisService;->stopPendingOperations(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/android/server/iris/IrisService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->syncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/server/iris/IrisService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService;->resetFailedAttempts()V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/android/server/iris/IrisService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/samsung/android/server/iris/IrisService;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/samsung/android/server/iris/IrisService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService;->mTempToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/samsung/android/server/iris/IrisService;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/samsung/android/server/iris/IrisService;Landroid/view/WindowManager;)Landroid/view/WindowManager;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;
    .param p1, "x1"    # Landroid/view/WindowManager;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService;->mWindowManager:Landroid/view/WindowManager;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/samsung/android/server/iris/IrisService;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/samsung/android/server/iris/IrisService;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollEyePreview:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/samsung/android/server/iris/IrisService;)Lcom/samsung/android/server/iris/IrisUtils;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mIrisUtils:Lcom/samsung/android/server/iris/IrisUtils;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/samsung/android/server/iris/IrisService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/server/iris/IrisService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/samsung/android/server/iris/IrisService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mResetFailedAttemptsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/server/iris/IrisService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/iris/IrisService;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService;->checkIntegrity()V

    return-void
.end method

.method private addLockoutResetMonitor(Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;)V
    .locals 1
    .param p1, "monitor"    # Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addTemplateForUser(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;I)V
    .locals 3
    .param p1, "clientMonitor"    # Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    .param p2, "irisId"    # I

    .prologue
    sget-boolean v0, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTemplateForUser : irisId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "IrisService"

    const-string v1, "addTemplateForUser : no clientMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mIrisUtils:Lcom/samsung/android/server/iris/IrisUtils;

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->userId:I

    invoke-virtual {v0, v1, p2, v2}, Lcom/samsung/android/server/iris/IrisUtils;->addIrisForUser(Landroid/content/Context;II)V

    const-string v0, "com.samsung.android.intent.action.IRIS_ADDED"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/server/iris/IrisService;->sendBroadcast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private canStopExclusiveIdentify(Landroid/os/Bundle;ZLjava/lang/String;)Z
    .locals 9
    .param p1, "attr"    # Landroid/os/Bundle;
    .param p2, "restricted"    # Z
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    iget-object v5, p0, Lcom/samsung/android/server/iris/IrisService;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "IrisService"

    const-string v5, "canStopExclusiveIdentify : Keyguard client"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    if-eqz p1, :cond_1

    const-string v5, "privileged_attr"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    const-string v4, "IrisService"

    const-string v5, "canStopExclusiveIdentify : have PRIVILEGED_ATTR_EXCLUSIVE_IDENTIFY attr"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/server/iris/IrisService;->mKeyguardPackage:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget-object v6, v6, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->opPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .local v2, "kgm":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v4, "IrisService"

    const-string v5, "canStopExclusiveIdentify : keyguard is unlocked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "kgm":Landroid/app/KeyguardManager;
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    move-result-object v0

    .local v0, "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    if-nez v0, :cond_3

    const-string v3, "IrisService"

    const-string v5, "canStopExclusiveIdentify: no irisd!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_0

    :cond_3
    const v3, 0x186c9

    const/4 v5, 0x6

    const/4 v6, 0x0

    new-array v6, v6, [B

    const/4 v7, 0x0

    new-array v7, v7, [B

    const/4 v8, 0x0

    invoke-interface {v0, v5, v6, v7, v8}, Lcom/samsung/android/camera/iris/IIrisDaemon;->request(I[B[BI)I

    move-result v5

    if-ne v3, v5, :cond_4

    const-string v3, "IrisService"

    const-string v5, "canStopExclusiveIdentify : sensor is working"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_0

    .end local v0    # "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "IrisService"

    const-string v5, "canStopExclusiveIdentify: failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string v3, "IrisService"

    const-string v5, "canStopExclusiveIdentify : false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_0
.end method

.method private canUseIris(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "foregroundOnly"    # Z

    .prologue
    const-string v0, "com.samsung.android.iris.permission.MANAGE_IRIS"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/iris/IrisService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/server/iris/IrisService;->canUseIris(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canUseIris(Ljava/lang/String;ZZ)Z
    .locals 6
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "foregroundOnly"    # Z
    .param p3, "restricted"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "com.samsung.android.iris.permission.USE_IRIS"

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/iris/IrisService;->checkPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .local v0, "pid":I
    if-nez p3, :cond_1

    iget-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/iris/IrisService;->isCurrentUserOrProfile(I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v2, "IrisService"

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

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/iris/IrisService;->isForegroundActivity(II)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v2, "IrisService"

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

    goto :goto_0
.end method

.method private cancelLockoutReset()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService;->getLockoutResetIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private checkIntegrity()V
    .locals 30

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    move-result-object v18

    .local v18, "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    if-nez v18, :cond_1

    const-string v2, "IrisService"

    const-string v3, "checkIntegrity: no irisd!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    .local v8, "userId":I
    const/16 v2, 0xa

    new-array v6, v2, [B

    .local v6, "tmpOutBuffer":[B
    const/4 v3, 0x0

    const/16 v4, 0xb

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/server/iris/IrisService;->startRequest(Landroid/os/IBinder;I[B[BIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)I

    move-result v29

    .local v29, "sizeOfDaemon":I
    if-gez v29, :cond_2

    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIntegrity: error ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v6    # "tmpOutBuffer":[B
    .end local v8    # "userId":I
    .end local v29    # "sizeOfDaemon":I
    :catch_0
    move-exception v19

    .local v19, "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v6    # "tmpOutBuffer":[B
    .restart local v8    # "userId":I
    .restart local v29    # "sizeOfDaemon":I
    :cond_2
    :try_start_1
    move/from16 v0, v29

    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v28

    .local v28, "outBuffer":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService;->mIrisUtils:Lcom/samsung/android/server/iris/IrisUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v8}, Lcom/samsung/android/server/iris/IrisUtils;->getIrisesForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v26

    .local v26, "irList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/iris/Iris;>;"
    sget-boolean v2, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v2, :cond_5

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .local v25, "irInfo":Ljava/lang/StringBuilder;
    const-string v2, "IRS : "

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/camera/iris/Iris;

    .local v24, "ir":Lcom/samsung/android/camera/iris/Iris;
    const-string v2, "%02d "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v24    # "ir":Lcom/samsung/android/camera/iris/Iris;
    :cond_3
    const-string v2, "\n"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "IRD : "

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v28

    .local v16, "arr$":[B
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v27, v0

    .local v27, "len$":I
    const/16 v22, 0x0

    .local v22, "i$":I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    aget-byte v17, v16, v22

    .local v17, "b":B
    const-string v2, "%02d "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .end local v17    # "b":B
    :cond_4
    const-string v2, "IrisService"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v16    # "arr$":[B
    .end local v22    # "i$":I
    .end local v25    # "irInfo":Ljava/lang/StringBuilder;
    .end local v27    # "len$":I
    :cond_5
    if-lez v29, :cond_e

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v16, v28

    .restart local v16    # "arr$":[B
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v27, v0

    .restart local v27    # "len$":I
    const/16 v22, 0x0

    .restart local v22    # "i$":I
    move/from16 v23, v22

    .end local v22    # "i$":I
    .local v23, "i$":I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    aget-byte v21, v16, v23

    .local v21, "i":B
    const/16 v20, 0x0

    .local v20, "hasIris":Z
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .end local v23    # "i$":I
    .local v22, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/camera/iris/Iris;

    .restart local v24    # "ir":Lcom/samsung/android/camera/iris/Iris;
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v2

    move/from16 v0, v21

    if-ne v0, v2, :cond_6

    const/16 v20, 0x1

    .end local v24    # "ir":Lcom/samsung/android/camera/iris/Iris;
    :cond_7
    if-nez v20, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService;->mIrisUtils:Lcom/samsung/android/server/iris/IrisUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    move/from16 v0, v21

    invoke-virtual {v2, v3, v0, v8}, Lcom/samsung/android/server/iris/IrisUtils;->addIrisForUser(Landroid/content/Context;II)V

    const-string v2, "com.samsung.android.intent.action.IRIS_ADDED"

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/server/iris/IrisService;->sendBroadcast(Ljava/lang/String;I)V

    :cond_8
    add-int/lit8 v22, v23, 0x1

    .local v22, "i$":I
    move/from16 v23, v22

    .end local v22    # "i$":I
    .restart local v23    # "i$":I
    goto :goto_3

    .end local v20    # "hasIris":Z
    .end local v21    # "i":B
    :cond_9
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .end local v23    # "i$":I
    :cond_a
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/camera/iris/Iris;

    .restart local v24    # "ir":Lcom/samsung/android/camera/iris/Iris;
    const/16 v20, 0x0

    .restart local v20    # "hasIris":Z
    move-object/from16 v16, v28

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v27, v0

    const/16 v23, 0x0

    .restart local v23    # "i$":I
    :goto_5
    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    aget-byte v21, v16, v23

    .restart local v21    # "i":B
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v2

    move/from16 v0, v21

    if-ne v0, v2, :cond_b

    const/16 v20, 0x1

    :cond_b
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    .end local v21    # "i":B
    :cond_c
    if-nez v20, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/server/iris/IrisService;->mIrisUtils:Lcom/samsung/android/server/iris/IrisUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v4

    invoke-virtual {v2, v3, v4, v8}, Lcom/samsung/android/server/iris/IrisUtils;->removeIrisIdForUser(Landroid/content/Context;II)V

    const-string v2, "com.samsung.android.intent.action.IRIS_REMOVED"

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/server/iris/IrisService;->sendBroadcast(Ljava/lang/String;I)V

    goto :goto_4

    .end local v20    # "hasIris":Z
    .end local v23    # "i$":I
    .end local v24    # "ir":Lcom/samsung/android/camera/iris/Iris;
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/server/iris/IrisService;->hasEnrolledIrises(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.samsung.android.intent.action.IRIS_RESET"

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/server/iris/IrisService;->sendBroadcast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .end local v16    # "arr$":[B
    .end local v27    # "len$":I
    :cond_e
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/camera/iris/Iris;

    .restart local v24    # "ir":Lcom/samsung/android/camera/iris/Iris;
    new-instance v9, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    move v13, v8

    invoke-direct/range {v9 .. v15}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;-><init>(Lcom/samsung/android/server/iris/IrisService;Landroid/os/IBinder;Lcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLjava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lcom/samsung/android/server/iris/IrisService;->removeTemplateForUser(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method private clearPreviewBuffer()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private convertFromNV21([B[IIIIII)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "rgbData"    # [I
    .param p3, "offset_x"    # I
    .param p4, "offset_y"    # I
    .param p5, "stride"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    move v2, p6

    .local v2, "w":I
    move/from16 v0, p7

    .local v0, "h":I
    const/4 v1, 0x0

    .local v1, "rgbIndex":I
    const/4 v5, 0x0

    .local v5, "yIndex":I
    add-int/lit8 v4, v0, -0x1

    .local v4, "y":I
    :goto_0
    if-ltz v4, :cond_1

    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    if-ge v3, v2, :cond_0

    sub-int v7, v4, p4

    mul-int/2addr v7, p5

    add-int v8, v3, p3

    add-int v5, v7, v8

    aget-byte v7, p1, v5

    and-int/lit16 v6, v7, 0xff

    .local v6, "yv":I
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    aput v7, p2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v6    # "yv":I
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v3    # "x":I
    :cond_1
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .local v1, "dump":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "service"

    const-string v9, "Iris Manager"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .local v5, "sets":Lorg/json/JSONArray;
    iget-object v8, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

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

    .local v6, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .local v7, "userId":I
    iget-object v8, p0, Lcom/samsung/android/server/iris/IrisService;->mIrisUtils:Lcom/samsung/android/server/iris/IrisUtils;

    iget-object v9, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v7}, Lcom/samsung/android/server/iris/IrisUtils;->getIrisesForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .local v4, "set":Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "count"

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "N":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "set":Lorg/json/JSONObject;
    .end local v5    # "sets":Lorg/json/JSONArray;
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "userId":I
    :catch_0
    move-exception v2

    .local v2, "e":Lorg/json/JSONException;
    const-string v8, "IrisService"

    const-string v9, "dump formatting failure"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " latest sensor status : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/server/iris/IrisService;->mLatestSensorStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

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
    .local p0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-class v7, Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

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

    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .local v3, "fieldValue":I
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v3    # "fieldValue":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "IrisService"

    const-string v8, "generateNameMap: failed "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v7, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v7, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getLockoutResetIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.iris.ACTION_LOCKOUT_RESET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private handleFailedAttempt(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)Z
    .locals 4
    .param p1, "clientMonitor"    # Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    .prologue
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "IrisService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleFailedAttempt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/server/iris/IrisService;->mFailedAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/server/iris/IrisService;->mFailedAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/server/iris/IrisService;->mFailedAttempts:I

    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService;->inLockoutMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService;->scheduleLockoutReset()V

    const/4 v1, 0x6

    # invokes: Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->sendError(I)Z
    invoke-static {p1, v1}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->access$500(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "IrisService"

    const-string v2, "Cannot send lockout message to client"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p1, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->isDone:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inLockoutMode()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/samsung/android/server/iris/IrisService;->mFailedAttempts:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initBuffers(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService;->mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v1, v2, 0x2

    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService;->mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;

    new-array v3, v1, [B

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isForegroundActivity(II)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .local v4, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

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

    const/4 v5, 0x1

    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_1
    return v5

    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v4    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "IrisService"

    const-string v6, "am.getRunningAppProcesses() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isTZCommand(I)Z
    .locals 1
    .param p1, "cmd"    # I

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
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/server/iris/IrisService$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/iris/IrisService$7;-><init>(Lcom/samsung/android/server/iris/IrisService;)V

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IrisService"

    const-string v2, "Failed to listen for user switching event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyLockoutResetMonitors()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;->sendLockoutReset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private releasePreviewBuffer([B)V
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private remove(Lcom/samsung/android/camera/iris/IIrisDaemon;II)I
    .locals 8
    .param p1, "daemon"    # Lcom/samsung/android/camera/iris/IIrisDaemon;
    .param p2, "irId"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v3, -0x1

    .local v3, "result":I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-interface {p1, p2, p3}, Lcom/samsung/android/camera/iris/IIrisDaemon;->remove(II)I

    move-result v3

    const-string v4, "IrisService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove IR_FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms) RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "begin":J
    :goto_0
    return v3

    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "IrisService"

    const-string v5, "remove failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeClient(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V
    .locals 2
    .param p1, "client"    # Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->destroy()V

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    if-ne p1, v0, :cond_2

    iput-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    if-ne p1, v0, :cond_3

    iput-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mRemoveClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mRemoveClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    goto :goto_0
.end method

.method private removeIris(II)I
    .locals 13
    .param p1, "irId"    # I
    .param p2, "groupId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    move-result-object v7

    .local v7, "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    if-nez v7, :cond_1

    const-string v1, "IrisService"

    const-string v2, "removeIris: no irisd!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v0

    :cond_0
    :goto_0
    return v12

    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result v4

    .local v4, "effectiveUserId":I
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/server/iris/IrisService;->stopPendingOperations(Z)V

    const/4 v12, 0x0

    .local v12, "retVal":I
    if-ne p1, v0, :cond_3

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/iris/IrisService;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v10

    .local v10, "irList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/iris/Iris;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/camera/iris/Iris;

    .local v9, "ir":Lcom/samsung/android/camera/iris/Iris;
    invoke-virtual {v9}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v0

    invoke-direct {p0, v7, v0, v4}, Lcom/samsung/android/server/iris/IrisService;->remove(Lcom/samsung/android/camera/iris/IIrisDaemon;II)I

    move-result v11

    .local v11, "result":I
    if-eqz v11, :cond_2

    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove with id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " failed, result="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, -0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    move-object v1, p0

    move-object v3, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;-><init>(Lcom/samsung/android/server/iris/IrisService;Landroid/os/IBinder;Lcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLjava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/iris/IrisService;->removeTemplateForUser(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;I)V

    goto :goto_1

    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "ir":Lcom/samsung/android/camera/iris/Iris;
    .end local v10    # "irList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camera/iris/Iris;>;"
    .end local v11    # "result":I
    :cond_3
    invoke-direct {p0, v7, p1, v4}, Lcom/samsung/android/server/iris/IrisService;->remove(Lcom/samsung/android/camera/iris/IIrisDaemon;II)I

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    move-object v1, p0

    move-object v3, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;-><init>(Lcom/samsung/android/server/iris/IrisService;Landroid/os/IBinder;Lcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLjava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/iris/IrisService;->removeTemplateForUser(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;I)V

    move v12, v5

    goto :goto_0

    :cond_4
    move v12, v0

    goto :goto_0
.end method

.method private removeLockoutResetCallback(Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;)V
    .locals 1
    .param p1, "monitor"    # Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeTemplateForUser(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;I)V
    .locals 6
    .param p1, "clientMonitor"    # Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    .param p2, "irisId"    # I

    .prologue
    const-wide/16 v4, -0x1

    sget-boolean v0, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTemplateForUser : irisId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "IrisService"

    const-string v1, "removeTemplateForUser : no clientMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mIrisUtils:Lcom/samsung/android/server/iris/IrisUtils;

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->userId:I

    invoke-virtual {v0, v1, p2, v2}, Lcom/samsung/android/server/iris/IrisUtils;->removeIrisIdForUser(Landroid/content/Context;II)V

    iget v0, p1, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->userId:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/iris/IrisService;->hasEnrolledIrises(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.samsung.android.intent.action.IRIS_REMOVED"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/server/iris/IrisService;->sendBroadcast(Ljava/lang/String;I)V

    const-string v0, "IRRM"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/samsung/android/server/iris/IrisService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    const-string v0, "com.samsung.android.intent.action.IRIS_RESET"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/iris/IrisService;->sendBroadcast(Ljava/lang/String;I)V

    const-string v0, "IRRM"

    const-string v1, "ALL"

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/samsung/android/server/iris/IrisService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private resetFailedAttempts()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService;->inLockoutMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IrisService"

    const-string v1, "Reset iris lockout"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService;->cancelLockoutReset()V

    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService;->notifyLockoutResetMonitors()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/iris/IrisService;->mFailedAttempts:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/server/iris/IrisService;->mLockOutTime:J

    return-void
.end method

.method private scheduleLockoutReset()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7530

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService;->getLockoutResetIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v6

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/server/iris/IrisService;->mLockOutTime:J

    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;I)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "irisId"    # I

    .prologue
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    if-lez p2, :cond_0

    const-string v2, "irisIndex"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "verificationType"

    const-string v3, "Device Credential"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v2, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is sended with irisId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v2, "IrisService"

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

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBroadcast failed :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendError(Lcom/samsung/android/camera/iris/IIrisServiceReceiver;I)V
    .locals 4
    .param p1, "receiver"    # Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .param p2, "error"    # I

    .prologue
    if-eqz p1, :cond_0

    :try_start_0
    iget-wide v2, p0, Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J

    invoke-interface {p1, v2, v3, p2}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IrisService"

    const-string v2, "Failed to send error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setPreviewBuffer()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService;->mBuffersHeap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<[BLjava/lang/Boolean;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLjava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v3, v2}, Lcom/sec/android/seccamera/SecCamera;->addCallbackBuffer([B)V

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLjava/lang/Boolean;>;"
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<[BLjava/lang/Boolean;>;>;"
    :cond_1
    return-void
.end method

.method private declared-synchronized startIRCamera()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    const-string v7, "IrisService"

    const-string v8, "startIRCamera"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/server/iris/IrisService;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    if-nez v7, :cond_2

    new-instance v2, Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    invoke-direct {v2}, Lcom/sec/android/seccamera/SecCamera$CameraInfo;-><init>()V

    .local v2, "cameraInfo":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    invoke-static {}, Lcom/sec/android/seccamera/SecCamera;->getNumberOfCameras()I

    move-result v1

    .local v1, "cameraCount":I
    const/4 v0, 0x0

    .local v0, "camIdx":I
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-static {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    iget v7, v2, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v7, v6, :cond_0

    const/4 v7, 0x1

    :try_start_1
    invoke-static {v7}, Lcom/sec/android/seccamera/SecCamera;->open(I)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/server/iris/IrisService;->mCamera:Lcom/sec/android/seccamera/SecCamera;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "IrisService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Camera failed to open: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "camIdx":I
    .end local v1    # "cameraCount":I
    .end local v2    # "cameraInfo":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return v5

    .restart local v0    # "camIdx":I
    .restart local v1    # "cameraCount":I
    .restart local v2    # "cameraInfo":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    :cond_1
    :try_start_3
    iget-object v7, p0, Lcom/samsung/android/server/iris/IrisService;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/seccamera/SecCamera;->setDisplayOrientation(I)V

    iget-object v7, p0, Lcom/samsung/android/server/iris/IrisService;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v7}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v4

    .local v4, "parameters":Lcom/sec/android/seccamera/SecCamera$Parameters;
    sget v7, Lcom/samsung/android/server/iris/IrisService;->IRCAMERA_WIDTH:I

    sget v8, Lcom/samsung/android/server/iris/IrisService;->IRCAMERA_HEIGHT:I

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    const-string v7, "intelligent-mode"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    const-string v7, "no-display-mode"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    const-string v7, "shutterspeed"

    const/16 v8, 0x1e

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    const-string v7, "pulse-delay"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    const-string v7, "gain"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    const-string v7, "pulse-width"

    const/16 v8, 0xf

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/samsung/android/server/iris/IrisService;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v7, v4}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v7, p0, Lcom/samsung/android/server/iris/IrisService;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v7}, Lcom/sec/android/seccamera/SecCamera;->startPreview()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    sget v5, Lcom/samsung/android/server/iris/IrisService;->IRCAMERA_WIDTH:I

    sget v7, Lcom/samsung/android/server/iris/IrisService;->IRCAMERA_HEIGHT:I

    invoke-direct {p0, v5, v7}, Lcom/samsung/android/server/iris/IrisService;->initBuffers(II)V

    iget-object v5, p0, Lcom/samsung/android/server/iris/IrisService;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackWithBuffer(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V

    iget-object v5, p0, Lcom/samsung/android/server/iris/IrisService;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v5, p0}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackWithBuffer(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V

    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService;->setPreviewBuffer()V

    .end local v0    # "camIdx":I
    .end local v1    # "cameraCount":I
    .end local v2    # "cameraInfo":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    .end local v4    # "parameters":Lcom/sec/android/seccamera/SecCamera$Parameters;
    :cond_2
    move v5, v6

    goto :goto_1

    .restart local v0    # "camIdx":I
    .restart local v1    # "cameraCount":I
    .restart local v2    # "cameraInfo":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    .restart local v4    # "parameters":Lcom/sec/android/seccamera/SecCamera$Parameters;
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v6, "IrisService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Camera failed to start: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .end local v0    # "camIdx":I
    .end local v1    # "cameraCount":I
    .end local v2    # "cameraInfo":Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "parameters":Lcom/sec/android/seccamera/SecCamera$Parameters;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized stopIRCamera()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "IrisService"

    const-string v2, "stopIRCamera"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mWindowManager:Landroid/view/WindowManager;

    const-string v1, "IrisService"

    const-string v2, "mWindowManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;

    if-nez v1, :cond_1

    const-string v1, "IrisService"

    const-string v2, "stopIRCamera IrisView is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mTempToken:Landroid/os/IBinder;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mTempToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->stopPreview()V

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setPreviewCallbackWithBuffer(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService;->clearPreviewBuffer()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/util/NoSuchElementException;
    :try_start_3
    const-string v1, "IrisService"

    const-string v2, " the token is died"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private stopPendingOperations(Z)V
    .locals 8
    .param p1, "initiatedByClient"    # Z

    .prologue
    sget-boolean v4, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "IrisService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopPendingOperations : initiatedByClient="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget-object v4, v4, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v4, p1}, Lcom/samsung/android/server/iris/IrisService;->stopEnrollment(Landroid/os/IBinder;Z)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget-object v4, v4, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v4, p1}, Lcom/samsung/android/server/iris/IrisService;->stopAuthentication(Landroid/os/IBinder;Z)V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mRequestClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mRequestClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    invoke-direct {p0, v4}, Lcom/samsung/android/server/iris/IrisService;->removeClient(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V

    :cond_3
    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    move-result-object v0

    .local v0, "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    if-nez v0, :cond_5

    const-string v4, "IrisService"

    const-string v5, "stopPendingOperations: no irisd!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    :cond_4
    :goto_0
    return-void

    .restart local v0    # "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    :cond_5
    const/4 v4, 0x6

    const/4 v5, 0x0

    new-array v5, v5, [B

    const/4 v6, 0x0

    new-array v6, v6, [B

    const/4 v7, 0x0

    invoke-interface {v0, v4, v5, v6, v7}, Lcom/samsung/android/camera/iris/IIrisDaemon;->request(I[B[BI)I

    move-result v3

    .local v3, "retReq":I
    const-string v4, "IrisService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopPendingOperations : req status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x186c9

    if-ne v3, v4, :cond_4

    invoke-interface {v0}, Lcom/samsung/android/camera/iris/IIrisDaemon;->cancelAuthentication()I

    move-result v2

    .local v2, "ret":I
    const-string v4, "IrisService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopPendingOperations: cancel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    .end local v2    # "ret":I
    .end local v3    # "retReq":I
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "IrisService"

    const-string v5, "stopPendingOperations: failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateActiveGroup(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    move-result-object v2

    .local v2, "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/iris/IrisService;->getEffectiveUserId(I)I

    move-result p1

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/server/iris/IrisService;->stopPendingOperations(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/biometrics/ir/User_"

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

    invoke-interface {v2, p1, v4}, Lcom/samsung/android/camera/iris/IIrisDaemon;->setActiveGroup(I[B)I

    const-string v4, "IrisService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateActiveGroup IR_FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "begin":J
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "IrisService"

    const-string v5, "Failed to setActiveGroup():"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private userActivity()V
    .locals 5

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "now":J
    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    const-string v0, "IrisService"

    const-string v1, "irisd died"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mDaemon:Lcom/samsung/android/camera/iris/IIrisDaemon;

    iget-wide v0, p0, Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/iris/IrisService;->handleError(JI)V

    return-void
.end method

.method checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

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

    return-void
.end method

.method fillEnrollView(Landroid/os/IBinder;IIII)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const-string v3, "IrisService"

    const-string v4, "fillEnrollView"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;

    if-eqz v3, :cond_0

    const-string v3, "IrisService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fillEnrollView  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService;->mTempToken:Landroid/os/IBinder;

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .local v2, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput p5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iput p4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v3, 0x3eb

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x308

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/samsung/android/server/iris/IrisService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .local v1, "flater":Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;

    if-nez v3, :cond_2

    const v3, 0x1090084

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/iris/IrisService;->setEnrollLayout(Landroid/view/View;)V

    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;

    if-nez v3, :cond_3

    const-string v3, "IrisService"

    const-string v4, "fillEnrollView IrisView is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez p1, :cond_4

    const-string v3, "IrisService"

    const-string v4, " token is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mIrisView:Landroid/view/View;

    invoke-interface {v3, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .end local v1    # "flater":Landroid/view/LayoutInflater;
    .end local v2    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "IrisService"

    const-string v4, " the token is died"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getAuthenticatorId()J
    .locals 10

    .prologue
    sget-boolean v6, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "IrisService"

    const-string v7, "getAuthenticatorId"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    move-result-object v2

    .local v2, "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-interface {v2}, Lcom/samsung/android/camera/iris/IIrisDaemon;->getAuthenticatorId()J

    move-result-wide v4

    .local v4, "result":J
    const-string v6, "IrisService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAuthenticatorId IR_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "begin":J
    .end local v4    # "result":J
    :goto_0
    return-wide v4

    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "IrisService"

    const-string v7, "getAuthenticatorId failed"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method getEffectiveUserId(I)I
    .locals 6
    .param p1, "userId"    # I

    .prologue
    iget-object v3, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .local v2, "um":Landroid/os/UserManager;
    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "callingIdentity":J
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "callingIdentity":J
    :goto_0
    sget-boolean v3, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "IrisService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEffectiveUserId return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p1

    :cond_1
    const-string v3, "IrisService"

    const-string v4, "Unable to acquire UserManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEnrolledIrises(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/iris/Iris;",
            ">;"
        }
    .end annotation

    .prologue
    iget-wide v0, p0, Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mIrisUtils:Lcom/samsung/android/server/iris/IrisUtils;

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/iris/IrisUtils;->getIrisesForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;
    .locals 6

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mDaemon:Lcom/samsung/android/camera/iris/IIrisDaemon;

    if-nez v1, :cond_0

    const-string v1, "com.samsung.android.camera.iris.IIrisDaemon"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/iris/IIrisDaemon$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisDaemon;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mDaemon:Lcom/samsung/android/camera/iris/IIrisDaemon;

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mDaemon:Lcom/samsung/android/camera/iris/IIrisDaemon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mDaemon:Lcom/samsung/android/camera/iris/IIrisDaemon;

    invoke-interface {v1}, Lcom/samsung/android/camera/iris/IIrisDaemon;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mDaemon:Lcom/samsung/android/camera/iris/IIrisDaemon;

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService;->mDaemonCallback:Lcom/samsung/android/camera/iris/IIrisDaemonCallback;

    invoke-interface {v1, v2}, Lcom/samsung/android/camera/iris/IIrisDaemon;->init(Lcom/samsung/android/camera/iris/IIrisDaemonCallback;)V

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mDaemon:Lcom/samsung/android/camera/iris/IIrisDaemon;

    invoke-interface {v1}, Lcom/samsung/android/camera/iris/IIrisDaemon;->openHal()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J

    iget-wide v2, p0, Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/server/iris/IrisService;->updateActiveGroup(I)V

    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService;->checkIntegrity()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mDaemon:Lcom/samsung/android/camera/iris/IIrisDaemon;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_3
    const-string v1, "IrisService"

    const-string v2, "Failed to open Iris HAL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mDaemon:Lcom/samsung/android/camera/iris/IIrisDaemon;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v1, "IrisService"

    const-string v2, "Failed to open irisd HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mDaemon:Lcom/samsung/android/camera/iris/IIrisDaemon;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_5
    const-string v1, "IrisService"

    const-string v2, "iris service not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method protected handleAcquired(JLcom/samsung/android/camera/iris/EyeInfo;)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "eyeInfo"    # Lcom/samsung/android/camera/iris/EyeInfo;

    .prologue
    sget-boolean v0, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v1, "IrisService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAcquired : deviceId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", acquiredInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p3, Lcom/samsung/android/camera/iris/EyeInfo;->mAcquireInfo:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/samsung/android/server/iris/IrisService;->accquiredEventNameMap:Landroid/util/SparseArray;

    iget v3, p3, Lcom/samsung/android/camera/iris/EyeInfo;->mAcquireInfo:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

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

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget v1, p3, Lcom/samsung/android/camera/iris/EyeInfo;->mAcquireInfo:I

    # invokes: Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->sendAcquired(I)Z
    invoke-static {v0, v1}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->access$800(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/iris/IrisService;->removeClient(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAcquired : acquiredInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/samsung/android/camera/iris/EyeInfo;->mAcquireInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget v1, p3, Lcom/samsung/android/camera/iris/EyeInfo;->mAcquireInfo:I

    # invokes: Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->sendAcquired(I)Z
    invoke-static {v0, v1}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->access$800(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/iris/IrisService;->removeClient(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mRequestClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mRequestClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget v1, p3, Lcom/samsung/android/camera/iris/EyeInfo;->mAcquireInfo:I

    # invokes: Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->sendAcquired(I)Z
    invoke-static {v0, v1}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->access$800(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mRequestClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/iris/IrisService;->removeClient(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V

    goto :goto_1
.end method

.method protected handleAuthenticated(JII)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "irisId"    # I
    .param p4, "groupId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-boolean v1, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "IrisService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAuthenticated : deviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,irisId="

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

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget-object v0, v1, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    # invokes: Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->sendAuthenticated(II)Z
    invoke-static {v1, p3, p4}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->access$700(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;II)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_3

    :goto_1
    or-int/lit8 v1, v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService;->inLockoutMode()Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/iris/IrisService;->stopAuthentication(Landroid/os/IBinder;Z)V

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/iris/IrisService;->removeClient(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V

    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService;->stopIRCamera()V

    .end local v0    # "token":Landroid/os/IBinder;
    :cond_0
    return-void

    :cond_1
    const-string v4, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAuthenticated : "

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

    goto :goto_1
.end method

.method protected handleEnrollResult(JIII)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "irisId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .prologue
    sget-boolean v0, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEnrollResult : deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,irisId="

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

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    # invokes: Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->sendEnrollResult(III)Z
    invoke-static {v0, p3, p4, p5}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->access$900(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;III)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    if-ne p5, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/server/iris/IrisService;->addTemplateForUser(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;I)V

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/samsung/android/server/iris/IrisService;->removeClient(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V

    const-string v0, "IREN"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/server/iris/IrisService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService;->stopIRCamera()V

    :cond_1
    return-void
.end method

.method protected handleEnumerate(J[I[I)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "irisIds"    # [I
    .param p4, "groupIds"    # [I

    .prologue
    array-length v0, p3

    array-length v1, p4

    if-eq v0, v1, :cond_1

    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "irisIds and groupIds differ in length: f[]="

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

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IrisService"

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

    sget-boolean v1, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v2, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleError : deviceId="

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

    sget-object v1, Lcom/samsung/android/server/iris/IrisService;->errorEventNameMap:Landroid/util/SparseArray;

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

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget-object v0, v1, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    # invokes: Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->sendError(I)Z
    invoke-static {v1, p3}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->access$500(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/server/iris/IrisService;->stopEnrollment(Landroid/os/IBinder;Z)V

    .end local v0    # "token":Landroid/os/IBinder;
    :cond_0
    :goto_1
    const/16 v1, 0x3ec

    if-ne p3, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/server/iris/IrisService$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/iris/IrisService$4;-><init>(Lcom/samsung/android/server/iris/IrisService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    const-string v1, "IrisService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleError : error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget-object v0, v1, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    .restart local v0    # "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    # invokes: Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->sendError(I)Z
    invoke-static {v1, p3}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->access$500(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/server/iris/IrisService;->stopAuthentication(Landroid/os/IBinder;Z)V

    goto :goto_1

    .end local v0    # "token":Landroid/os/IBinder;
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mRemoveClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mRemoveClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    # invokes: Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->sendError(I)Z
    invoke-static {v1, p3}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->access$500(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mRemoveClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/iris/IrisService;->removeClient(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V

    goto :goto_1
.end method

.method protected handleRemoved(JII)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "irisId"    # I
    .param p4, "groupId"    # I

    .prologue
    sget-boolean v1, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "IrisService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRemoved : deviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,irisId="

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

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mRemoveClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    .local v0, "client":Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mRemoveClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    invoke-direct {p0, v1, p3}, Lcom/samsung/android/server/iris/IrisService;->removeTemplateForUser(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;I)V

    :cond_1
    if-eqz v0, :cond_2

    # invokes: Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->sendRemoved(II)Z
    invoke-static {v0, p3, p4}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->access$400(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mRemoveClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/iris/IrisService;->removeClient(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V

    :cond_2
    return-void
.end method

.method handleUserSwitching(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    sget-boolean v0, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IrisService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUserSwitching : userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/iris/IrisService;->updateActiveGroup(I)V

    return-void
.end method

.method public hasEnrolledIrises(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    iget-wide v0, p0, Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mIrisUtils:Lcom/samsung/android/server/iris/IrisUtils;

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/iris/IrisUtils;->getIrisesForUser(Landroid/content/Context;I)Ljava/util/List;

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
    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

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
    sget-boolean v2, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertSurveyLog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/server/iris/IrisService;->isEnableSurveyMode:Z

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

    :cond_0
    sget-boolean v2, Lcom/samsung/android/server/iris/IrisService;->isEnableSurveyMode:Z

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.samsung.android.server.iris.IrisService"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method isCurrentUserOrProfile(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    iget-object v4, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v2

    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onPreviewFrame([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 14
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/sec/android/seccamera/SecCamera;

    .prologue
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v12

    .local v12, "params":Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-virtual {v12}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getPreviewSize()Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v0

    iget v13, v0, Lcom/sec/android/seccamera/SecCamera$Size;->width:I

    .local v13, "w":I
    invoke-virtual {v12}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getPreviewSize()Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v0

    iget v9, v0, Lcom/sec/android/seccamera/SecCamera$Size;->height:I

    .local v9, "h":I
    mul-int v0, v13, v9

    new-array v2, v0, [I

    .local v2, "mRGBABuffer":[I
    sget v0, Lcom/samsung/android/server/iris/IrisService;->IRCAMERA_ADAPTED_IMAGEVIEW_RATIO_WIDTH:I

    sget v1, Lcom/samsung/android/server/iris/IrisService;->IRCAMERA_ADAPTED_IMAGEVIEW_RATIO_HEIGHT:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .local v10, "mBitmap":Landroid/graphics/Bitmap;
    sget v3, Lcom/samsung/android/server/iris/IrisService;->IRCAMERA_OFFSET_X:I

    const/4 v4, 0x0

    sget v5, Lcom/samsung/android/server/iris/IrisService;->IRCAMERA_ADAPTED_IMAGEVIEW_RATIO_HEIGHT:I

    sget v6, Lcom/samsung/android/server/iris/IrisService;->IRCAMERA_ADAPTED_IMAGEVIEW_RATIO_WIDTH:I

    sget v7, Lcom/samsung/android/server/iris/IrisService;->IRCAMERA_ADAPTED_IMAGEVIEW_RATIO_HEIGHT:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/iris/IrisService;->convertFromNV21([B[IIIIII)V

    const/4 v3, 0x0

    sget v4, Lcom/samsung/android/server/iris/IrisService;->IRCAMERA_ADAPTED_IMAGEVIEW_RATIO_WIDTH:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v7, Lcom/samsung/android/server/iris/IrisService;->IRCAMERA_ADAPTED_IMAGEVIEW_RATIO_WIDTH:I

    sget v8, Lcom/samsung/android/server/iris/IrisService;->IRCAMERA_ADAPTED_IMAGEVIEW_RATIO_HEIGHT:I

    move-object v1, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollEyePreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .local v11, "matrix":Landroid/graphics/Matrix;
    const/high16 v0, 0x43870000    # 270.0f

    sget v1, Lcom/samsung/android/server/iris/IrisService;->IRCAMERA_ADAPTED_IMAGEVIEW_RATIO_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v3, Lcom/samsung/android/server/iris/IrisService;->IRCAMERA_ADAPTED_IMAGEVIEW_RATIO_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v11, v0, v1, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const v0, 0x3ffa7efa    # 1.957f

    const v1, 0x3ffa7efa    # 1.957f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11, v0, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollEyePreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService;->setPreviewBuffer()V

    invoke-direct {p0, p1}, Lcom/samsung/android/server/iris/IrisService;->releasePreviewBuffer([B)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    sget-boolean v1, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "IrisService"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "iris"

    new-instance v2, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/iris/IrisService$IrisServiceWrapper;-><init>(Lcom/samsung/android/server/iris/IrisService;Lcom/samsung/android/server/iris/IrisService$1;)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/iris/IrisService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {p0}, Lcom/samsung/android/server/iris/IrisService;->listenForUserSwitches()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method setEnrollLayout(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "IrisService"

    const-string v1, "setEnrollLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x10203e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollLayout:Landroid/widget/LinearLayout;

    const v0, 0x10203e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollEyePreview:Landroid/widget/ImageView;

    const v0, 0x10203ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mIris_percentage:Landroid/widget/TextView;

    const v0, 0x10203ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mEyeProgressbar_left:Landroid/widget/ProgressBar;

    const v0, 0x10203eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mEyeProgressbar_right:Landroid/widget/ProgressBar;

    const v0, 0x10203ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mTempararyTestBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/server/iris/IrisService;->mTempararyTestBtn:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/server/iris/IrisService$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/iris/IrisService$5;-><init>(Lcom/samsung/android/server/iris/IrisService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method startAuthentication(Landroid/os/IBinder;JILcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 18
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "groupId"    # I
    .param p5, "receiver"    # Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .param p6, "flags"    # I
    .param p7, "restricted"    # Z
    .param p8, "opPackageName"    # Ljava/lang/String;
    .param p9, "attr"    # Landroid/os/Bundle;

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    move-result-object v14

    .local v14, "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    if-nez v14, :cond_0

    const-string v4, "IrisService"

    const-string v5, "startAuthentication: no irisd!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/server/iris/IrisService;->sendError(Lcom/samsung/android/camera/iris/IIrisServiceReceiver;I)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    if-eqz v4, :cond_2

    const-string v4, "IrisService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startAuthentication: current client = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget-object v6, v6, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->owner:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget-object v4, v4, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    if-ne v4, v0, :cond_1

    const-string v4, "IrisService"

    const-string v5, "authentication is already in progress."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move/from16 v2, p7

    move-object/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/server/iris/IrisService;->canStopExclusiveIdentify(Landroid/os/Bundle;ZLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "IrisService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Locked client["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget-object v6, v6, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->owner:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is in progress"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/server/iris/IrisService;->sendError(Lcom/samsung/android/camera/iris/IIrisServiceReceiver;I)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/server/iris/IrisService;->stopPendingOperations(Z)V

    if-nez p9, :cond_3

    new-instance p9, Landroid/os/Bundle;

    .end local p9    # "attr":Landroid/os/Bundle;
    invoke-direct/range {p9 .. p9}, Landroid/os/Bundle;-><init>()V

    .restart local p9    # "attr":Landroid/os/Bundle;
    :cond_3
    const-string v4, "packageName"

    move-object/from16 v0, p9

    move-object/from16 v1, p8

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move/from16 v8, p4

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;-><init>(Lcom/samsung/android/server/iris/IrisService;Landroid/os/IBinder;Lcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/iris/IrisService;->inLockoutMode()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "IrisService"

    const-string v5, "In lockout mode; disallowing authentication"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    const/4 v5, 0x6

    # invokes: Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->sendError(I)Z
    invoke-static {v4, v5}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->access$500(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;I)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "IrisService"

    const-string v5, "Cannot send timeout message to client"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/server/iris/IrisService;->removeClient(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/server/iris/IrisService;->syncObj:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .local v12, "begin":J
    move-wide/from16 v0, p2

    move/from16 v2, p4

    invoke-interface {v14, v0, v1, v2}, Lcom/samsung/android/camera/iris/IIrisDaemon;->authenticate(JI)I

    move-result v16

    .local v16, "result":I
    const-string v4, "IrisService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startAuthentication IR_FINISH ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v12

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms) RESULT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v16, :cond_6

    const-string v4, "IrisService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startAuthentication failed, result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v4}, Lcom/samsung/android/server/iris/IrisService;->handleError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v12    # "begin":J
    .end local v16    # "result":I
    :cond_6
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

    :catch_0
    move-exception v15

    .local v15, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "IrisService"

    const-string v6, "startAuthentication failed"

    invoke-static {v4, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method startEnrollment(Landroid/os/IBinder;[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLandroid/os/Bundle;)V
    .locals 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .param p5, "flags"    # I
    .param p6, "restricted"    # Z
    .param p7, "attr"    # Landroid/os/Bundle;

    .prologue
    sget-boolean v2, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startEnrollment : token="

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

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    move-result-object v12

    .local v12, "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    if-nez v12, :cond_2

    const-string v2, "IrisService"

    const-string v3, "enroll: no irisd!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/iris/IrisService;->sendError(Lcom/samsung/android/camera/iris/IIrisServiceReceiver;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/server/iris/IrisService;->stopPendingOperations(Z)V

    new-instance v2, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move/from16 v6, p3

    move/from16 v7, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;-><init>(Lcom/samsung/android/server/iris/IrisService;Landroid/os/IBinder;Lcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    const/4 v15, 0x0

    .local v15, "timeout":I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .local v10, "begin":J
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v12, v0, v1, v2}, Lcom/samsung/android/camera/iris/IIrisDaemon;->enroll([BII)I

    move-result v14

    .local v14, "result":I
    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startEnrollment IR_FINISH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms) RESULT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_1

    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startEnroll failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/server/iris/IrisService;->handleError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v10    # "begin":J
    .end local v14    # "result":I
    :catch_0
    move-exception v13

    .local v13, "e":Landroid/os/RemoteException;
    const-string v2, "IrisService"

    const-string v3, "startEnroll failed"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method startEnrollmentwithUI(Landroid/os/IBinder;IIII[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLandroid/os/Bundle;)V
    .locals 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "cryptoToken"    # [B
    .param p7, "groupId"    # I
    .param p8, "receiver"    # Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .param p9, "flags"    # I
    .param p10, "restricted"    # Z
    .param p11, "attr"    # Landroid/os/Bundle;

    .prologue
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/server/iris/IrisService;->fillEnrollView(Landroid/os/IBinder;IIII)V

    sget-boolean v2, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startEnrollment : token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,groupId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,restricted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    move-result-object v12

    .local v12, "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    if-nez v12, :cond_2

    const-string v2, "IrisService"

    const-string v3, "enroll: no irisd!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/iris/IrisService;->sendError(Lcom/samsung/android/camera/iris/IIrisServiceReceiver;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/server/iris/IrisService;->stopPendingOperations(Z)V

    new-instance v2, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p8

    move/from16 v6, p7

    move/from16 v7, p10

    move-object/from16 v9, p11

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;-><init>(Lcom/samsung/android/server/iris/IrisService;Landroid/os/IBinder;Lcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    const/4 v15, 0x0

    .local v15, "timeout":I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .local v10, "begin":J
    const/4 v2, 0x0

    move-object/from16 v0, p6

    move/from16 v1, p7

    invoke-interface {v12, v0, v1, v2}, Lcom/samsung/android/camera/iris/IIrisDaemon;->enroll([BII)I

    move-result v14

    .local v14, "result":I
    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startEnrollment IR_FINISH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms) RESULT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_1

    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startEnroll failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/server/iris/IrisService;->handleError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v10    # "begin":J
    .end local v14    # "result":I
    :catch_0
    move-exception v13

    .local v13, "e":Landroid/os/RemoteException;
    const-string v2, "IrisService"

    const-string v3, "startEnroll failed"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public declared-synchronized startPostEnroll(Landroid/os/IBinder;)I
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/samsung/android/server/iris/IrisService;->mIsEnrolling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v6, :cond_0

    move v4, v5

    :goto_0
    monitor-exit p0

    return v4

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    move-result-object v2

    .local v2, "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    if-nez v2, :cond_1

    const-string v6, "IrisService"

    const-string v7, "startPostEnroll: no irisd!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v4, v5

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/samsung/android/server/iris/IrisService;->syncObj:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v6, 0x1

    :try_start_3
    invoke-direct {p0, v6}, Lcom/samsung/android/server/iris/IrisService;->stopPendingOperations(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-interface {v2}, Lcom/samsung/android/camera/iris/IIrisDaemon;->postEnroll()I

    move-result v4

    .local v4, "result":I
    const-string v6, "IrisService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startPostEnroll IR_FINISH ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms) RESULT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/server/iris/IrisService;->mIsEnrolling:Z

    monitor-exit v7

    goto :goto_0

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

    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v6, "IrisService"

    const-string v7, "startPostEnroll failed"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v4, v5

    goto :goto_0

    .end local v2    # "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
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

    invoke-virtual {p0}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    move-result-object v2

    .local v2, "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    if-nez v2, :cond_0

    const-string v8, "IrisService"

    const-string v9, "startPreEnroll: no irisd!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v6

    :goto_0
    return-wide v4

    :cond_0
    const/4 v8, 0x1

    :try_start_0
    invoke-direct {p0, v8}, Lcom/samsung/android/server/iris/IrisService;->stopPendingOperations(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-interface {v2}, Lcom/samsung/android/camera/iris/IIrisDaemon;->preEnroll()J

    move-result-wide v4

    .local v4, "result":J
    const-string v8, "IrisService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startPreEnroll IR_FINISH ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms) RESULT: 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/samsung/android/server/iris/IrisService;->mIsEnrolling:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "begin":J
    .end local v4    # "result":J
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "IrisService"

    const-string v9, "startPreEnroll failed"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v4, v6

    goto :goto_0
.end method

.method startRemove(Landroid/os/IBinder;IILcom/samsung/android/camera/iris/IIrisServiceReceiver;Z)V
    .locals 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "irisId"    # I
    .param p3, "userId"    # I
    .param p4, "receiver"    # Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .param p5, "restricted"    # Z

    .prologue
    sget-boolean v2, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRemove: token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", irisId="

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

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    move-result-object v9

    .local v9, "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    if-nez v9, :cond_2

    const-string v2, "IrisService"

    const-string v3, "startRemove: no irisd!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/iris/IrisService;->sendError(Lcom/samsung/android/camera/iris/IIrisServiceReceiver;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/android/server/iris/IrisService;->stopPendingOperations(Z)V

    new-instance v2, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p4

    move/from16 v6, p3

    move/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;-><init>(Lcom/samsung/android/server/iris/IrisService;Landroid/os/IBinder;Lcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLjava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/server/iris/IrisService;->mRemoveClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .local v10, "begin":J
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v9, v0, v1}, Lcom/samsung/android/camera/iris/IIrisDaemon;->remove(II)I

    move-result v13

    .local v13, "result":I
    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRemove IR_FINISH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms) RESULT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_1

    const-string v2, "IrisService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRemove with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/server/iris/IrisService;->handleError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v10    # "begin":J
    .end local v13    # "result":I
    :catch_0
    move-exception v12

    .local v12, "e":Landroid/os/RemoteException;
    const-string v2, "IrisService"

    const-string v3, "startRemove failed"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method declared-synchronized startRequest(Landroid/os/IBinder;I[B[BIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)I
    .locals 25
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cmd"    # I
    .param p3, "inputBuf"    # [B
    .param p4, "outputBuf"    # [B
    .param p5, "inParam"    # I
    .param p6, "groupId"    # I
    .param p7, "receiver"    # Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    move-result-object v13

    .local v13, "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    if-nez v13, :cond_0

    const-string v4, "IrisService"

    const-string v5, "startRequest: no irisd!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v21, -0x2

    :goto_0
    monitor-exit p0

    return v21

    :cond_0
    :try_start_1
    sget-boolean v4, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v5, "IrisService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startRequest: CMD= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v4, Lcom/samsung/android/server/iris/IrisService;->requestCmdNameMap:Landroid/util/SparseArray;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", Param = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v4, 0x3e8

    move/from16 v0, p2

    if-ne v0, v4, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/iris/IrisService;->removeIris(II)I

    move-result v21

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    move/from16 v0, p2

    if-ne v0, v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/server/iris/IrisService;->mIsEnrolling:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/iris/IrisService;->startPostEnroll(Landroid/os/IBinder;)I

    :cond_3
    if-nez p3, :cond_4

    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 p3, v0

    :cond_4
    if-nez p4, :cond_5

    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 p4, v0

    :cond_5
    const/16 v20, -0x1

    .local v20, "result":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/iris/IrisService;->syncObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/server/iris/IrisService;->isTZCommand(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/server/iris/IrisService;->stopPendingOperations(Z)V

    :cond_6
    if-eqz p7, :cond_7

    new-instance v4, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p7

    move/from16 v8, p6

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;-><init>(Lcom/samsung/android/server/iris/IrisService;Landroid/os/IBinder;Lcom/samsung/android/camera/iris/IIrisServiceReceiver;IZLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/server/iris/IrisService;->mRequestClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .local v14, "begin":J
    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-interface {v13, v0, v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisDaemon;->request(I[B[BI)I

    move-result v20

    const-string v4, "IrisService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startRequest["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] IR_FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v14

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms) RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-boolean v4, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v4, :cond_f

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .local v22, "strInBuiler":Ljava/lang/StringBuilder;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .local v23, "strOutBuiler":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_d

    move-object/from16 v0, p3

    array-length v4, v0

    if-lez v4, :cond_d

    move-object/from16 v11, p3

    .local v11, "arr$":[B
    array-length v0, v11

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    aget-byte v12, v11, v18

    .local v12, "b":B
    const-string v4, "%02x "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    and-int/lit16 v7, v12, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .end local v11    # "arr$":[B
    .end local v12    # "b":B
    .end local v14    # "begin":J
    .end local v18    # "i$":I
    .end local v19    # "len$":I
    .end local v20    # "result":I
    .end local v22    # "strInBuiler":Ljava/lang/StringBuilder;
    .end local v23    # "strOutBuiler":Ljava/lang/StringBuilder;
    :cond_8
    const/16 v4, 0x3e9

    move/from16 v0, p2

    if-ne v0, v4, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/iris/IrisService;->inLockoutMode()Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/server/iris/IrisService;->mLockOutTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v0, v4

    move/from16 v21, v0

    .local v21, "ret":I
    const-string v4, "IrisService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startRequest["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] IR_FINISH - RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .end local v21    # "ret":I
    :catch_0
    move-exception v16

    .local v16, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "IrisService"

    const-string v5, "startRequest failed"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v21, -0x3

    goto/16 :goto_0

    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_a
    const/16 v4, 0x3ea

    move/from16 v0, p2

    if-ne v0, v4, :cond_3

    :try_start_5
    const-string v4, "IrisService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startRequest["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] IR_FINISH - RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/samsung/android/server/iris/IrisService;->mIsEnrolling:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/server/iris/IrisService;->mIsEnrolling:Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_b

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_0

    .restart local v20    # "result":I
    :catchall_0
    move-exception v4

    :try_start_6
    monitor-exit v24
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v4
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v13    # "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    .end local v20    # "result":I
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v11    # "arr$":[B
    .restart local v13    # "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    .restart local v14    # "begin":J
    .restart local v18    # "i$":I
    .restart local v19    # "len$":I
    .restart local v20    # "result":I
    .restart local v22    # "strInBuiler":Ljava/lang/StringBuilder;
    .restart local v23    # "strOutBuiler":Ljava/lang/StringBuilder;
    :cond_c
    :try_start_8
    const-string v4, "IrisService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startRequest: In = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v11    # "arr$":[B
    .end local v18    # "i$":I
    .end local v19    # "len$":I
    :cond_d
    if-eqz p4, :cond_f

    move-object/from16 v0, p4

    array-length v4, v0

    if-lez v4, :cond_f

    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    const-string v4, "%02x "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, p4, v17

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_e
    const-string v4, "IrisService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startRequest: Out= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v17    # "i":I
    .end local v22    # "strInBuiler":Ljava/lang/StringBuilder;
    .end local v23    # "strOutBuiler":Ljava/lang/StringBuilder;
    :cond_f
    const/4 v4, 0x6

    move/from16 v0, p2

    if-ne v0, v4, :cond_10

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/server/iris/IrisService;->mLatestSensorStatus:I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_10
    move/from16 v21, v20

    goto/16 :goto_0
.end method

.method stopAuthentication(Landroid/os/IBinder;Z)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "initiatedByClient"    # Z

    .prologue
    sget-boolean v6, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "IrisService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopAuthentication: token="

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

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    move-result-object v3

    .local v3, "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    if-nez v3, :cond_2

    const-string v6, "IrisService"

    const-string v7, "stopAuthentication: no irisd!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget-object v6, v6, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget-object v6, v6, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/server/iris/IrisService;->sendError(Lcom/samsung/android/camera/iris/IIrisServiceReceiver;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    .local v2, "client":Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    if-eqz v2, :cond_3

    iget-object v6, v2, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eq v6, p1, :cond_4

    :cond_3
    const-string v6, "IrisService"

    const-string v7, "stopAuthentication: invalid client or token!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_6

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-interface {v3}, Lcom/samsung/android/camera/iris/IIrisDaemon;->cancelAuthentication()I

    move-result v5

    .local v5, "result":I
    const-string v6, "IrisService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopAuthentication IR_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_5

    const-string v6, "IrisService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopAuthentication failed, result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "begin":J
    .end local v5    # "result":I
    :cond_5
    :goto_1
    const/4 v6, 0x4

    # invokes: Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->sendError(I)Z
    invoke-static {v2, v6}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->access$500(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;I)Z

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    invoke-direct {p0, v6}, Lcom/samsung/android/server/iris/IrisService;->removeClient(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V

    goto :goto_0

    :catch_0
    move-exception v4

    .local v4, "e":Landroid/os/RemoteException;
    const-string v6, "IrisService"

    const-string v7, "stopAuthentication failed"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method stopEnrollment(Landroid/os/IBinder;Z)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "initiatedByClient"    # Z

    .prologue
    sget-boolean v6, Lcom/samsung/android/server/iris/IrisService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "IrisService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopEnrollment: token="

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

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    move-result-object v3

    .local v3, "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    if-nez v3, :cond_2

    const-string v6, "IrisService"

    const-string v7, "stopEnrollment: no irisd!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget-object v6, v6, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    if-eqz v6, :cond_1

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget-object v6, v6, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iget-wide v8, p0, Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J

    const/4 v7, 0x0

    invoke-interface {v6, v8, v9, v7}, Lcom/samsung/android/camera/iris/IIrisServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v4

    .local v4, "e":Landroid/os/RemoteException;
    const-string v6, "IrisService"

    const-string v7, "Failed to invoke sendError:"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    .local v2, "client":Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    if-eqz v2, :cond_3

    iget-object v6, v2, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eq v6, p1, :cond_4

    :cond_3
    const-string v6, "IrisService"

    const-string v7, "stopEnrollment: invalid client or token!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_6

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-interface {v3}, Lcom/samsung/android/camera/iris/IIrisDaemon;->cancelEnrollment()I

    move-result v5

    .local v5, "result":I
    const-string v6, "IrisService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stopEnrollment IR_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_5

    const-string v6, "IrisService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startEnrollCancel failed, result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0    # "begin":J
    .end local v5    # "result":I
    :cond_5
    :goto_1
    const/4 v6, 0x4

    # invokes: Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->sendError(I)Z
    invoke-static {v2, v6}, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->access$500(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;I)Z

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    invoke-direct {p0, v6}, Lcom/samsung/android/server/iris/IrisService;->removeClient(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V

    goto :goto_0

    :catch_1
    move-exception v4

    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v6, "IrisService"

    const-string v7, "stopEnrollment failed"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
