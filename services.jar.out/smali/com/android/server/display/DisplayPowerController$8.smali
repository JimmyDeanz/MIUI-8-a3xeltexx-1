.class Lcom/android/server/display/DisplayPowerController$8;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .prologue
    .line 2961
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 2976
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x0

    .line 2964
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[api] onSensorChanged : proximity : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z
    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$900(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2966
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2967
    .local v2, "time":J
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v1

    .line 2968
    .local v0, "distance":F
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F
    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$1000(Lcom/android/server/display/DisplayPowerController;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    const/4 v1, 0x1

    .line 2969
    .local v1, "positive":Z
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V
    invoke-static {v4, v2, v3, v1}, Lcom/android/server/display/DisplayPowerController;->access$1100(Lcom/android/server/display/DisplayPowerController;JZ)V

    .line 2971
    .end local v0    # "distance":F
    .end local v1    # "positive":Z
    .end local v2    # "time":J
    :cond_1
    return-void
.end method
