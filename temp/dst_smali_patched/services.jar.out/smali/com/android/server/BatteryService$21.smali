.class Lcom/android/server/BatteryService$21;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/BatteryService$21;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    iget-object v2, p0, Lcom/android/server/BatteryService$21;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$3300(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/BatteryService$21;->this$0:Lcom/android/server/BatteryService;

    const-string v4, "/sys/class/power_supply/battery/fg_asoc"

    # invokes: Lcom/android/server/BatteryService;->readBatteryInfo(Ljava/lang/String;)J
    invoke-static {v2, v4}, Lcom/android/server/BatteryService;->access$4800(Lcom/android/server/BatteryService;Ljava/lang/String;)J

    move-result-wide v0

    .local v0, "currentAsoc":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1400()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ASOC is not supported."

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/BatteryService$21;->this$0:Lcom/android/server/BatteryService;

    const-string v4, "/efs/FactoryApp/asoc"

    const-wide/16 v6, -0x1

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v2, v4, v6, v7}, Lcom/android/server/BatteryService;->access$3900(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/BatteryService$21;->this$0:Lcom/android/server/BatteryService;

    iget-object v4, p0, Lcom/android/server/BatteryService$21;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryAsocFromEfsLocked()J
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$3500(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v2, v4, v5}, Lcom/android/server/BatteryService;->access$3402(Lcom/android/server/BatteryService;J)J

    iget-object v2, p0, Lcom/android/server/BatteryService$21;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$3400(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    cmp-long v2, v0, v4

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/BatteryService$21;->this$0:Lcom/android/server/BatteryService;

    const-wide/16 v4, 0x1

    # -= operator for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v2, v4, v5}, Lcom/android/server/BatteryService;->access$3422(Lcom/android/server/BatteryService;J)J

    iget-object v2, p0, Lcom/android/server/BatteryService$21;->this$0:Lcom/android/server/BatteryService;

    const-string v4, "/efs/FactoryApp/asoc"

    iget-object v5, p0, Lcom/android/server/BatteryService$21;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$3400(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v2, v4, v6, v7}, Lcom/android/server/BatteryService;->access$3900(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    :cond_1
    :goto_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "currentAsoc":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "currentAsoc":J
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/BatteryService$21;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$3400(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/BatteryService$21;->this$0:Lcom/android/server/BatteryService;

    const-wide/16 v4, 0x1

    # += operator for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v2, v4, v5}, Lcom/android/server/BatteryService;->access$3414(Lcom/android/server/BatteryService;J)J

    iget-object v2, p0, Lcom/android/server/BatteryService$21;->this$0:Lcom/android/server/BatteryService;

    const-string v4, "/efs/FactoryApp/asoc"

    iget-object v5, p0, Lcom/android/server/BatteryService$21;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryAsoc:J
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$3400(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v2, v4, v6, v7}, Lcom/android/server/BatteryService;->access$3900(Lcom/android/server/BatteryService;Ljava/lang/String;J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
