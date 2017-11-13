.class Lcom/samsung/android/server/iris/IrisService$ClientMonitor$1;
.super Ljava/lang/Object;
.source "IrisService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor$1;->this$1:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    iget-object v5, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor$1;->this$1:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget-object v5, v5, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    invoke-virtual {v5}, Lcom/samsung/android/server/iris/IrisService;->getIrisDaemon()Lcom/samsung/android/camera/iris/IIrisDaemon;

    move-result-object v2

    .local v2, "daemon":Lcom/samsung/android/camera/iris/IIrisDaemon;
    if-nez v2, :cond_1

    const-string v5, "IrisService"

    const-string v6, "ClientMonitor binderDied: no irisd!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor$1;->this$1:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iput-object v10, v5, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor$1;->this$1:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget-object v5, v5, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor$1;->this$1:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    # invokes: Lcom/samsung/android/server/iris/IrisService;->removeClient(Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V
    invoke-static {v5, v6}, Lcom/samsung/android/server/iris/IrisService;->access$1700(Lcom/samsung/android/server/iris/IrisService;Lcom/samsung/android/server/iris/IrisService$ClientMonitor;)V

    iget-object v5, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor$1;->this$1:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iput-object v10, v5, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->receiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    return-void

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor$1;->this$1:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget-object v5, v5, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    invoke-static {v5}, Lcom/samsung/android/server/iris/IrisService;->access$1500(Lcom/samsung/android/server/iris/IrisService;)Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor$1;->this$1:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget-object v5, v5, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mAuthClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    invoke-static {v5}, Lcom/samsung/android/server/iris/IrisService;->access$1500(Lcom/samsung/android/server/iris/IrisService;)Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor$1;->this$1:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget-object v6, v6, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eq v5, v6, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor$1;->this$1:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget-object v5, v5, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    invoke-static {v5}, Lcom/samsung/android/server/iris/IrisService;->access$1600(Lcom/samsung/android/server/iris/IrisService;)Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor$1;->this$1:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget-object v5, v5, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->this$0:Lcom/samsung/android/server/iris/IrisService;

    # getter for: Lcom/samsung/android/server/iris/IrisService;->mEnrollClient:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;
    invoke-static {v5}, Lcom/samsung/android/server/iris/IrisService;->access$1600(Lcom/samsung/android/server/iris/IrisService;)Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/samsung/android/server/iris/IrisService$ClientMonitor$1;->this$1:Lcom/samsung/android/server/iris/IrisService$ClientMonitor;

    iget-object v6, v6, Lcom/samsung/android/server/iris/IrisService$ClientMonitor;->token:Landroid/os/IBinder;

    if-ne v5, v6, :cond_0

    :cond_3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-interface {v2}, Lcom/samsung/android/camera/iris/IIrisDaemon;->cancelAuthentication()I

    move-result v4

    .local v4, "result":I
    const-string v5, "IrisService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClientMonitor binderDied: cancel() IR_FINISH ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms) RESULT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "begin":J
    .end local v4    # "result":I
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "IrisService"

    const-string v6, "ClientMonitor binderDied: cancel()"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
