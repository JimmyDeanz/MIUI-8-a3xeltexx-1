.class Lcom/samsung/android/server/wifi/SensorMonitor$2;
.super Ljava/lang/Object;
.source "SensorMonitor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SensorMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SensorMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SensorMonitor;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SensorMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SensorMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 202
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x0

    .line 188
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_1

    .line 189
    # getter for: Lcom/samsung/android/server/wifi/SensorMonitor;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/SensorMonitor;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Wifi-SensorMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 191
    const-string v0, "Wifi-SensorMonitor"

    const-string v1, "enable powerbackoff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SensorMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SensorMonitor;

    const/4 v1, 0x1

    # invokes: Lcom/samsung/android/server/wifi/SensorMonitor;->enablePowerBackoff(Z)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SensorMonitor;->access$100(Lcom/samsung/android/server/wifi/SensorMonitor;Z)V

    .line 198
    :cond_1
    :goto_0
    return-void

    .line 193
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 194
    const-string v0, "Wifi-SensorMonitor"

    const-string v1, "disable powerbackoff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SensorMonitor$2;->this$0:Lcom/samsung/android/server/wifi/SensorMonitor;

    # invokes: Lcom/samsung/android/server/wifi/SensorMonitor;->enablePowerBackoff(Z)V
    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SensorMonitor;->access$100(Lcom/samsung/android/server/wifi/SensorMonitor;Z)V

    goto :goto_0
.end method
