.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$Led;,
        Lcom/android/server/power/ShutdownThread$Slog;,
        Lcom/android/server/power/ShutdownThread$LogFileWriter;,
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field private static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field private static final BIN_TYPE_PRODUCTSHIP:Z

.field private static final BIN_TYPE_USER:Z

.field private static final BROADCAST_STOP_PERCENT:I = 0x2

.field private static final FORCE_SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.property_forcedshutdown"

.field private static final LedOffValue:I = 0x6

.field private static final LedOnValue:I = 0x6

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_LAST_SHUTDOWNLOG:I = 0x5

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x7530

.field private static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field private static final MINIMODE_SLEEP_TIME:I = 0x12c

.field private static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field private static M_STYLE_CONFIRM:Z = false

.field private static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final POWER_CONNECTED:I = 0x1

.field private static final POWER_DISCONNECTED:I = 0x0

.field private static final POWER_UNKNOWN:I = 0x2

.field private static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REASON_NO_POWER:Ljava/lang/String; = "no power"

.field private static final REASON_SILENT:Ljava/lang/String; = "silent.sec"

.field private static final REBOOT_CHARGERMODE_PROPERTY:Ljava/lang/String; = "ro.rebootchargermode"

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field private static final RMT_SYNC_PROP:Ljava/lang/String; = "storage.efs_sync.done"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final TIMEOUT_EXTENDS_RATIO:I = 0x8

.field private static final TTS_SYSTEM_STEAM_WEIGHT:D = 0.1

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final UNCRYPT_STATUS_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_status"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final WITHOUT_SLEEP:Z = false

.field private static final WITH_SLEEP:Z = true

.field private static coverOpen:Z

.field private static final delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static dlgAnim:Lcom/android/server/power/ShutdownDialog;

.field private static mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private static mOemClassLoader:Ldalvik/system/PathClassLoader;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mRebootUpdate:Z

.field private static mTts:Landroid/speech/tts/TextToSpeech;

.field private static sConfirmDialog:Landroid/app/Dialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsConfirming:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private mActionDoneMount:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private final mActionDoneSyncMount:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v1, "user"

    const-string v4, "ro.build.type"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_USER:Z

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    new-instance v1, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    sput-object v1, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "scafe":Ljava/lang/String;
    const-string v1, "americano"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->M_STYLE_CONFIRM:Z

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    new-instance v1, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$5;-><init>()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-void

    .end local v0    # "scafe":Ljava/lang/String;
    :cond_0
    move v1, v3

    goto :goto_0

    .restart local v0    # "scafe":Ljava/lang/String;
    :cond_1
    move v3, v2

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const-string v0, "ShutdownThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    return-void
.end method

.method public static IsShutDownConfirming()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    return v0
.end method

.method public static IsShutDownStarted()Z
    .locals 2

    .prologue
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_0

    const-string v0, "ShutdownThread"

    const-string v1, "shut down already running , return true"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsStarted()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    return v0
.end method

.method static synthetic access$000()Lcom/samsung/android/cover/CoverManager$StateListener;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    return v0
.end method

