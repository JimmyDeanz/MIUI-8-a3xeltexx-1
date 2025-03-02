.class public Lcom/android/server/job/JobServiceContext;
.super Landroid/app/job/IJobCallback$Stub;
.source "JobServiceContext.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobServiceContext$JobServiceHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXECUTING_TIMESLICE_MILLIS:J = 0x927c0L

.field private static final MSG_CALLBACK:I = 0x1

.field private static final MSG_CANCEL:I = 0x3

.field private static final MSG_SERVICE_BOUND:I = 0x2

.field private static final MSG_SHUTDOWN_EXECUTION:I = 0x4

.field private static final MSG_TIMEOUT:I = 0x0

.field private static final OP_TIMEOUT_MILLIS:J = 0x1f40L

.field private static final TAG:Ljava/lang/String; = "JobServiceContext"

.field static final VERB_BINDING:I = 0x0

.field static final VERB_EXECUTING:I = 0x2

.field static final VERB_FINISHED:I = 0x4

.field static final VERB_STARTING:I = 0x1

.field static final VERB_STOPPING:I = 0x3

.field private static final VERB_STRINGS:[Ljava/lang/String;

.field private static final defaultMaxActiveJobsPerService:I


# instance fields
.field private mAvailable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mCompletedListener:Lcom/android/server/job/JobCompletedListener;

.field private final mContext:Landroid/content/Context;

.field private mExecutionStartTimeElapsed:J

.field private final mLock:Ljava/lang/Object;

.field private mParams:Landroid/app/job/JobParameters;

.field private mRunningJob:Lcom/android/server/job/controllers/JobStatus;

.field private mTimeoutElapsed:J

.field mVerb:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field service:Landroid/app/job/IJobService;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput v0, Lcom/android/server/job/JobServiceContext;->defaultMaxActiveJobsPerService:I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "VERB_BINDING"

    aput-object v4, v0, v3

    const-string v3, "VERB_STARTING"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "VERB_EXECUTING"

    aput-object v3, v0, v1

    const-string v1, "VERB_STOPPING"

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, "VERB_FINISHED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobCompletedListener;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p3, "completedListener"    # Lcom/android/server/job/JobCompletedListener;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0}, Landroid/app/job/IJobCallback$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    new-instance v0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    invoke-direct {v0, p0, p4}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;-><init>(Lcom/android/server/job/JobServiceContext;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/internal/app/IBatteryStats;Landroid/os/Looper;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/job/JobServiceContext;-><init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobCompletedListener;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/JobServiceContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .prologue
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOut()V

    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/job/JobServiceContext;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobCompletedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .prologue
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .prologue
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/job/JobServiceContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .prologue
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOut()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .prologue
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/job/JobServiceContext;Landroid/app/job/JobParameters;)Landroid/app/job/JobParameters;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;
    .param p1, "x1"    # Landroid/app/job/JobParameters;

    .prologue
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .prologue
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;
    .param p1, "x1"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/job/JobServiceContext;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .prologue
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/job/JobServiceContext;)Lcom/android/internal/app/IBatteryStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .prologue
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/job/JobServiceContext;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .prologue
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/job/JobServiceContext;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;
    .param p1, "x1"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/job/JobServiceContext;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/JobServiceContext;

    .prologue
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private removeOpTimeOut()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private scheduleOpTimeOut()V
    .locals 6

    .prologue
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOut()V

    iget v1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const-wide/32 v2, 0x927c0

    .local v2, "timeoutMillis":J
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    return-void

    .end local v0    # "m":Landroid/os/Message;
    .end local v2    # "timeoutMillis":J
    :cond_0
    const-wide/16 v2, 0x1f40

    goto :goto_0
.end method

.method private verifyCallingUid()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    if-eq v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public acknowledgeStartMessage(IZ)V
    .locals 3
    .param p1, "jobId"    # I
    .param p2, "ongoing"    # Z

    .prologue
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->verifyCallingUid()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public acknowledgeStopMessage(IZ)V
    .locals 3
    .param p1, "jobId"    # I
    .param p2, "reschedule"    # Z

    .prologue
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->verifyCallingUid()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method cancelExecutingJob()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 10
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-boolean v6, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    if-nez v6, :cond_0

    const-string v4, "JobServiceContext"

    const-string v6, "Starting new runnable but context is unavailable > Error."

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    :goto_0
    return v3

    :cond_0
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    move v2, v4

    .local v2, "isDeadlineExpired":Z
    :goto_1
    new-instance v6, Landroid/app/job/JobParameters;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8, v2}, Landroid/app/job/JobParameters;-><init>(Landroid/os/IBinder;ILandroid/os/PersistableBundle;Z)V

    iput-object v6, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOut()V

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    const/4 v7, 0x5

    new-instance v8, Landroid/os/UserHandle;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v1, p0, v7, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .local v0, "binding":Z
    if-nez v0, :cond_2

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOut()V

    monitor-exit v5

    goto :goto_0

    .end local v0    # "binding":Z
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isDeadlineExpired":Z
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    move v2, v3

    goto :goto_1

    .restart local v0    # "binding":Z
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "isDeadlineExpired":Z
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v7

    invoke-interface {v3, v6, v7}, Lcom/android/internal/app/IBatteryStats;->noteJobStart(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method getExecutionStartTimeElapsed()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    return-wide v0
.end method

.method getRunningJob()Lcom/android/server/job/controllers/JobStatus;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-direct {v0, v2}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTimeoutElapsed()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    return-wide v0
.end method

.method isAvailable()Z
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public jobFinished(IZ)V
    .locals 3
    .param p1, "jobId"    # I
    .param p2, "reschedule"    # Z

    .prologue
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->verifyCallingUid()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .local v1, "runningJob":Lcom/android/server/job/controllers/JobStatus;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    .end local v1    # "runningJob":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v1    # "runningJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    invoke-static {p2}, Landroid/app/job/IJobService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Landroid/os/WorkSource;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
