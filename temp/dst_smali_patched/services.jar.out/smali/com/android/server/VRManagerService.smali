.class public Lcom/android/server/VRManagerService;
.super Lcom/android/internal/app/IVRManagerService$Stub;
.source "VRManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VRManagerService$VRRecord;,
        Lcom/android/server/VRManagerService$DeviceEventHandler;
    }
.end annotation


# static fields
.field public static final ACTION_HMT_CONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_CONNECTED"

.field public static final ACTION_HMT_DISCONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_DISCONNECTED"

.field public static final ACTION_HMT_MOUNT:Ljava/lang/String; = "com.samsung.intent.action.HMT_MOUNT"

.field public static final ACTION_HMT_SENSOR_BOOTING_WITHOUT_TA:Ljava/lang/String; = "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITHOUT_TA"

.field public static final ACTION_HMT_SENSOR_BOOTING_WITH_TA:Ljava/lang/String; = "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITH_TA"

.field public static final ACTION_HMT_SENSOR_CONNECTED_TA:Ljava/lang/String; = "com.samsung.intent.action.HMT_SENSOR_CONNECTED_TA"

.field public static final ACTION_HMT_UNMOUNT:Ljava/lang/String; = "com.samsung.intent.action.HMT_UNMOUNT"

.field private static final EPEN_INPUT_ENABLED_PATH:Ljava/lang/String; = "/sys/class/sec/sec_epen/input/enabled"

.field private static final MESSAGE_DEVICE_EVENT:I = 0x1

.field private static final MESSAGE_UNBIND_VR_SERVICE:I = 0x0

.field private static final SCHED_RESET_ON_FORK:I = 0x40000000

.field private static final TAG:Ljava/lang/String; = "VRManagerService"

.field private static final TOUCHKEY_INPUT_ENABLED_PATH:Ljava/lang/String; = "/sys/class/sec/sec_touchkey/input/enabled"

.field private static final TSP_INPUT_ENABLED_PATH:Ljava/lang/String; = "/sys/class/sec/tsp/input/enabled"

.field private static final VR_UNDOCK_TIMEOUT:I = 0xea60


# instance fields
.field private mAfControl:Landroid/sec/performance/AffinityControl;

.field private mContext:Landroid/content/Context;

.field private mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

.field private mDeviceEventLooper:Landroid/os/Looper;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerLock:Ljava/lang/Object;

.field private mLock:Ljava/lang/Object;