.method static synthetic access$1000()Lcom/android/server/power/ShutdownThread;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startShutdownDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->textToSpeech(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/cover/CoverState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->checkCoverOpen(Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$2200()Lcom/android/server/power/ShutdownDialog;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    return-object v0
.end method

.method static synthetic access$2300()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_USER:Z

    return v0
.end method

.method static synthetic access$2400()Landroid/speech/tts/TextToSpeech;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return v0
.end method

.method static synthetic access$400(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Z

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$600()Landroid/app/Dialog;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->M_STYLE_CONFIRM:Z

    return v0
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    return p0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x1

    sget-object v6, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v4, :cond_0

    const-string v4, "ShutdownThread"

    const-string v5, "!@Shutdown sequence already running, returning."

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->startState()V

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->openLogFileWriter()V

    const-string v4, "ShutdownThread"

    const-string v6, "!@beginShutdownSequence"

    invoke-static {v4, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/android/server/power/ShutdownThread;->setInputKeysDisable(Z)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_2

    move v3, v5

    .local v3, "powerofftriggered":I
    :cond_2
    const-string v4, "powerofftriggered"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "isShutDownForRCS"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "powerofftriggered":I
    :cond_4
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v6, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v9, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :try_start_1
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v7, 0x1

    const-string v8, "ShutdownThread-cpu"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v4, "shutdown"

    const-string v6, "1"

    invoke-virtual {v0, v4, v6}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v9, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_5

    :try_start_2
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v7, 0x1a

    const-string v8, "ShutdownThread-screen"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    :goto_2
    const-string v4, "ShutdownThread"

    const-string v6, "!@normal"

    invoke-static {v4, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "recovery"

    sget-object v6, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/io/File;

    const-string v6, "/cache/recovery/uncrypt_file"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    sput-boolean v5, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startRecoveryDialog(Landroid/content/Context;)V

    :goto_3
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->startShutdownThread()V

    goto/16 :goto_0

    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/SecurityException;
    const-string v4, "ShutdownThread"

    const-string v6, "!@No permission to acquire wake lock"

    invoke-static {v4, v6, v1}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v9, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/SecurityException;
    const-string v4, "ShutdownThread"

    const-string v6, "!@No permission to acquire wake lock"

    invoke-static {v4, v6, v1}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v9, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2

    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_6
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startShutdownDialog(Landroid/content/Context;)V

    goto :goto_3
.end method

.method private static blackMiniModeBar(Landroid/content/Context;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0, v4, v4}, Lcom/android/server/power/ShutdownThread;->sendMiniModeUiIntent(Landroid/content/Context;ZZ)V

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ShutdownThread"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method

.method public static canGlobalActionsShow()Z
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownConfirming()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkCoverOpen(Lcom/samsung/android/cover/CoverState;)Z
    .locals 1
    .param p0, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    .local v0, "coverState":Z
    goto :goto_0
.end method

.method private static createBeforeMConfirmDialog(Landroid/content/Context;IILcom/android/server/power/ShutdownThread$CloseDialogReceiver;)Landroid/app/Dialog;
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "titleText"    # I
    .param p2, "bodyText"    # I
    .param p3, "closer"    # Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    .prologue
    const v11, 0x1040009

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v4, 0x2

    .local v4, "coverType":I
    new-instance v2, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .local v2, "coverManager":Lcom/samsung/android/cover/CoverManager;
    if-eqz v2, :cond_0

    sget-object v8, Lcom/android/server/power/ShutdownThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v8}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    .local v3, "coverState":Lcom/samsung/android/cover/CoverState;
    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->checkCoverOpen(Lcom/samsung/android/cover/CoverState;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    .end local v3    # "coverState":Lcom/samsung/android/cover/CoverState;
    :cond_0
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v8, :cond_2

    const v7, 0x10408df

    .local v7, "positiveTextId":I
    :goto_0
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    if-nez v8, :cond_1

    if-ne v4, v9, :cond_4

    :cond_1
    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    if-nez v8, :cond_3

    if-ne v4, v9, :cond_3

    const-string v8, "ShutdownThread"

    const-string v9, "clear type confirm dialog"

    invoke-static {v8, v9}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/app/AlertDialog$Builder;

    const v8, 0x10304e4

    invoke-direct {v6, p0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .local v6, "dlgBuilder":Landroid/app/AlertDialog$Builder;
    :goto_1
    invoke-virtual {v6, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v8, p0}, Lcom/android/server/power/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v8}, Lcom/android/server/power/ShutdownThread$3;-><init>()V

    invoke-virtual {v6, v11, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .local v5, "dlg":Landroid/app/Dialog;
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .end local v6    # "dlgBuilder":Landroid/app/AlertDialog$Builder;
    :goto_2
    return-object v5

    .end local v5    # "dlg":Landroid/app/Dialog;
    .end local v7    # "positiveTextId":I
    :cond_2
    const v7, 0x104010a

    .restart local v7    # "positiveTextId":I
    goto :goto_0

    :cond_3
    new-instance v6, Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x5

    invoke-direct {v6, p0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .restart local v6    # "dlgBuilder":Landroid/app/AlertDialog$Builder;
    goto :goto_1

    .end local v6    # "dlgBuilder":Landroid/app/AlertDialog$Builder;
    :cond_4
    new-instance v6, Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v6, "dlgBuilder":Landroid/app/GlobalActionsSViewCoverDialog$Builder;
    invoke-virtual {v6, p2}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setMessage(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    invoke-virtual {v6, p1}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setTitle(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    new-instance v8, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v8, p0}, Lcom/android/server/power/ShutdownThread$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    invoke-virtual {v6, v11, p3}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    invoke-virtual {v6}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->create()Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v1

    .local v1, "coverDlg":Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x833

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1120014

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    :cond_5
    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "attr":Landroid/view/WindowManager$LayoutParams;
    const/4 v8, 0x1

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1, v10}, Landroid/app/GlobalActionsSViewCoverDialog;->setCanceledOnTouchOutside(Z)V

    move-object v5, v1

    .restart local v5    # "dlg":Landroid/app/Dialog;
    goto :goto_2
.end method

.method private static createConfirmDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e004a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .local v3, "longPressBehavior":I
    const-string v5, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v5, :cond_0

    const v4, 0x1040117

    .local v4, "titleText":I
    :goto_0
    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v5, :cond_2

    const v0, 0x1040118

    .local v0, "bodyText":I
    :goto_1
    new-instance v1, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .local v1, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->M_STYLE_CONFIRM:Z

    if-eqz v5, :cond_9

    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-nez v5, :cond_9

    invoke-static {p0, v4, v0}, Lcom/android/server/power/ShutdownThread;->createMConfirmDialog(Landroid/content/Context;II)Landroid/app/Dialog;

    move-result-object v2

    .local v2, "dlg":Landroid/app/Dialog;
    :goto_2
    iput-object v2, v1, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v2

    .end local v0    # "bodyText":I
    .end local v1    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v2    # "dlg":Landroid/app/Dialog;
    .end local v4    # "titleText":I
    :cond_0
    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v5, :cond_1

    const v4, 0x10408df

    .restart local v4    # "titleText":I
    goto :goto_0

    .end local v4    # "titleText":I
    :cond_1
    const v4, 0x104011f

    .restart local v4    # "titleText":I
    goto :goto_0

    :cond_2
    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->M_STYLE_CONFIRM:Z

    if-eqz v5, :cond_4

    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v5, :cond_3

    const v0, 0x10409cb

    .restart local v0    # "bodyText":I
    goto :goto_1

    .end local v0    # "bodyText":I
    :cond_3
    const v0, 0x10409ca

    .restart local v0    # "bodyText":I
    goto :goto_1

    .end local v0    # "bodyText":I
    :cond_4
    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isTablet()Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "vzw"

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const v0, 0x1040a68

    .restart local v0    # "bodyText":I
    goto :goto_1

    .end local v0    # "bodyText":I
    :cond_5
    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v5, :cond_7

    if-ne v3, v8, :cond_6

    const v0, 0x10408e0

    .restart local v0    # "bodyText":I
    :goto_3
    goto :goto_1

    .end local v0    # "bodyText":I
    :cond_6
    const v0, 0x10408cc

    goto :goto_3

    :cond_7
    if-ne v3, v8, :cond_8

    const v0, 0x1040116

    .restart local v0    # "bodyText":I
    :goto_4
    goto :goto_1

    .end local v0    # "bodyText":I
    :cond_8
    const v0, 0x1040115

    goto :goto_4

    .restart local v0    # "bodyText":I
    .restart local v1    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :cond_9
    invoke-static {p0, v4, v0, v1}, Lcom/android/server/power/ShutdownThread;->createBeforeMConfirmDialog(Landroid/content/Context;IILcom/android/server/power/ShutdownThread$CloseDialogReceiver;)Landroid/app/Dialog;

    move-result-object v2

    .restart local v2    # "dlg":Landroid/app/Dialog;
    goto :goto_2
.end method

.method private static createMConfirmDialog(Landroid/content/Context;II)Landroid/app/Dialog;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "titleText"    # I
    .param p2, "description"    # I

    .prologue
    new-instance v0, Lcom/android/server/power/ShutdownThread$1;

    const v2, 0x1030011

    move-object v1, p0

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/ShutdownThread$1;-><init>(Landroid/content/Context;ILandroid/content/Context;II)V

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread$1;->init()Landroid/app/Dialog;

    move-result-object v6

    .local v6, "dlg":Landroid/app/Dialog;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object v6
.end method

.method private static deviceRebootOrShutdown(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 10
    .param p0, "deviceShutdownClassName"    # Ljava/lang/String;
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    sget-object v6, Lcom/android/server/power/ShutdownThread;->mOemClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v6, p0}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v6, "rebootOrShutdown"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_2
    const-string v4, "ShutdownThread"

    const-string v6, "!@call method fail rebootOrShutdown"

    invoke-static {v4, v6, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    move v4, v5

    goto :goto_0

    .end local v2    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    const-string v4, "ShutdownThread"

    const-string v6, "!@unchecked exception raised"

    invoke-static {v4, v6, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move v4, v5

    goto :goto_0

    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "ShutdownThread"

    const-string v6, "!@can\'t found class"

    invoke-static {v4, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_0

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ShutdownThread"

    const-string v6, "!@unchecked exception raised"

    invoke-static {v4, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_0
.end method

.method private static getReasonforshutdownFileName()Ljava/io/File;
    .locals 12

    .prologue
    const/16 v11, 0x1b0

    const/4 v10, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/log/power_off_reset_reason.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .local v2, "logFilename":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/log/power_off_reset_reason_backup.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .local v1, "logBackupFileName":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "fname":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x2800

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "mBackupfname":Ljava/io/File;
    const-string v5, "ShutdownThread"

    const-string v6, "The size of power_off_reset_reason.txt is over than 10KB. Rename to power_off_reset_reason_backup.txt for backup."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "ShutdownThread"

    const-string v6, "power_off_reset_reason_backup.txt file is already exist. So, delete it."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "ShutdownThread"

    const-string v6, "power_off_reset_reason_backup.txt delete fail"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "fname":Ljava/io/File;
    .end local v3    # "mBackupfname":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "fname":Ljava/io/File;
    .restart local v3    # "mBackupfname":Ljava/io/File;
    :cond_1
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "ShutdownThread"

    const-string v6, "rename to power_off_reset_reason_backup.txt"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "new_fname":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    const-string v5, "ShutdownThread"

    const-string v6, "power_off_reset_reason.txt is re-created."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    goto :goto_0

    .end local v4    # "new_fname":Ljava/io/File;
    :cond_2
    const-string v5, "ShutdownThread"

    const-string v6, "rename to power_off_reset_reason_backup.txt fail"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPoweredPlugged()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "f":Landroid/content/IntentFilter;
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .local v1, "i":Landroid/content/Intent;
    const-string v4, "plugged"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, "state":I
    if-ne v2, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isTablet()Z
    .locals 2

    .prologue
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x3a

    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v7, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x3a

    invoke-direct {v7, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .local v7, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enabled_accessibility_services"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "enabledServicesSetting":Ljava/lang/String;
    if-nez v6, :cond_0

    const-string v6, ""

    :cond_0
    move-object v2, v7

    .local v2, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .local v3, "componentNameString":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .local v5, "enabledService":Landroid/content/ComponentName;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .local v4, "enabledPackage":Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v8, "com.google.android.marvin.talkback"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    .end local v3    # "componentNameString":Ljava/lang/String;
    .end local v4    # "enabledPackage":Ljava/lang/String;
    .end local v5    # "enabledService":Landroid/content/ComponentName;
    :goto_0
    return v8

    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private static needQcOemShutdown()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "ro.chipname"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "currentChip":Ljava/lang/String;
    const/4 v8, 0x3

    new-array v5, v8, [Ljava/lang/String;

    const-string v8, "8996"

    aput-object v8, v5, v6

    const-string v8, "8084"

    aput-object v8, v5, v7

    const/4 v8, 0x2

    const-string v9, "exynos"

    aput-object v9, v5, v8

    .local v5, "skipList":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .local v1, "chip":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .end local v1    # "chip":Ljava/lang/String;
    :goto_1
    return v6

    .restart local v1    # "chip":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "chip":Ljava/lang/String;
    :cond_1
    new-instance v6, Ldalvik/system/PathClassLoader;

    const-string v8, "/system/framework/oem-services.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v6, Lcom/android/server/power/ShutdownThread;->mOemClassLoader:Ldalvik/system/PathClassLoader;

    move v6, v7

    goto :goto_1
.end method

.method private static needSyncQcRmtStorage()Z
    .locals 4

    .prologue
    const-string v2, "ro.hardware"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "propHwNameValue":Ljava/lang/String;
    const-string v2, "qcom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "storage.efs_sync.done"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "status":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .end local v1    # "status":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static readSalesCode()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, ""

    .local v0, "sales_code":Ljava/lang/String;
    :try_start_0
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reboot reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {p0, p2, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const-string v5, "ShutdownThread"

    const-string v6, "!@call oem shutdown..."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ro.baseband"

    const-string v6, "unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "baseband":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->needSyncQcRmtStorage()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->syncQcRmtStorage()V

    :cond_0
    const-string v1, "com.android.server.power.ShutdownOem"

    .local v1, "className":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->needQcOemShutdown()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1, p1, p2}, Lcom/android/server/power/ShutdownThread;->deviceRebootOrShutdown(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v1, "com.qti.server.power.ShutdownOem"

    invoke-static {v1, p1, p2}, Lcom/android/server/power/ShutdownThread;->deviceRebootOrShutdown(Ljava/lang/String;ZLjava/lang/String;)Z

    :cond_1
    const-string v5, "ShutdownThread"

    const-string v6, "waitForAnimEnd"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/android/server/power/ShutdownDialog;->waitForAnimEnd(I)Z

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "!@"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v3, "reasonLogString":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_4

    const-string v5, "reboot : "

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_5

    const-string v5, "null"

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ShutdownThread"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->waitIfTimeoutDumpWorking()V

    if-eqz p1, :cond_6

    const-string v5, "poweroff_sound=suspend"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->closeLogFileWriter()V

    :try_start_0
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    const-string v5, "ShutdownThread"

    const-string v6, "!@Performing low-level shutdown..."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->closeLogFileWriter()V

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    return-void

    :cond_4
    const-string v5, "shutdown : "

    goto :goto_0

    :cond_5
    move-object v5, p2

    goto :goto_1

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "ShutdownThread"

    const-string v6, "!@Reboot failed, will attempt shutdown instead"

    invoke-static {v5, v6, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    if-eqz p0, :cond_3

    new-instance v4, Landroid/os/SystemVibrator;

    invoke-direct {v4, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    .local v4, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v6, 0x1f4

    :try_start_1
    sget-object v5, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v4, v6, v7, v5}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    const-wide/16 v6, 0x1f4

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    goto :goto_2

    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v5, "ShutdownThread"

    const-string v6, "!@Failed to vibrate during shutdown."

    invoke-static {v5, v6, v2}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_3
.end method

.method public static rebootSafeMode(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "enterprise_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isSafeModeAllowed()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ShutdownThread"

    const-string v2, "SAFE MODE is not allowed"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reboot safe reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", confirm : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p2, v1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static restoreMiniModeBarAndSleep(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sleep"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-static {p0, v1, v1}, Lcom/android/server/power/ShutdownThread;->sendMiniModeUiIntent(Landroid/content/Context;ZZ)V

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ShutdownThread"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method

.method public static saveReasonforshutdown(Ljava/lang/Exception;)V
    .locals 10
    .param p0, "ex"    # Ljava/lang/Exception;

    .prologue
    const-string v7, "ShutdownThread"

    const-string v8, "ShutdownThread.saveReasonforshutdown"

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getReasonforshutdownFileName()Ljava/io/File;

    move-result-object v2

    .local v2, "fname":Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v5, v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .local v6, "pw":Ljava/io/PrintWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "yy/MM/dd HH:mm:ss"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .local v0, "dateString":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .end local v0    # "dateString":Ljava/lang/String;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "dateString":Ljava/lang/String;
    .restart local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v0    # "dateString":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v6    # "pw":Ljava/io/PrintWriter;
    :catch_1
    move-exception v7

    :goto_1
    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_3
    throw v7

    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "dateString":Ljava/lang/String;
    .restart local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    :cond_2
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private static sendMiniModeUiIntent(Landroid/content/Context;ZZ)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "suppressCoverUI"    # Z
    .param p2, "miniModeUI"    # Z

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "sender"

    const-string v2, "ShutdownThread"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static setInputKeysDisable(Z)V
    .locals 5
    .param p0, "bool"    # Z

    .prologue
    const-string v2, "input"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    .local v1, "im":Landroid/hardware/input/IInputManager;
    if-nez v1, :cond_0

    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServiceManager.checkService fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStartedShutdown to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, p0}, Landroid/hardware/input/IInputManager;->setStartedShutdown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "error occur while input disable"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$9;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    invoke-static {p0, p1, v0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static shutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    sput-object p2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    return-void
.end method

.method static shutdownInner(Landroid/content/Context;ZZ)V
    .locals 8
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "confirm"    # Z
    .param p2, "systemRequest"    # Z

    .prologue
    const/4 v7, 0x0

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v4, :cond_1

    const-string v4, "ShutdownThread"

    const-string v6, "!@Request to shutdown already running, returning."

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    const-string v4, "ShutdownThread"

    const-string v6, "!@duplicate shutdown confirm dialog request."

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v4, :cond_4

    :cond_3
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v3

    .local v3, "rp":Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v3, :cond_4

    if-nez p2, :cond_4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/sec/enterprise/RestrictionPolicy;->isPowerOffAllowed(Z)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "ShutdownThread"

    const-string v6, "Shutdown Disabled by Administrator"

    invoke-static {v4, v6}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5

    goto :goto_0

    .end local v3    # "rp":Landroid/sec/enterprise/RestrictionPolicy;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catch_0
    move-exception v4

    :cond_4
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v4, 0x103012b

    invoke-direct {v0, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .local v0, "context":Landroid/content/Context;
    new-instance v2, Ljava/lang/Exception;

    const-string v4, "It is not an exception!! just save the trace for process which called shutdown thread!! ShutdownThread.shutdown"

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->saveReasonforshutdown(Ljava/lang/Exception;)V

    if-eqz p1, :cond_6

    const-string v4, "silent.sec"

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "ShutdownThread"

    const-string v5, "!@########POWEROFF START WITH CONFIRM######"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    :cond_5
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->createConfirmDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v4

    sput-object v4, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    if-nez v4, :cond_0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->blackMiniModeBar(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_6
    const-wide/16 v4, 0x32

    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_1
    const-string v4, "ShutdownThread"

    const-string v5, "!@########POWEROFF START WITHOUT CONFIRM######"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v7}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v4, "ShutdownThread"

    const-string v5, "InterruptedException"

    invoke-static {v4, v5, v1}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_1
.end method

.method private shutdownRadios(I)V
    .locals 12
    .param p1, "timeout"    # I

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v10, p1

    add-long v4, v8, v10

    .local v4, "endTime":J
    const/4 v0, 0x1

    new-array v7, v0, [Z

    .local v7, "done":[Z
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .local v3, "mWifiManager":Landroid/net/wifi/WifiManager;
    new-instance v1, Lcom/android/server/power/ShutdownThread$12;

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/ShutdownThread$12;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;JI[Z)V

    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    int-to-long v8, p1

    :try_start_0
    invoke-virtual {v1, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    aget-boolean v0, v7, v0

    if-nez v0, :cond_0

    const-string v0, "ShutdownThread"

    const-string v2, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static startGoogleShutdownDialog(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .local v0, "pd":Landroid/app/ProgressDialog;
    const v1, 0x104010a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x1040114

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private static startRecoveryDialog(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .local v0, "pd":Landroid/app/ProgressDialog;
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v1, :cond_0

    const v1, 0x104010e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x104010f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    invoke-static {p0, v3}, Lcom/android/server/power/ShutdownThreadInjector;->showShutdownDialog(Landroid/content/Context;Z)V

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v0, v1, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void

    :cond_0
    const v1, 0x1040112

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x1040113

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0
.end method

.method private startShutdownDialog()V
    .locals 4

    .prologue
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .local v0, "continueSignal":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v3, p0, v0}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v2, "ShutdownThread"

    const-string v3, "ShutdownDialog start wait"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "ShutdownThread"

    const-string v3, "ShutdownDialog start wait fail"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static startShutdownDialog(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    new-instance v1, Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const-string v1, "ShutdownThread"

    const-string v2, "Shutdown animation will start"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/LibQmg;->checkSupportQmg()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownDialog;->existAnim()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const-string v1, "silent.sec"

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/ShutdownDialog;->setSilentShutdown(Z)V

    :cond_0
    sget-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownDialog;->prepareShutdown()V

    sget-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownDialog;->show()V

    :goto_0
    const/4 v0, 0x0

    .local v0, "dualScreenContext":Landroid/content/Context;
    sget-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v1}, Lcom/android/server/power/ShutdownDialog;->show()V

    :cond_1
    return-void

    .end local v0    # "dualScreenContext":Landroid/content/Context;
    :cond_2
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startGoogleShutdownDialog(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static startShutdownThread()V
    .locals 6

    .prologue
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v1, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$7;-><init>()V

    iput-object v1, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread;->start()V

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "ShutdownThread"

    const-string v5, "Android will be shutdown"

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$8;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$8;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static syncQcRmtStorage()V
    .locals 6

    .prologue
    const/16 v0, 0x64

    .local v0, "SLEEP_SIZE":I
    const-string v3, "storage.efs_sync.done"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "status":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x1e

    if-ge v1, v3, :cond_0

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@rmtStorage sync not yet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit8 v5, v1, 0x64

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v3, "storage.efs_sync.done"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_0
    return-void
.end method

.method public static systemShutdown(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method private static textToSpeech(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "am":Landroid/media/AudioManager;
    const/16 v6, 0x11

    new-array v3, v6, [D

    fill-array-data v3, :array_0

    .local v3, "volumetable":[D
    if-eqz v0, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .local v2, "systemVolume":I
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .local v1, "musicVolume":I
    const/16 v6, 0xf

    if-le v1, v6, :cond_0

    const/16 v1, 0xf

    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .end local v1    # "musicVolume":I
    .end local v2    # "systemVolume":I
    .local v4, "ttsVolume":D
    :goto_0
    new-instance v6, Landroid/speech/tts/TextToSpeech;

    new-instance v7, Lcom/android/server/power/ShutdownThread$14;

    invoke-direct {v7, v4, v5, p1}, Lcom/android/server/power/ShutdownThread$14;-><init>(DLjava/lang/String;)V

    invoke-direct {v6, p0, v7}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v6, Lcom/android/server/power/ShutdownThread;->mTts:Landroid/speech/tts/TextToSpeech;

    return-void

    .end local v4    # "ttsVolume":D
    :cond_1
    const-wide/16 v4, 0x0

    .restart local v4    # "ttsVolume":D
    goto :goto_0

    nop

    :array_0
    .array-data 8
        0x0
        0x3f7cac083126e979L    # 0.007
        0x3f847ae147ae147bL    # 0.01
        0x3f916872b020c49cL    # 0.017
        0x3f9999999999999aL    # 0.025
        0x3f9eb851eb851eb8L    # 0.03
        0x3fa1eb851eb851ecL    # 0.035
        0x3fa810624dd2f1aaL    # 0.047
        0x3faeb851eb851eb8L    # 0.06
        0x3fb4395810624dd3L    # 0.079
        0x3fb999999999999aL    # 0.1
        0x3fc0a3d70a3d70a4L    # 0.13
        0x3fc47ae147ae147bL    # 0.16
        0x3fd3333333333333L    # 0.3
        0x3fe6666666666666L    # 0.7
        0x0
        0x401c000000000000L    # 7.0
    .end array-data
.end method

.method private uncrypt()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v4, "ShutdownThread"

    const-string v5, "Calling uncrypt and monitoring the progress..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    new-array v0, v4, [Z

    .local v0, "done":[Z
    aput-boolean v6, v0, v6

    new-instance v2, Lcom/android/server/power/ShutdownThread$13;

    invoke-direct {v2, p0, v0}, Lcom/android/server/power/ShutdownThread$13;-><init>(Lcom/android/server/power/ShutdownThread;[Z)V

    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const-wide/32 v4, 0xdbba0

    :try_start_0
    invoke-virtual {v2, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    aget-boolean v4, v0, v6

    if-nez v4, :cond_0

    const-string v4, "ShutdownThread"

    const-string v5, "Timed out waiting for uncrypt."

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v4, "ShutdownThread"

    const-string v5, "uncrypt finished."

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const v5, 0x1040111

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "msg":Ljava/lang/CharSequence;
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v5, 0x64

    invoke-direct {v4, v5, v1}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-direct {v4}, Lcom/android/server/power/ShutdownThread;->startShutdownDialog()V

    return-void

    .end local v1    # "msg":Ljava/lang/CharSequence;
    :catch_0
    move-exception v3

    .local v3, "unused":Ljava/lang/InterruptedException;
    const-string v4, "ShutdownThread"

    const-string v5, "Thread join error"

    invoke-static {v4, v5, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method

.method private static waitIfTimeoutDumpWorking()V
    .locals 5

    .prologue
    :try_start_0
    sget-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ShutdownThread"

    const-string v2, "!@Wait for dumpstate"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ShutdownThread"

    const-string v2, "!@Dumpstate finished "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_1
    const-string v1, "ShutdownThread"

    const-string v2, "!@Dumpstate timeouted!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "ShutdownThread"

    const-string v2, "delayDumpLock TryLock"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v1, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method actionDoneMount()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 30

    .prologue
    # invokes: Lcom/android/server/power/ShutdownThread$Led;->On()V
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Led;->access$1500()V

    new-instance v6, Lcom/android/server/power/ShutdownThread$10;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$10;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .local v6, "br":Landroid/content/BroadcastReceiver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_9

    const-string v2, "1"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_a

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .local v24, "reason":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x5b

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    const-string v2, "sys.shutdown.requested"

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_0

    const-string v2, "persist.sys.safemode"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "ShutdownThread"

    const-string v4, "!@Sending shutdown broadcast..."

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    if-nez v2, :cond_1

    const-string v2, "no power"

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v18, v4, v8

    .local v18, "endTime":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v12, v18, v8

    .local v12, "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v12, v8

    if-gtz v2, :cond_c

    const-string v2, "ShutdownThread"

    const-string v5, "!@Shutdown broadcast timed out"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v12    # "delay":J
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_3
    const-string v2, "ShutdownThread"

    const-string v4, "!@Shutting down activity manager..."

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .local v11, "am":Landroid/app/IActivityManager;
    if-eqz v11, :cond_4

    const/16 v2, 0x2710

    :try_start_1
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_4
    :goto_4
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_5
    const-string v2, "ShutdownThread"

    const-string v4, "Shutting down package manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    check-cast v22, Lcom/android/server/pm/PackageManagerService;

    .local v22, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v22, :cond_6

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    :cond_6
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_7
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    :cond_8
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z

    if-nez v2, :cond_e

    new-instance v15, Ljava/io/File;

    const-string v2, "/proc/sysrq-trigger"

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v15, "f":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "ShutdownThread"

    const-string v4, "!@/proc/sysrq-trigger not exists!"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .end local v15    # "f":Ljava/io/File;
    :goto_5
    return-void

    .end local v3    # "intent":Landroid/content/Intent;
    .end local v11    # "am":Landroid/app/IActivityManager;
    .end local v18    # "endTime":J
    .end local v22    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v24    # "reason":Ljava/lang/String;
    :cond_9
    const-string v2, "0"

    goto/16 :goto_0

    :cond_a
    const-string v2, ""

    goto/16 :goto_1

    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v24    # "reason":Ljava/lang/String;
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v8, 0x13880

    add-long v18, v4, v8

    .restart local v18    # "endTime":J
    goto/16 :goto_2

    .restart local v12    # "delay":J
    :cond_c
    :try_start_2
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_d

    const-wide/16 v8, 0x2710

    sub-long/2addr v8, v12

    long-to-double v8, v8

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v28

    const-wide v28, 0x40c3880000000000L    # 10000.0

    div-double v8, v8, v28

    double-to-int v0, v8

    move/from16 v27, v0

    .local v27, "status":I
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v27

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v27    # "status":I
    :cond_d
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    goto/16 :goto_3

    .end local v12    # "delay":J
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .restart local v11    # "am":Landroid/app/IActivityManager;
    .restart local v22    # "pm":Lcom/android/server/pm/PackageManagerService;
    :cond_e
    new-instance v21, Lcom/android/server/power/ShutdownThread$11;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$11;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .local v21, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v4, "!@Shutting down MountService"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x7530

    add-long v16, v4, v8

    .local v16, "endShutTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_5
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v20

    .local v20, "mount":Landroid/os/storage/IMountService;
    new-instance v15, Ljava/io/File;

    const-string v2, "/proc/sysrq-trigger"

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v15    # "f":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "ShutdownThread"

    const-string v5, "!@MountService shutdown skip"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v15    # "f":Ljava/io/File;
    .end local v20    # "mount":Landroid/os/storage/IMountService;
    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z

    if-nez v2, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v12, v16, v8

    .restart local v12    # "delay":J
    const-string v2, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@MountService delay : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", systemTime : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    cmp-long v2, v12, v8

    if-gtz v2, :cond_15

    const-string v2, "ShutdownThread"

    const-string v5, "!@Shutdown wait timed out"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v12    # "delay":J
    :cond_f
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_10

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    :cond_10
    const-string v2, "ro.rebootchargermode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .local v26, "sRebootCharger":Ljava/lang/String;
    const-string v2, "sys.property_forcedshutdown"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .local v25, "sForcedShutdown":Ljava/lang/String;
    const-string v2, "ShutdownThread"

    const-string v4, "!@Check power connected"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->isPoweredPlugged()Z

    move-result v23

    .local v23, "powerConnected":Z
    const-string v2, "true"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v2, :cond_11

    const-string v2, "1"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    if-eqz v23, :cond_11

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    const-string v2, "charging"

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :cond_11
    const-string v2, "mrvl"

    const-string v4, "ro.board.platform"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "power_off=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_12
    const-string v4, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@ run, "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_16

    const-string v2, "reboot"

    :goto_7
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " requested "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "reason="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_17

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_8
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    goto/16 :goto_5

    .end local v23    # "powerConnected":Z
    .end local v25    # "sForcedShutdown":Ljava/lang/String;
    .end local v26    # "sRebootCharger":Ljava/lang/String;
    .restart local v15    # "f":Ljava/io/File;
    .restart local v20    # "mount":Landroid/os/storage/IMountService;
    :cond_13
    if-eqz v20, :cond_14

    :try_start_7
    invoke-interface/range {v20 .. v21}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_6

    .end local v15    # "f":Ljava/io/File;
    .end local v20    # "mount":Landroid/os/storage/IMountService;
    :catch_1
    move-exception v14

    .local v14, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v2, "ShutdownThread"

    const-string v5, "!@Exception during MountService shutdown"

    invoke-static {v2, v5, v14}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_6

    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .restart local v15    # "f":Ljava/io/File;
    .restart local v20    # "mount":Landroid/os/storage/IMountService;
    :cond_14
    :try_start_9
    const-string v2, "ShutdownThread"

    const-string v5, "!@MountService unavailable for shutdown"

    invoke-static {v2, v5}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_6

    .end local v15    # "f":Ljava/io/File;
    .end local v20    # "mount":Landroid/os/storage/IMountService;
    .restart local v12    # "delay":J
    :cond_15
    const-wide/16 v8, 0x7530

    sub-long/2addr v8, v12

    long-to-double v8, v8

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v28

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v28

    const-wide v28, 0x40dd4c0000000000L    # 30000.0

    div-double v8, v8, v28

    double-to-int v0, v8

    move/from16 v27, v0

    .restart local v27    # "status":I
    add-int/lit8 v27, v27, 0x12

    :try_start_a
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v27

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_6

    :catch_2
    move-exception v14

    .local v14, "e":Ljava/lang/InterruptedException;
    :try_start_c
    invoke-virtual {v14}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_6

    .end local v12    # "delay":J
    .end local v14    # "e":Ljava/lang/InterruptedException;
    .end local v27    # "status":I
    .restart local v23    # "powerConnected":Z
    .restart local v25    # "sForcedShutdown":Ljava/lang/String;
    .restart local v26    # "sRebootCharger":Ljava/lang/String;
    :cond_16
    const-string v2, "shutdown"

    goto/16 :goto_7

    :cond_17
    const-string v2, "null"

    goto :goto_8

    .end local v16    # "endShutTime":J
    .end local v21    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v22    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v23    # "powerConnected":Z
    .end local v25    # "sForcedShutdown":Ljava/lang/String;
    .end local v26    # "sRebootCharger":Ljava/lang/String;
    :catch_3
    move-exception v2

    goto/16 :goto_4
.end method
