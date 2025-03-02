.class Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;
.super Lcom/samsung/android/contextaware/utilbundle/autotest/OperationDebugging;
.source "SensorHubOperationDebugging.java"


# instance fields
.field private final mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delayTime"    # I

    .prologue
    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/utilbundle/autotest/OperationDebugging;-><init>(I)V

    const-string v0, "sensorhub"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sensorhub/SensorHubManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    return-void
.end method


# virtual methods
.method protected final doDebugging([B)V
    .locals 4
    .param p1, "packet"    # [B

    .prologue
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Lcom/samsung/android/sensorhub/SensorHub;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v1, v2, v3, p1}, Lcom/samsung/android/sensorhub/SensorHubManager;->SendSensorHubData(Lcom/samsung/android/sensorhub/SensorHub;I[B)I

    move-result v0

    .local v0, "result":I
    if-gtz v0, :cond_1

    const-string v1, "fail to send cmd to SensorHub"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "success to send cmd to SensorHub"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
