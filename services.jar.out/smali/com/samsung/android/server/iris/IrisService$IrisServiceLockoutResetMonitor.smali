.class Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;
.super Ljava/lang/Object;
.source "IrisService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/iris/IrisService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IrisServiceLockoutResetMonitor"
.end annotation


# instance fields
.field private final mCallback:Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;

.field private final mRemoveCallbackRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/samsung/android/server/iris/IrisService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/iris/IrisService;Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;)V
    .locals 1
    .param p2, "callback"    # Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;

    .prologue
    .line 1499
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1516
    new-instance v0, Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor$1;-><init>(Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;)V

    iput-object v0, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;->mRemoveCallbackRunnable:Ljava/lang/Runnable;

    .line 1500
    iput-object p2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;->mCallback:Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;

    .line 1501
    return-void
.end method


# virtual methods
.method public sendLockoutReset()V
    .locals 4

    .prologue
    .line 1504
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;->mCallback:Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;

    if-eqz v1, :cond_0

    .line 1506
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;->mCallback:Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mHalDeviceId:J
    invoke-static {v2}, Lcom/samsung/android/server/iris/IrisService;->access$1800(Lcom/samsung/android/server/iris/IrisService;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;->onLockoutReset(J)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1514
    :cond_0
    :goto_0
    return-void

    .line 1507
    :catch_0
    move-exception v0

    .line 1508
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string v1, "IrisService"

    const-string v2, "Death object while invoking onLockoutReset: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1509
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v1, v1, Lcom/samsung/android/server/iris/IrisService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/server/iris/IrisService$IrisServiceLockoutResetMonitor;->mRemoveCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1510
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v0

    .line 1511
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IrisService"

    const-string v2, "Failed to invoke onLockoutReset: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
