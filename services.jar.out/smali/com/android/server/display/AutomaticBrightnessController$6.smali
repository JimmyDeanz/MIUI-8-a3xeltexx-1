.class Lcom/android/server/display/AutomaticBrightnessController$6;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    .prologue
    .line 1502
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/4 v8, 0x1

    .line 1505
    iget-object v1, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 1506
    .local v1, "scontext":Landroid/hardware/scontext/SContext;
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$2300(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_2

    .line 1507
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1508
    .local v2, "time":J
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getAutoBrightnessContext()Landroid/hardware/scontext/SContextAutoBrightness;

    move-result-object v0

    .line 1509
    .local v0, "autoBrightness":Landroid/hardware/scontext/SContextAutoBrightness;
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextAutoBrightness;->getAmbientLux()I

    move-result v5

    int-to-float v5, v5

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$3202(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1510
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextAutoBrightness;->getCandela()I

    move-result v5

    int-to-float v5, v5

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientCandela:F
    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$3302(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1512
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$2400(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1513
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$2500(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1514
    const-string v4, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PAB] onSensorHubChanged : lux = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F
    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->access$3200(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mNeedToAddPersonalAutoBrightnessPoint:Z
    invoke-static {v4, v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$2502(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1516
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mPersonalAutoBrightness:Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$2700(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$3200(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mPendingScreenBrightnessSetting:I
    invoke-static {v7}, Lcom/android/server/display/AutomaticBrightnessController;->access$2600(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/display/AutomaticBrightnessController$PersonalAutoBrightness;->addPoint(FI)V

    .line 1518
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1520
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I
    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$2800(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v4

    if-nez v4, :cond_1

    .line 1521
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DAB] onSensorHubChanged : 1st lux = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$3200(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", 1st candela = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientCandela:F
    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$3300(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # += operator for: Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I
    invoke-static {v4, v8}, Lcom/android/server/display/AutomaticBrightnessController;->access$2812(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 1526
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedSensorHubLuxTime:J
    invoke-static {v4, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$3402(Lcom/android/server/display/AutomaticBrightnessController;J)J

    .line 1527
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z
    invoke-static {v4, v8}, Lcom/android/server/display/AutomaticBrightnessController;->access$1702(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1529
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightnessSEC(Z)V
    invoke-static {v4, v8}, Lcom/android/server/display/AutomaticBrightnessController;->access$1800(Lcom/android/server/display/AutomaticBrightnessController;Z)V

    .line 1531
    .end local v0    # "autoBrightness":Landroid/hardware/scontext/SContextAutoBrightness;
    .end local v2    # "time":J
    :cond_2
    return-void

    .line 1518
    .restart local v0    # "autoBrightness":Landroid/hardware/scontext/SContextAutoBrightness;
    .restart local v2    # "time":J
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
