.class public Lcom/samsung/android/smartface/SmartFaceManager;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;,
        Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;,
        Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;,
        Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;
    }
.end annotation


# static fields
.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final FEATURE_SMART_PAUSE:Ljava/lang/String; = "com.sec.android.smartface.smart_pause"

.field public static final FEATURE_SMART_ROTATION:Ljava/lang/String; = "com.sec.android.smartface.smart_rotation"

.field public static final FEATURE_SMART_SCROLL:Ljava/lang/String; = "com.sec.android.smartface.smart_scroll"

.field public static final FEATURE_SMART_STAY:Ljava/lang/String; = "com.sec.android.smartface.smart_stay"

.field public static final MSG_FACEINFO:I = 0x0

.field public static final MSG_REGISTERED:I = 0x1

.field public static final MSG_UNREGISTERED:I = 0x2

.field private static final NULL_VALUE:Ljava/lang/String; = ""

.field public static final PAGE_BOTTOM:Ljava/lang/String; = "1"

.field public static final PAGE_MIDDLE:Ljava/lang/String; = "0"

.field public static final PAGE_TOP:Ljava/lang/String; = "-1"

.field public static final PAUSE_THIS_CLIENT:Ljava/lang/String; = "paused-state"

.field public static final SERVICETYPE_HYBRID:I = 0x20

.field public static final SERVICETYPE_MOTION:I = 0x10

.field public static final SERVICETYPE_PAUSE:I = 0x2

.field public static final SERVICETYPE_ROTATION:I = 0x8

.field public static final SERVICETYPE_SCROLL:I = 0x1

.field public static final SERVICETYPE_STAY:I = 0x4

.field public static final SMARTFACE_SERVICE:Ljava/lang/String; = "samsung.smartfaceservice"

.field public static final SMART_ROTATION_UI_ORIENTATION:Ljava/lang/String; = "smart-rotation-ui-orientation"

.field public static final SMART_SCREEN_DUMP_PREVIEW:Ljava/lang/String; = "smart-screen-dump"

.field public static final SMART_SCROLL_PAGE_STATUS:Ljava/lang/String; = "smart-scroll-page-status"

.field public static final SMART_STAY_FRAMECOUNT_RESET:Ljava/lang/String; = "smart-stay-framecount-reset"

.field private static final TAG:Ljava/lang/String; = "SmartFaceManager"

.field public static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field private final complete:Ljava/util/concurrent/locks/Condition;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private mCallbackData:I

.field private mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

.field private mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

.field private mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

.field private mService:Lcom/samsung/android/smartface/ISmartFaceService;

.field private mSmartStayDelay:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->complete:Ljava/util/concurrent/locks/Condition;

    const-string v1, "2750"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mSmartStayDelay:I

    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-direct {v1, p0}, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;)V

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/smartface/SmartFaceManager;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/smartface/SmartFaceManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/smartface/SmartFaceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/smartface/SmartFaceManager;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/smartface/SmartFaceManager;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/smartface/SmartFaceManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->complete:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/smartface/SmartFaceManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/smartface/SmartFaceManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/smartface/SmartFaceManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    return-object v0
.end method