.field private mVRRecord:Lcom/android/server/VRManagerService$VRRecord;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/IVRManagerService$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mHandlerLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    new-instance v0, Lcom/android/server/VRManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/VRManagerService$1;-><init>(Lcom/android/server/VRManagerService;)V

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;

    const-string v0, "VRManagerService"

    const-string v1, "---- VRManagerService Constructor ----"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VRManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VRManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/VRManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VRManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->stopVR()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/VRManagerService;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VRManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VRManagerService;->handleDeviceEventChanged(III)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/VRManagerService;)Lcom/android/server/VRManagerService$VRRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VRManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/VRManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VRManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelInit()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    if-eqz v0, :cond_0

    const-string v0, "VRManagerService"

    const-string v2, "cancelInit() mDeviceEventHandler"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/VRManagerService$DeviceEventHandler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    :goto_0
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mDeviceEventLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    const-string v0, "VRManagerService"

    const-string v2, "cancelInit() mDeviceEventLooper"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/VRManagerService;->mDeviceEventLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mDeviceEventLooper:Landroid/os/Looper;

    :goto_1
    monitor-exit v1

    return-void

    :cond_0
    const-string v0, "VRManagerService"

    const-string v2, "mDeviceEventHandler=null ignored."

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    const-string v0, "VRManagerService"

    const-string v2, "mDeviceEventLooper=null ignored."

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private getService()Lcom/android/internal/app/IVRManagerService;
    .locals 3

    .prologue
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v1}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/IVRManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/VRManagerService;->stopVR()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/VRManagerService;->startVR()V

    :cond_1
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    if-nez v1, :cond_2

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    invoke-virtual {v1}, Lcom/android/server/VRManagerService$VRRecord;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private handleDeviceEventChanged(III)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    const-string v2, "handleDeviceEventChanged"

    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(IILjava/lang/String;)V

    const-string v2, "VRManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDeviceEventChanged event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->notifyDeviceEventChanged(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VRManagerService;->handleDeviceEventChangedForFactory(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private handleDeviceEventChangedForFactory(I)V
    .locals 6
    .param p1, "event"    # I

    .prologue
    const/high16 v5, 0x20000000

    const/high16 v4, 0x40000000    # 2.0f

    const-string v1, "VRManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDeviceEventChangedForFactory  event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.DOCK_STATE"

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.DOCK_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.DOCK_STATE"

    const/16 v2, 0x6a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.HMT_MOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.HMT_UNMOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_6

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITHOUT_TA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_6
    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_7

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITH_TA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_7
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.HMT_SENSOR_CONNECTED_TA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private isSystemEPenEnabled()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "isSystemEPenEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_epen/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_epen/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const-string v1, "VRManagerService"

    const-string v3, "isSystemEPenEnabled() Unable to find /sys/class/sec/sec_epen/input/enabled file"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isSystemTouchKeyEnabled()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "isSystemTouchKeyEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_touchkey/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_touchkey/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const-string v1, "VRManagerService"

    const-string v3, "isSystemTouchKeyEnabled() Unable to find /sys/class/sec/sec_touchkey/input/enabled file"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isSystemTouchSceenPanelEnabled()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "isSystemTouchSceenPanelEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/tsp/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/tsp/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const-string v1, "VRManagerService"

    const-string v3, "isSystemTouchSceenPanelEnabled() Unable to find /sys/class/sec/tsp/input/enabled file"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private requestInit()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    if-nez v1, :cond_0

    const-string v1, "VRManagerService"

    const-string v3, "requestInit()"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HMT VR DeviceEvent Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/VRManagerService;->mDeviceEventLooper:Landroid/os/Looper;

    iget-object v1, p0, Lcom/android/server/VRManagerService;->mDeviceEventLooper:Landroid/os/Looper;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/server/VRManagerService$DeviceEventHandler;

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mDeviceEventLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v3}, Lcom/android/server/VRManagerService$DeviceEventHandler;-><init>(Lcom/android/server/VRManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .restart local v0    # "thread":Landroid/os/HandlerThread;
    :cond_1
    const-string v1, "VRManagerService"

    const-string v3, "mSensorLooper is null! ignored!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "thread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private scheduleThreadFIFO(Ljava/lang/String;III)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "prio"    # I

    .prologue
    const-string v2, "scheduleThreadFIFO"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "result":Z
    const-string v2, "VRManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---- elevateProcessThread \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' requestPriority(pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", prio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    :try_start_0
    invoke-static {p3, v2}, Landroid/os/Process;->setThreadGroup(II)V

    const v2, 0x40000001    # 2.0000002f

    invoke-static {p3, v2, p4}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "VRManagerService"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scheduleThreadOTHER(Ljava/lang/String;III)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "prio"    # I

    .prologue
    const-string v2, "scheduleThreadOTHER"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "result":Z
    const-string v2, "VRManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---- demoteProcessThread \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' requestPriority(pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", prio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    :try_start_0
    invoke-static {p3, v2}, Landroid/os/Process;->setThreadGroup(II)V

    const/4 v2, 0x0

    invoke-static {p3, v2, p4}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "VRManagerService"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSystemEPenEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const-string v1, "setSystemEPenEnabled"

    invoke-virtual {p0, v1}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/sec_epen/input/enabled"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "/sys/class/sec/sec_epen/input/enabled"

    if-eqz p1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v1, "0"

    goto :goto_0

    :cond_1
    const-string v1, "VRManagerService"

    const-string v2, "setSystemEPenEnabled() Unable to find /sys/class/sec/sec_epen/input/enabled file"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setSystemMouseControlType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const-string v1, "setSystemMouseControlType"

    invoke-virtual {p0, v1}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    .local v0, "inputManagerInternal":Landroid/hardware/input/InputManagerInternal;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerInternal;->setMouseControlType(I)V

    :cond_0
    return-void
.end method

.method private setSystemShowMouseEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const-string v1, "setSystemShowMouseEnabled"

    invoke-virtual {p0, v1}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    .local v0, "inputManagerInternal":Landroid/hardware/input/InputManagerInternal;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerInternal;->setMouseCursorVisibility(Z)V

    :cond_0
    return-void
.end method

.method private setSystemTouchKeyEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const-string v1, "setSystemTouchKeyEnabled"

    invoke-virtual {p0, v1}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/sec_touchkey/input/enabled"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "/sys/class/sec/sec_touchkey/input/enabled"

    if-eqz p1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v1, "0"

    goto :goto_0

    :cond_1
    const-string v1, "VRManagerService"

    const-string v2, "setSystemTouchKeyEnabled() Unable to find /sys/class/sec/sec_touchkey/input/enabled file"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setSystemTouchSceenPanelEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const-string v1, "setSystemTouchSceenPanelEnabled"

    invoke-virtual {p0, v1}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/tsp/input/enabled"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "/sys/class/sec/tsp/input/enabled"

    if-eqz p1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v1, "0"

    goto :goto_0

    :cond_1
    const-string v1, "VRManagerService"

    const-string v2, "setSystemTouchSceenPanelEnabled() Unable to find /sys/class/sec/tsp/input/enabled file"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startVR()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const-string v6, "VRManagerService"

    const-string v7, "startVR()"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/VRManagerService;->ensureNotOnMainThread(Landroid/content/Context;)V

    new-instance v5, Lcom/android/server/VRManagerService$VRRecord;

    invoke-direct {v5, p0, v9}, Lcom/android/server/VRManagerService$VRRecord;-><init>(Lcom/android/server/VRManagerService;Lcom/android/server/VRManagerService$1;)V

    .local v5, "vrRecord":Lcom/android/server/VRManagerService$VRRecord;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "ident":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android"

    const-string v8, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .local v4, "result":I
    if-nez v4, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "com.samsung.android.hmt.vrsvc"

    const-string v7, "com.samsung.android.hmt.vrsvc.system.VRSystemService"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v5, v7, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/server/VRManagerService$VRRecord;->mBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-boolean v6, v5, Lcom/android/server/VRManagerService$VRRecord;->mBound:Z

    if-nez v6, :cond_1

    const-string v6, "VRManagerService"

    const-string v7, "startVR() Unable to bind VRSystemService"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v9, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    :goto_1
    return-void

    :cond_0
    :try_start_1
    const-string v6, "VRManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startVR() check signatures failed. result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v4    # "result":I
    :catchall_0
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .restart local v4    # "result":I
    :cond_1
    const-string v6, "VRManagerService"

    const-string v7, "startVR() Take iVRManagerService... start"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-object v6, v5, Lcom/android/server/VRManagerService$VRRecord;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/IVRManagerService;

    # setter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v5, v6}, Lcom/android/server/VRManagerService$VRRecord;->access$402(Lcom/android/server/VRManagerService$VRRecord;Lcom/android/internal/app/IVRManagerService;)Lcom/android/internal/app/IVRManagerService;

    const-string v6, "VRManagerService"

    const-string v7, "startVR() Take iVRManagerService... ok!"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v5}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/app/IVRManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v5, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    const-string v6, "VRManagerService"

    const-string v7, "The VRConnection died unexpectedly."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/VRManagerService;->stopVR()V

    goto :goto_1
