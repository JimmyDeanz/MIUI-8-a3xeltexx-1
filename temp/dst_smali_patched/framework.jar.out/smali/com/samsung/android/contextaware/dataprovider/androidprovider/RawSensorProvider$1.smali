.class Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;
.super Ljava/lang/Object;
.source "RawSensorProvider.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    # invokes: Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->access$000(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const-string v4, "SystemTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    # invokes: Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->access$100(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const-string v4, "TimeStamp"

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v3, v4, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    # invokes: Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->access$200(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const-string v4, "Accuracy"

    iget v5, p1, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .local v1, "names":[Ljava/lang/String;
    array-length v3, v1

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .local v2, "valueLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    # invokes: Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->access$300(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v1, v0

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->notifyObserver()V

    return-void
.end method
