.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "StayingAlertRunner.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/ICurrrentLocationObserver;


# static fields
.field private static final ASK_CURRENT_LOCATION:B = 0x2t


# instance fields
.field private mCurAltitude:D

.field private mCurLatitude:D

.field private final mCurLocationManager:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

.field private mCurLongitude:D

.field private mStopPeriod:I

.field private mWaitPeriod:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mStopPeriod:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mWaitPeriod:I

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

    invoke-direct {v0, p2, p3, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/manager/ICurrrentLocationObserver;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mCurLocationManager:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    return-void
.end method

.method public final disable()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mCurLocationManager:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;->unregisterCurrentLocationObserver()V

    return-void
.end method

.method protected display()V
    .locals 0

    .prologue
    return-void
.end method

.method public final enable()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mCurLocationManager:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;->registerCurrentLocationObserver(Lcom/samsung/android/contextaware/manager/ICurrrentLocationObserver;)V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STAYING_ALERT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Action"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CurLatitude"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CurLongitude"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CurAltitude"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 3

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [B

    .local v0, "packet":[B
    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mStopPeriod:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mWaitPeriod:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    const/16 v0, 0x1b

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    return-object p0
.end method

.method public final parse([BI)I
    .locals 9
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v8, 0x2

    move v2, p2

    .local v2, "tmpNext":I
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .local v1, "names":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse start:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    array-length v4, p1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_1

    :cond_0
    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v0, p1, v2

    .local v0, "data":I
    if-ne v0, v8, :cond_2

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mCurLocationManager:Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentLocationManager;->enable()V

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse end:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    move v2, v3

    .end local v3    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    goto :goto_0

    .end local v2    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    :cond_2
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    iget-wide v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mCurLatitude:D

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    aget-object v5, v1, v8

    iget-wide v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mCurLongitude:D

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, v1, v5

    iget-wide v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mCurAltitude:D

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    goto :goto_1
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 7
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/16 v6, 0x1b

    const/4 v5, 0x1

    const/4 v0, 0x1

    .local v0, "result":Z
    const/16 v3, 0x17

    if-ne p1, v3, :cond_0

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "stopPeriod":I
    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mStopPeriod:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop Period = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-static {v1, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    invoke-virtual {p0, v6, v5, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->sendPropertyValueToSensorHub(BB[B)Z

    move-result v0

    .end local v1    # "stopPeriod":I
    :goto_0
    return v0

    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    const/16 v3, 0x18

    if-ne p1, v3, :cond_1

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "waitPeriod":I
    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mWaitPeriod:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wait Period = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-static {v2, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    invoke-virtual {p0, v6, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->sendPropertyValueToSensorHub(BB[B)Z

    move-result v0

    goto :goto_0

    .end local v2    # "waitPeriod":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final updateCurrentLocation(JJDDD)V
    .locals 9
    .param p1, "sysTime"    # J
    .param p3, "timeStamp"    # J
    .param p5, "latitude"    # D
    .param p7, "longitude"    # D
    .param p9, "altitude"    # D

    .prologue
    iput-wide p5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mCurLatitude:D

    move-wide/from16 v0, p7

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mCurLongitude:D

    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->mCurAltitude:D

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, p5

    double-to-int v5, v6

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    .local v3, "latBuf":[B
    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double v6, v6, p7

    double-to-int v5, v6

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    .local v4, "longBuf":[B
    const/16 v5, 0x8

    new-array v2, v5, [B

    .local v2, "dataPacket":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {v3, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v5, 0x1b

    const/4 v6, 0x3

    invoke-virtual {p0, v5, v6, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/StayingAlertRunner;->sendPropertyValueToSensorHub(BB[B)Z

    return-void
.end method