.end method

.method private stopVR()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    if-nez v0, :cond_1

    const-string v0, "VRManagerService"

    const-string v1, "stopVR() already stopped."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "VRManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopVR() mBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-boolean v2, v2, Lcom/android/server/VRManagerService$VRRecord;->mBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-boolean v2, v2, Lcom/android/server/VRManagerService$VRRecord;->mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " iVRManagerService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v2}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/VRManagerService;->cancelInit()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v0}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v0}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IVRManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v0, v1}, Lcom/android/server/VRManagerService$VRRecord;->access$402(Lcom/android/server/VRManagerService$VRRecord;Lcom/android/internal/app/IVRManagerService;)Lcom/android/internal/app/IVRManagerService;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-boolean v0, v0, Lcom/android/server/VRManagerService$VRRecord;->mBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v3, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public GetPowerLevelState()I
    .locals 4

    .prologue
    const-string v3, "GetPowerLevelState"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    const/4 v1, -0x1

    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->GetPowerLevelState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public SetVrClocks(Ljava/lang/String;II)[I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cpu"    # I
    .param p3, "gpu"    # I

    .prologue
    const/4 v4, 0x0

    const-string v3, "SetVrClocks"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    .local v1, "result":[I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->SetVrClocks(Ljava/lang/String;II)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    return-object v1

    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump VRManagerService(system_process) from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "VR MANAGER (dumpsys vr)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.mBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-boolean v3, v3, Lcom/android/server/VRManagerService$VRRecord;->mBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.mConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-boolean v3, v3, Lcom/android/server/VRManagerService$VRRecord;->mConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.q.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-object v3, v3, Lcom/android/server/VRManagerService$VRRecord;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.iVRManagerService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v3}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->mBinder:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/VRManagerService$VRRecord;->access$700(Lcom/android/server/VRManagerService$VRRecord;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    invoke-interface {v0, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.mBinder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v2, "  mVRRecord.mBinder=null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_2
    const-string v2, "  mVRRecord=null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public enforceCallingPermission(IILjava/lang/String;)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->enforceCallingPermission(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public enforceCallingSelfPermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "uid":I
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/VRManagerService;->enforceCallingPermission(IILjava/lang/String;)V

    return-void
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "optionName"    # Ljava/lang/String;

    .prologue
    const-string v3, "getOption"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->getOption(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    return-object v1

    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    const-string v3, "getSystemOption"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    const-string v3, "tsp_enabled"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/VRManagerService;->isSystemTouchSceenPanelEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "1"

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "0"

    goto :goto_0

    :cond_2
    const-string v3, "touchkey_enabled"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/server/VRManagerService;->isSystemTouchKeyEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "1"

    :goto_1
    goto :goto_0

    :cond_3
    const-string v1, "0"

    goto :goto_1

    :cond_4
    const-string v3, "epen_enabled"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/server/VRManagerService;->isSystemEPenEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v1, "1"

    :goto_2
    goto :goto_0

    :cond_5
    const-string v1, "0"

    goto :goto_2

    :cond_6
    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getVRBright()I
    .locals 4

    .prologue
    const-string v3, "getVRBright"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->getVRBright()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getVRColorTemperature()I
    .locals 4

    .prologue
    const-string v3, "getVRColorTemperature"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->getVRColorTemperature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isConnected()Z
    .locals 4

    .prologue
    const-string v3, "isConnected"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isDevelopermode()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vrmode_developer_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "developerMode":I
    const-string v3, "VRManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDevelopermode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public isVRComfortableViewEnabled()Z
    .locals 4

    .prologue
    const-string v3, "isVRComfortableViewEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRComfortableViewEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRDarkAdaptationEnabled()Z
    .locals 4

    .prologue
    const-string v3, "isVRDarkAdaptationEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRDarkAdaptationEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRLowPersistenceEnabled()Z
    .locals 4

    .prologue
    const-string v3, "isVRLowPersistenceEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRLowPersistenceEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRMode()Z
    .locals 4

    .prologue
    const-string v3, "isVRMode"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public notifyDeviceEventChanged(I)V
    .locals 7
    .param p1, "event"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "uid":I
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->requestInit()V

    const-string v2, "VRManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyDeviceEventChanged event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/VRManagerService$DeviceEventHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v0, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/VRManagerService$DeviceEventHandler;->sendMessage(Landroid/os/Message;)Z

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public relFreq(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const-string v3, "relFreq"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->relFreq(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public releaseCPUMhz(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const-string v2, "releaseCPUMhz"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->releaseCPUMhz(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public releaseGPUMhz(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const-string v2, "releaseGPUMhz"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->releaseGPUMhz(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public return2EnableFreqLev()[I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v3, "return2EnableFreqLev"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    .local v1, "result":[I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->return2EnableFreqLev()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    return-object v1

    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setAffinity(I[I)I
    .locals 3
    .param p1, "pid"    # I
    .param p2, "cpus"    # [I

    .prologue
    const-string v2, "setAffinity"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setAffinity(I[I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    if-nez v2, :cond_1

    new-instance v2, Landroid/sec/performance/AffinityControl;

    invoke-direct {v2}, Landroid/sec/performance/AffinityControl;-><init>()V

    iput-object v2, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    :cond_1
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    invoke-virtual {v2, p1, p2}, Landroid/sec/performance/AffinityControl;->SetAffinity(I[I)I

    move-result v2

    :goto_0
    return v2

    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setCPUClockMhz(Ljava/lang/String;[II)[I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mhz"    # [I
    .param p3, "corenum"    # I

    .prologue
    const/4 v4, 0x0

    const-string v3, "setCPUClockMhz"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    .local v1, "result":[I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->setCPUClockMhz(Ljava/lang/String;[II)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    return-object v1

    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setGPUClockMhz(Ljava/lang/String;I)I
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mhz"    # I

    .prologue
    const-string v3, "setGPUClockMhz"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setGPUClockMhz(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "optionName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const-string v2, "setOption"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const-string v2, "setSystemOption"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    const-string v2, "tsp_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemTouchSceenPanelEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemTouchSceenPanelEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :cond_2
    :try_start_1
    const-string v2, "touchkey_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemTouchKeyEnabled(Z)V

    goto :goto_0

    :cond_3
    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemTouchKeyEnabled(Z)V

    goto :goto_0

    :cond_4
    const-string v2, "epen_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemEPenEnabled(Z)V

    goto :goto_0

    :cond_5
    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemEPenEnabled(Z)V

    goto :goto_0

    :cond_6
    const-string v2, "show_mouse_pointer"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemShowMouseEnabled(Z)V

    goto :goto_0

    :cond_7
    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemShowMouseEnabled(Z)V

    goto :goto_0

    :cond_8
    const-string v2, "mouse_control_type"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemMouseControlType(I)V

    goto/16 :goto_0

    :cond_9
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public setThreadSchedFifo(Ljava/lang/String;III)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "prio"    # I

    .prologue
    const/4 v2, 0x0

    const-string v3, "setThreadSchedFifo"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IVRManagerService;->setThreadSchedFifo(Ljava/lang/String;III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-lez p4, :cond_2

    const/4 v3, 0x4

    if-gt p4, v3, :cond_2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/VRManagerService;->scheduleThreadFIFO(Ljava/lang/String;III)Z

    move-result v2

    :cond_1
    :goto_0
    return v2

    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :cond_2
    if-nez p4, :cond_1

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/server/VRManagerService;->scheduleThreadOTHER(Ljava/lang/String;III)Z

    move-result v2

    goto :goto_0
.end method

.method public setVRBright(I)V
    .locals 3
    .param p1, "bright"    # I

    .prologue
    const-string v2, "setVRBright"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRBright(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRColorTemperature(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    const-string v2, "setVRColorTemperature"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRColorTemperature(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRComfortableView(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const-string v2, "setVRComfortableView"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRComfortableView(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRDarkAdaptation(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const-string v2, "setVRDarkAdaptation"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRDarkAdaptation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRLowPersistence(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const-string v2, "setVRLowPersistence"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRLowPersistence(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const-string v2, "setVRMode"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRPerformanceMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const-string v2, "setVRPerformanceMode"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRPerformanceMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVideoMode(Ljava/lang/String;FZ)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "dutyCycle"    # F
    .param p3, "monoMode"    # Z

    .prologue
    const-string v3, "setVideoMode"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->setVideoMode(Ljava/lang/String;FZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    return v1

    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public systemReady()V
    .locals 2

    .prologue
    const-string v0, "VRManagerService"

    const-string v1, "---- VRManagerService systemReady ----"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
