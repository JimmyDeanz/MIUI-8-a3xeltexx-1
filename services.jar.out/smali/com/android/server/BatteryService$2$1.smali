.class Lcom/android/server/BatteryService$2$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BatteryService$2;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService$2;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/server/BatteryService$2$1;->this$1:Lcom/android/server/BatteryService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/server/BatteryService$2$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$2$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/BatteryService;->mMoodLightOnForScreenOnOff:Z
    invoke-static {v0, v2}, Lcom/android/server/BatteryService;->access$402(Lcom/android/server/BatteryService;Z)Z

    .line 387
    iget-object v0, p0, Lcom/android/server/BatteryService$2$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v0, v2}, Lcom/android/server/BatteryService;->access$502(Lcom/android/server/BatteryService;Z)Z

    .line 388
    iget-object v0, p0, Lcom/android/server/BatteryService$2$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 389
    monitor-exit v1

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
