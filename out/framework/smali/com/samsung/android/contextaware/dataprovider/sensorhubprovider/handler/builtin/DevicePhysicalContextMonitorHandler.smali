.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;
.source "DevicePhysicalContextMonitorHandler.java"


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final disable()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method protected final enable()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method protected final getModeList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 59
    .local v0, "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_DEVICE_PHYSICAL_CONTEXT_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-object v0
.end method