.method private declared-synchronized ensureServiceConnected()Z
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    const-string v3, "empty key for ping"

    const-string v4, "empty value"

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/smartface/ISmartFaceService;->setValue(Lcom/samsung/android/smartface/ISmartFaceClient;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->startSmartFaceService()V

    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->waitForService()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getSmartFaceManager()Lcom/samsung/android/smartface/SmartFaceManager;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSmartFaceManager(Landroid/content/Context;)Lcom/samsung/android/smartface/SmartFaceManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/smartface/SmartFaceManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private startSmartFaceService()V
    .locals 4

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.smartface"

    const-string v3, "com.samsung.android.smartface.SmartFaceServiceStarter"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method private waitForCallback(I)J
    .locals 8
    .param p1, "wait_milli"    # I

    .prologue
    const-wide/16 v0, -0x1

    .local v0, "ret":J
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->complete:Ljava/util/concurrent/locks/Condition;

    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v4, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-interface {v2, v4, v5}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-string v2, "SmartFaceManager"

    const-string v3, "No Callback!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private waitForService()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .local v0, "count":I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const-string v1, "samsung.smartfaceservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    if-eqz v1, :cond_1

    const-string v1, "SmartFaceManager"

    const-string v2, "Service connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    const-string v1, "SmartFaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit16 v3, v0, 0x12c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized checkForSmartRotation(I)Z
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "SmartFaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkForSmartRotation S: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "ret":Z
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "Smart Rotation Wait Thread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v2, "thread1":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, p0, v4}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .local v0, "listener":Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    new-instance v3, Lcom/samsung/android/smartface/SmartFaceManager$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/smartface/SmartFaceManager$2;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager;->setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    iget-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "smart-rotation-ui-orientation"

    invoke-virtual {p0, v3, p1}, Lcom/samsung/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;I)V

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager;->start(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    const/16 v3, 0x1f4

    invoke-direct {p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager;->waitForCallback(I)J

    iget v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    if-lez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    const/16 v3, 0x1f4

    invoke-direct {p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager;->waitForCallback(I)J

    iget v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->stop()V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/smartface/SmartFaceManager;->setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    const-string v3, "SmartFaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkForSmartRotation E: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v3

    :try_start_3
    iget-object v4, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "listener":Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    .end local v1    # "ret":Z
    .end local v2    # "thread1":Landroid/os/HandlerThread;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized checkForSmartStay()Z
    .locals 6

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "SmartFaceManager"

    const-string v4, "checkForSmartStay S"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "ret":Z
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "Smart Stay Wait Thread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v2, "thread1":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, p0, v4}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .local v0, "listener":Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    new-instance v3, Lcom/samsung/android/smartface/SmartFaceManager$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/smartface/SmartFaceManager$1;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager;->setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    iget-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "smart-stay-framecount-reset"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager;->start(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    const v3, 0x3edc28f6    # 0.43f

    iget v4, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mSmartStayDelay:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager;->waitForCallback(I)J

    iget v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    if-lez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    const v3, 0x3ebd70a4    # 0.37f

    iget v4, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mSmartStayDelay:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager;->waitForCallback(I)J

    iget v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-virtual {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->stop()V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/smartface/SmartFaceManager;->setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    const-string v3, "SmartFaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkForSmartStay X: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v3

    :try_start_3
    iget-object v4, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "listener":Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    .end local v1    # "ret":Z
    .end local v2    # "thread1":Landroid/os/HandlerThread;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getSupportedServices()I
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    invoke-interface {v2}, Lcom/samsung/android/smartface/ISmartFaceService;->getSupportedServices()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "paused-state"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    const-string v0, "paused-state"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    return-void
.end method

.method public setValue(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "SmartFaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/smartface/ISmartFaceService;->setValue(Lcom/samsung/android/smartface/ISmartFaceClient;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public start(I)Z
    .locals 4
    .param p1, "service_type"    # I

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/smartface/ISmartFaceService;->register(Lcom/samsung/android/smartface/ISmartFaceClient;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startAsync(I)V
    .locals 3
    .param p1, "service_type"    # I

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/smartface/ISmartFaceService;->registerAsync(Lcom/samsung/android/smartface/ISmartFaceClient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v1, v2}, Lcom/samsung/android/smartface/ISmartFaceService;->unregister(Lcom/samsung/android/smartface/ISmartFaceClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v1, v3}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v1, v3}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public stopAsync()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v1, v2}, Lcom/samsung/android/smartface/ISmartFaceService;->unregisterAsync(Lcom/samsung/android/smartface/ISmartFaceClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v1, v3}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v1, v3}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
