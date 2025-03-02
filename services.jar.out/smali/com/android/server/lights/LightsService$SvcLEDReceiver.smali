.class final Lcom/android/server/lights/LightsService$SvcLEDReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SvcLEDReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/lights/LightsService;
    .param p2, "x1"    # Lcom/android/server/lights/LightsService$1;

    .prologue
    .line 626
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService$SvcLEDReceiver;-><init>(Lcom/android/server/lights/LightsService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 629
    iget-object v1, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$500(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v2

    monitor-enter v2

    .line 631
    :try_start_0
    iget-object v1, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    # invokes: Lcom/android/server/lights/LightsService;->acquireWakeLockForLED()V
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$600(Lcom/android/server/lights/LightsService;)V

    .line 632
    const-string v1, "LightsService"

    const-string v3, "[api] onReceive : SvcLEDReceiver re-enables LightSenor and sends MSG_FORCEDSVCLEDTASK"

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v1, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V
    invoke-static {v1, v3}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;Z)V

    .line 635
    iget-object v1, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$900(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->removeMessages(I)V

    .line 636
    iget-object v1, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$900(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 637
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$900(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/lights/LightsService$SvcLEDReceiver;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I
    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$1000(Lcom/android/server/lights/LightsService;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 638
    monitor-exit v2

    .line 639
    return-void

    .line 638
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
