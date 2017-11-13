.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "AutoBrightnessRunner.java"


# instance fields
.field mConfigData:[B

.field mDeviceMode:B

.field mOffsetData:[B


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 2
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 43
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->mDeviceMode:B

    .line 44
    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->mConfigData:[B

    .line 45
    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->mOffsetData:[B

    .line 62
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    .line 297
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 298
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 299
    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 286
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 287
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 288
    return-void
.end method

.method public final enable()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x17

    const/4 v1, 0x2

    .line 256
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 258
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->mConfigData:[B

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->mConfigData:[B

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->mOffsetData:[B

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->mOffsetData:[B

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 274
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 275
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_AUTO_BRIGHTNESS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Candela"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AmbientLux"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 3

    .prologue
    .line 94
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 96
    .local v0, "packet":[B
    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->mDeviceMode:B

    aput-byte v2, v0, v1

    .line 98
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 312
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x30

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 232
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 244
    return-object p0
.end method

.method public final parse([BI)I
    .locals 12
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 192
    move v1, p2

    .line 194
    .local v1, "tmpNext":I
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "names":[Ljava/lang/String;
    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x8

    if-gez v3, :cond_0

    .line 197
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 198
    const/4 v3, -0x1

    .line 221
    :goto_0
    return v3

    .line 201
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v7

    new-array v5, v11, [B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v2, "tmpNext":I
    aget-byte v6, p1, v1

    aput-byte v6, v5, v7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v6, p1, v2

    aput-byte v6, v5, v8

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v6, p1, v1

    aput-byte v6, v5, v9

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v6, p1, v2

    aput-byte v6, v5, v10

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 210
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v0, v8

    new-array v5, v11, [B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v6, p1, v1

    aput-byte v6, v5, v7

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v6, p1, v2

    aput-byte v6, v5, v8

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v6, p1, v1

    aput-byte v6, v5, v9

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v6, p1, v2

    aput-byte v6, v5, v10

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 219
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move v3, v1

    .line 221
    goto :goto_0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 11
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
    const/16 v10, 0x30

    const/16 v9, 0x17

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 125
    const/4 v2, 0x1

    .line 126
    .local v2, "result":Z
    const/16 v4, 0x40

    if-ne p1, v4, :cond_1

    .line 127
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 129
    .local v1, "mode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mode = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 131
    if-eqz v1, :cond_0

    if-eq v1, v7, :cond_0

    if-eq v1, v8, :cond_0

    .line 134
    const-string v4, "invalid value for mode"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    move v4, v5

    .line 180
    .end local v1    # "mode":I
    :goto_0
    return v4

    .line 137
    .restart local v1    # "mode":I
    :cond_0
    int-to-byte v4, v1

    iput-byte v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->mDeviceMode:B

    .line 139
    invoke-static {v1, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    invoke-virtual {p0, v9, v10, v7, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .end local v1    # "mode":I
    :goto_1
    move v4, v2

    .line 180
    goto :goto_0

    .line 144
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    const/16 v4, 0x41

    if-ne p1, v4, :cond_7

    .line 145
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 148
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    :cond_2
    const-string/jumbo v4, "value is null"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v4, v5

    .line 150
    goto :goto_0

    .line 153
    :cond_3
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 154
    .local v0, "dataPacket":[B
    if-eqz v0, :cond_4

    array-length v4, v0

    if-gtz v4, :cond_5

    .line 155
    :cond_4
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LENGTH_ZERO:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v4, v5

    .line 158
    goto :goto_0

    .line 161
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CFG = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 163
    aget-byte v4, v0, v5

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    .line 164
    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->mOffsetData:[B

    .line 166
    invoke-virtual {p0, v9, v10, v8, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto :goto_1

    .line 173
    :cond_6
    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->mConfigData:[B

    goto :goto_1

    .line 178
    .end local v0    # "dataPacket":[B
    .end local v3    # "str":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_7
    const/4 v2, 0x0

    goto :goto_1
.end method
