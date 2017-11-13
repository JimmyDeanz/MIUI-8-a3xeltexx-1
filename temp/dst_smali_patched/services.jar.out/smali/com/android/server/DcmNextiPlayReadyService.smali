.class public Lcom/android/server/DcmNextiPlayReadyService;
.super Landroid/app/Service;
.source "DcmNextiPlayReadyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;,
        Lcom/android/server/DcmNextiPlayReadyService$MainThread;,
        Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final BOOT_COMPLETE:I = 0x1

.field private static final DATE_FORMAT:Ljava/text/DateFormat;

.field public static final GOT_DATA_CONNECTION:I = 0x2

.field public static final GOT_NITZ:I = 0x3

.field public static GotDataBeforeBootComplete:I = 0x0

.field private static final LIMIT_TIME:I = 0x1388

.field private static final NTP_SERVER:Ljava/lang/String; = "https://tts.spmode.ne.jp:443"

.field private static final PLAYREADY_REF_TIME_FILE:Ljava/lang/String; = "/data/.dcmdrm/.playready/DcmNextiPlayReadyRefTime.dat"

.field private static final TAG:Ljava/lang/String; = "DcmNextiPlayReadyService"

.field public static THREAD_EXECUTING:I


# instance fields
.field public isSuspendedBefore:Ljava/lang/Boolean;

.field private mMainThread:Lcom/android/server/DcmNextiPlayReadyService$MainThread;

.field private mServiceHandler:Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "z yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/DcmNextiPlayReadyService;->DATE_FORMAT:Ljava/text/DateFormat;

    sput v2, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    sput v2, Lcom/android/server/DcmNextiPlayReadyService;->GotDataBeforeBootComplete:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DcmNextiPlayReadyService;->isSuspendedBefore:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(JJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/DcmNextiPlayReadyService;->nitzReceived(JJ)V

    return-void
.end method

.method private static native bootComplete()V
.end method

.method private handleConnectivityStateChanged()V
    .locals 2

    .prologue
    new-instance v0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;

    const-string v1, "https://tts.spmode.ne.jp:443"

    invoke-direct {v0, p0, v1}, Lcom/android/server/DcmNextiPlayReadyService$MainThread;-><init>(Lcom/android/server/DcmNextiPlayReadyService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DcmNextiPlayReadyService;->mMainThread:Lcom/android/server/DcmNextiPlayReadyService$MainThread;

    iget-object v0, p0, Lcom/android/server/DcmNextiPlayReadyService;->mMainThread:Lcom/android/server/DcmNextiPlayReadyService$MainThread;

    invoke-virtual {v0}, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->start()V

    return-void
.end method

.method private static native nitzReceived(JJ)V
.end method

.method private static native ntpReceived(JJ)V
.end method


# virtual methods
.method public handleNitzTimeUpdation()V
    .locals 4

    .prologue
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/DcmNextiPlayReadyService$1;

    invoke-direct {v1, p0}, Lcom/android/server/DcmNextiPlayReadyService$1;-><init>(Lcom/android/server/DcmNextiPlayReadyService;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceStartArguments"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DcmNextiPlayReadyService;->mServiceLooper:Landroid/os/Looper;

    new-instance v1, Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

    iget-object v2, p0, Lcom/android/server/DcmNextiPlayReadyService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;-><init>(Lcom/android/server/DcmNextiPlayReadyService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/DcmNextiPlayReadyService;->mServiceHandler:Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    const-string v0, "DcmNextiPlayReadyService"

    const-string v1, "DrmEventService : OnLowMemory....Save the Phone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void
.end method

.method public onNetworkStateChanged(JJ)V
    .locals 5
    .param p1, "networktime"    # J
    .param p3, "recvelapsedtime"    # J

    .prologue
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    cmp-long v0, p3, v2

    if-lez v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/DcmNextiPlayReadyService;->ntpReceived(JJ)V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/server/DcmNextiPlayReadyService;->mServiceHandler:Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

    invoke-virtual {v3}, Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v5, v0, Landroid/os/Message;->what:I

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/DcmNextiPlayReadyService;->mServiceHandler:Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return v5

    :cond_1
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .local v1, "net":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .local v2, "st":Landroid/net/NetworkInfo$State;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v5, :cond_2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "DcmNextiPlayReadyService"

    const-string v4, "Current action is Wifi Connected"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v0, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DcmNextiPlayReadyService"

    const-string v4, "Current action is mobile data Connected"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "DcmNextiPlayReadyService"

    const-string v4, "Current action is Data suspended"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DcmNextiPlayReadyService;->isSuspendedBefore:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/DcmNextiPlayReadyService;->isSuspendedBefore:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "DcmNextiPlayReadyService"

    const-string v4, "Current action is Data connected and previous action was not suspended"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v0, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DcmNextiPlayReadyService;->isSuspendedBefore:Ljava/lang/Boolean;

    goto :goto_0

    .end local v1    # "net":Landroid/net/NetworkInfo;
    .end local v2    # "st":Landroid/net/NetworkInfo$State;
    :cond_5
    const-string v3, "com.samsung.intent.action.NITZ_SET_TIME"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "DcmNextiPlayReadyService"

    const-string v4, "Current action is nitz set time"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    goto/16 :goto_0

    :cond_6
    const-string v3, "DcmNextiPlayReadyService"

    const-string v4, "Code should not reach here"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
