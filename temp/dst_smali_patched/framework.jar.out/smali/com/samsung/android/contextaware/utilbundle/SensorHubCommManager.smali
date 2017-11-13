.class public Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;
.super Ljava/lang/Object;
.source "SensorHubCommManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;


# instance fields
.field private mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs generatePacket([B[B)[B
    .locals 9
    .param p1, "data"    # [B
    .param p2, "headerData"    # [B

    .prologue
    array-length v1, p2

    .local v1, "headerLength":I
    const/4 v8, 0x2

    if-lt v1, v8, :cond_0

    const/4 v8, 0x4

    if-le v1, v8, :cond_2

    :cond_0
    const/4 v7, 0x0

    :cond_1
    return-object v7

    :cond_2
    const/4 v4, 0x0

    .local v4, "index":I
    array-length v8, p1

    add-int/2addr v8, v1

    new-array v7, v8, [B

    .local v7, "packet":[B
    move-object v0, p2

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v5, v4

    .end local v4    # "index":I
    .local v5, "index":I
    :goto_0
    if-ge v3, v6, :cond_3

    aget-byte v2, v0, v3

    .local v2, "i":B
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    aput-byte v2, v7, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_0

    .end local v2    # "i":B
    :cond_3
    move-object v0, p1

    array-length v6, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_1

    aget-byte v2, v0, v3

    .restart local v2    # "i":B
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    aput-byte v2, v7, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_1
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;
    .locals 2

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getSensorHubManager()Lcom/samsung/android/sensorhub/SensorHubManager;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    return-object v0
.end method

.method private setSensorHubManager(Lcom/samsung/android/sensorhub/SensorHubManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/samsung/android/sensorhub/SensorHubManager;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    return-void
.end method


# virtual methods
.method public final initializeManager(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    if-nez p1, :cond_1

    const-string v0, "Context is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "sensorhub"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sensorhub/SensorHubManager;

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->setSensorHubManager(Lcom/samsung/android/sensorhub/SensorHubManager;)V

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getSensorHubManager()Lcom/samsung/android/sensorhub/SensorHubManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "mSensorHubManager is null."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final varargs sendCmdToSensorHub([B[B)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "headerData"    # [B

    .prologue
    array-length v0, p2

    .local v0, "headerLength":I
    const/4 v4, 0x2

    if-lt v0, v4, :cond_0

    const/4 v4, 0x4

    if-le v0, v4, :cond_2

    :cond_0
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_HEADER_LENGTH:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->generatePacket([B[B)[B

    move-result-object v1

    .local v1, "packet":[B
    if-eqz v1, :cond_3

    array-length v4, v1

    if-gtz v4, :cond_4

    :cond_3
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_GENERATION_FAIL:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v3

    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const-string v4, "Packet is null"

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    :goto_1
    array-length v4, v1

    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendPacketToSensorHub(I[B)I

    move-result v2

    .local v2, "result":I
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    if-eq v2, v4, :cond_1

    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "result":I
    :cond_6
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final sendPacketToSensorHub(I[B)I
    .locals 5
    .param p1, "len"    # I
    .param p2, "packet"    # [B

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getSensorHubManager()Lcom/samsung/android/sensorhub/SensorHubManager;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_SENSOR_HUB_MANAGER_NULL_EXEPTION:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getSensorHubManager()Lcom/samsung/android/sensorhub/SensorHubManager;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getSensorHubManager()Lcom/samsung/android/sensorhub/SensorHubManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Lcom/samsung/android/sensorhub/SensorHub;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Lcom/samsung/android/sensorhub/SensorHubManager;->SendSensorHubData(Lcom/samsung/android/sensorhub/SensorHub;I[B)I

    move-result v0

    .local v0, "result":I
    if-lez v0, :cond_3

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    :goto_1
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v1

    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    const-string v2, "Packet is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    :goto_2
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_0

    .end local v1    # "str":Ljava/lang/String;
    :cond_3
    const/4 v2, -0x5

    if-ne v0, v2, :cond_4

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_I2C_COMM:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_1

    :cond_4
    const/16 v2, -0xb

    if-ne v0, v2, :cond_5

    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_RECEIVE_ACK:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_SENSOR_HUB_MANAGER_FAULT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_1

    .restart local v1    # "str":Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to deliver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final terminateManager()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->setSensorHubManager(Lcom/samsung/android/sensorhub/SensorHubManager;)V

    return-void
.end method

.method public final varargs testGeneratePacket([B[B)[B
    .locals 1
    .param p1, "data"    # [B
    .param p2, "headerData"    # [B
    .annotation runtime Landroid/test/FlakyTest;
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->generatePacket([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public final testGetSensorHubManager()Lcom/samsung/android/sensorhub/SensorHubManager;
    .locals 1
    .annotation runtime Landroid/test/FlakyTest;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->mSensorHubManager:Lcom/samsung/android/sensorhub/SensorHubManager;

    return-object v0
.end method
