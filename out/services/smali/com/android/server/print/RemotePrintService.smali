.class final Lcom/android/server/print/RemotePrintService;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;,
        Lcom/android/server/print/RemotePrintService$MyHandler;,
        Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;,
        Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "RemotePrintService"


# instance fields
.field private mBinding:Z

.field private final mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mDiscoveryPriorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHasActivePrintJobs:Z

.field private mHasPrinterDiscoverySession:Z

.field private final mIntent:Landroid/content/Intent;

.field private final mPendingCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintService:Landroid/printservice/IPrintService;

.field private final mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceDied:Z

.field private final mSpooler:Lcom/android/server/print/RemotePrintSpooler;

.field private mTrackedPrinterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "spooler"    # Lcom/android/server/print/RemotePrintSpooler;
    .param p5, "callbacks"    # Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    .line 72
    new-instance v0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;-><init>(Lcom/android/server/print/RemotePrintService;Lcom/android/server/print/RemotePrintService$1;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 102
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    .line 103
    iput-object p5, p0, Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    .line 104
    iput-object p2, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mIntent:Landroid/content/Intent;

    .line 106
    iput p3, p0, Lcom/android/server/print/RemotePrintService;->mUserId:I

    .line 107
    iput-object p4, p0, Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 108
    new-instance v0, Lcom/android/server/print/RemotePrintService$MyHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/RemotePrintService$MyHandler;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;-><init>(Lcom/android/server/print/RemotePrintService;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    .line 110
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/print/RemotePrintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleOnAllPrintJobsHandled()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;
    .param p1, "x1"    # Landroid/print/PrinterId;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterStateTracking(Landroid/print/PrinterId;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/print/RemotePrintService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/print/RemotePrintService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/print/RemotePrintService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/print/RemotePrintService;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/print/RemotePrintService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/print/RemotePrintService;)Landroid/printservice/IPrintService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/print/RemotePrintService;Landroid/printservice/IPrintService;)Landroid/printservice/IPrintService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;
    .param p1, "x1"    # Landroid/printservice/IPrintService;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/print/RemotePrintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleBinderDied()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/print/RemotePrintService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/print/RemotePrintService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/print/RemotePrintService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;
    .param p1, "x1"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/print/RemotePrintService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/print/RemotePrintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/print/RemotePrintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleDestroy()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintSpooler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;
    .param p1, "x1"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleOnPrintJobQueued(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/print/RemotePrintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/print/RemotePrintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterDiscovery(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/print/RemotePrintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleValidatePrinters(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/print/RemotePrintService;
    .param p1, "x1"    # Landroid/print/PrinterId;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterStateTracking(Landroid/print/PrinterId;)V

    return-void
.end method

.method private ensureBound()V
    .locals 6

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    if-eqz v0, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    .line 510
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;

    const v3, 0x4000001

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/print/RemotePrintService;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    goto :goto_0
.end method

.method private ensureUnbound()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 516
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    if-nez v0, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    .line 523
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 524
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    .line 525
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    .line 526
    iput-object v3, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    .line 527
    iput-object v3, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 528
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/printservice/IPrintService;->setClient(Landroid/printservice/IPrintServiceClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_1
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v0}, Landroid/printservice/IPrintService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 535
    iput-object v3, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 536
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private handleBinderDied()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v0}, Landroid/printservice/IPrintService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 151
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    .line 153
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;

    invoke-interface {v0, p0}, Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;->onServiceDied(Lcom/android/server/print/RemotePrintService;)V

    .line 154
    return-void
.end method

.method private handleCreatePrinterDiscoverySession()V
    .locals 3

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 250
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    .line 251
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 253
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/RemotePrintService$4;

    invoke-direct {v2, p0}, Lcom/android/server/print/RemotePrintService$4;-><init>(Lcom/android/server/print/RemotePrintService;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :goto_0
    return-void

    .line 264
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v1}, Landroid/printservice/IPrintService;->createPrinterDiscoverySession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintService"

    const-string v2, "Error creating printer discovery session."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleDestroy()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 124
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->stopTrackingAllPrinters()V

    .line 127
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    if-eqz v0, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    .line 141
    return-void
.end method

.method private handleDestroyPrinterDiscoverySession()V
    .locals 3

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 277
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    .line 278
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    if-nez v1, :cond_2

    .line 281
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    if-nez v1, :cond_1

    .line 282
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 286
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/RemotePrintService$5;

    invoke-direct {v2, p0}, Lcom/android/server/print/RemotePrintService$5;-><init>(Lcom/android/server/print/RemotePrintService;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v1}, Landroid/printservice/IPrintService;->destroyPrinterDiscoverySession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    if-nez v1, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintService"

    const-string v2, "Error destroying printer dicovery session."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private handleOnAllPrintJobsHandled()V
    .locals 2

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    .line 163
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v0

    if-nez v0, :cond_2

    .line 166
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    if-nez v0, :cond_1

    .line 167
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 171
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v1, Lcom/android/server/print/RemotePrintService$1;

    invoke-direct {v1, p0}, Lcom/android/server/print/RemotePrintService$1;-><init>(Lcom/android/server/print/RemotePrintService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    if-nez v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    goto :goto_0
.end method

.method private handleOnPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 3
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 223
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    .line 224
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 226
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/RemotePrintService$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/RemotePrintService$3;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :goto_0
    return-void

    .line 237
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintService"

    const-string v2, "Error announcing queued pring job."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    .locals 3
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 196
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 198
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/RemotePrintService$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/RemotePrintService$2;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :goto_0
    return-void

    .line 209
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->requestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintService"

    const-string v2, "Error canceling a pring job."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleStartPrinterDiscovery(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    .line 318
    if-eqz p1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    .line 322
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 323
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/RemotePrintService$6;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/RemotePrintService$6;-><init>(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    :goto_0
    return-void

    .line 334
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->startPrinterDiscovery(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintService"

    const-string v2, "Error starting printer dicovery."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleStartPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 3
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 408
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 409
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    .line 413
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 414
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/RemotePrintService$9;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/RemotePrintService$9;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    :goto_0
    return-void

    .line 425
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->startPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintService"

    const-string v2, "Error requesting start printer tracking."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleStopPrinterDiscovery()V
    .locals 3

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 348
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    .line 349
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 351
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/RemotePrintService$7;

    invoke-direct {v2, p0}, Lcom/android/server/print/RemotePrintService$7;-><init>(Lcom/android/server/print/RemotePrintService;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->stopTrackingAllPrinters()V

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v1}, Landroid/printservice/IPrintService;->stopPrinterDiscovery()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintService"

    const-string v2, "Error stopping printer discovery."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleStopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 3
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 440
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 444
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 446
    :cond_2
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    if-nez v1, :cond_3

    .line 447
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 448
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/RemotePrintService$10;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/RemotePrintService$10;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 459
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->stopPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintService"

    const-string v2, "Error requesting stop printer tracking."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleValidatePrinters(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->throwIfDestroyed()V

    .line 380
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 382
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/RemotePrintService$8;

    invoke-direct {v2, p0, p1}, Lcom/android/server/print/RemotePrintService$8;-><init>(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :goto_0
    return-void

    .line 393
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    invoke-interface {v1, p1}, Landroid/printservice/IPrintService;->validatePrinters(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintService"

    const-string v2, "Error requesting printers validation."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isBound()Z
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopTrackingAllPrinters()V
    .locals 5

    .prologue
    .line 467
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-nez v3, :cond_1

    .line 477
    :cond_0
    return-void

    .line 470
    :cond_1
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 471
    .local v2, "trackedPrinterCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 472
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    .line 473
    .local v1, "printerId":Landroid/print/PrinterId;
    invoke-virtual {v1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 474
    invoke-direct {p0, v1}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 471
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private throwIfDestroyed()V
    .locals 2

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 542
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with a destroyed service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 146
    return-void
.end method

.method public createPrinterDiscoverySession()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 246
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 118
    return-void
.end method

.method public destroyPrinterDiscoverySession()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 273
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 480
    const-string v0, "  "

    .line 481
    .local v0, "tab":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "service:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 482
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "componentName="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 484
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "destroyed="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 486
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "bound="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 488
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "hasDicoverySession="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 490
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "hasActivePrintJobs="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 492
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "isDiscoveringPrinters="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 494
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "trackedPrinters="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 496
    return-void

    .line 492
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 494
    :cond_1
    const-string/jumbo v1, "null"

    goto :goto_1
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public onAllPrintJobsHandled()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 158
    return-void
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 2
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 219
    return-void
.end method

.method public onRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    .locals 2
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 192
    return-void
.end method

.method public startPrinterDiscovery(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 312
    return-void
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 403
    return-void
.end method

.method public stopPrinterDiscovery()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 343
    return-void
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 435
    return-void
.end method

.method public validatePrinters(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 376
    return-void
.end method
