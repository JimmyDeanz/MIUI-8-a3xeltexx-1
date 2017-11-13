.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;
.source "EnvironmentSensorHandler.java"


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x3c

.field private static volatile instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;


# instance fields
.field private mInterval:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mInterval:I

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;
    .locals 2

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getParserKey(I)Ljava/lang/String;
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    .local v4, "parserKey":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->values()[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .local v2, "j":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;
    iget-byte v5, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->value:B

    if-eq p1, v5, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-super {p0, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v2    # "j":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;
    :cond_2
    return-object v4
.end method


# virtual methods
.method protected final getInterval()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mInterval:I

    return v0
.end method

.method public final parse([BI)I
    .locals 10
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v9, -0x1

    move v6, p2

    .local v6, "tmpNext":I
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap()Z

    move-result v8

    if-nez v8, :cond_0

    move v7, v9

    :goto_0
    return v7

    :cond_0
    array-length v8, p1

    sub-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_1

    move v7, v9

    goto :goto_0

    :cond_1
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "tmpNext":I
    .local v7, "tmpNext":I
    aget-byte v2, p1, v6

    .local v2, "loggingStatus":I
    const/4 v8, 0x2

    if-eq v2, v8, :cond_2

    const/4 v8, 0x1

    if-eq v2, v8, :cond_2

    sget-object v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_ENVIRONMENT_LOGGING_STATE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v6, v7

    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    move v7, v9

    goto :goto_0

    .end local v6    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :cond_2
    array-length v8, p1

    sub-int/2addr v8, v7

    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_3

    move v6, v7

    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    move v7, v9

    goto :goto_0

    .end local v6    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :cond_3
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    aget-byte v3, p1, v7

    .local v3, "packageCount":I
    if-gtz v3, :cond_4

    sget-object v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_ENVIRONMENT_PACKAGE_SIZE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v7, v9

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    move v7, v6

    .end local v6    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :goto_1
    if-ge v0, v3, :cond_8

    array-length v8, p1

    sub-int/2addr v8, v7

    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_5

    move v6, v7

    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    move v7, v9

    goto :goto_0

    .end local v6    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :cond_5
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    aget-byte v5, p1, v7

    .local v5, "sensorType":I
    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->getParserKey(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    if-nez v1, :cond_7

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v7, v6

    .end local v6    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    goto :goto_1

    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    :cond_7
    invoke-super {p0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->checkParserMap(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-super {p0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserBean;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v4

    .local v4, "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    if-eqz v4, :cond_6

    move-object v8, v4

    check-cast v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;

    invoke-virtual {v8, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->setLoggingStatus(I)V

    invoke-interface {v4, p1, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v6

    goto :goto_2

    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    .end local v5    # "sensorType":I
    .end local v6    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    :cond_8
    move v6, v7

    .end local v7    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    goto :goto_0
.end method

.method protected final setInterval(I)V
    .locals 0
    .param p1, "interval"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mInterval:I

    return-void
.end method
