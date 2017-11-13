.class Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x2

    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1100(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->getRgbFromLightSensor()V
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1200(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorValueValid:Z
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1300(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorR:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1400(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v1

    .local v1, "r":I
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorG:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1500(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v2

    .local v2, "g":I
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorB:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1600(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v3

    .local v3, "b":I
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v9

    float-to-int v4, v0

    .local v4, "lux":I
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x1

    aget v0, v0, v8

    float-to-int v5, v0

    .local v5, "cct":I
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mInitSensorNameForLowLux:Z
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mInitSensorNameForLowLux:Z
    invoke-static {v0, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1702(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Z)Z

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    .local v7, "mSensorName":Ljava/lang/String;
    const-string v0, "AdaptiveDisplayColorService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sensor Name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->SENSOR_NAMES:[Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1800(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->SENSOR_NAMES:[Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1800(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    const/16 v8, 0x20

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLowLuxValue:I
    invoke-static {v0, v8}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1902(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;I)I

    .end local v6    # "i":I
    .end local v7    # "mSensorName":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->handleRgbSensorEvent(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$2000(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;IIIII)V

    .end local v1    # "r":I
    .end local v2    # "g":I
    .end local v3    # "b":I
    .end local v4    # "lux":I
    .end local v5    # "cct":I
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0, v10}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;I)I

    :goto_1
    return-void

    .restart local v1    # "r":I
    .restart local v2    # "g":I
    .restart local v3    # "b":I
    .restart local v4    # "lux":I
    .restart local v5    # "cct":I
    .restart local v6    # "i":I
    .restart local v7    # "mSensorName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v1    # "r":I
    .end local v2    # "g":I
    .end local v3    # "b":I
    .end local v4    # "lux":I
    .end local v5    # "cct":I
    .end local v6    # "i":I
    .end local v7    # "mSensorName":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1100(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v0

    if-gt v0, v10, :cond_4

    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1100(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # operator-- for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1110(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0, v10}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;I)I

    goto :goto_1
.end method
