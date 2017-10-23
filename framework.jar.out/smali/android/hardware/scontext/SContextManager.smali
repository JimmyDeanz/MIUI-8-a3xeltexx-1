.class public Landroid/hardware/scontext/SContextManager;
.super Ljava/lang/Object;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextManager"


# instance fields
.field private mAvailableServiceMap:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;

.field private mSContextService:Landroid/hardware/scontext/ISContextService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "mainLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 123
    iput-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 126
    iput-object v1, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    .line 135
    const-string/jumbo v0, "scontext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/scontext/ISContextService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    .line 137
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    .line 138
    return-void
.end method

.method static synthetic access$200(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/SContextManager;
    .param p1, "x1"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->checkHistoryMode(Landroid/hardware/scontext/SContextEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/hardware/scontext/SContextManager;)Landroid/hardware/scontext/SContextListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/SContextManager;

    .prologue
    .line 111
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method private addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;
    .locals 1
    .param p1, "service"    # I

    .prologue
    .line 1331
    const/4 v0, 0x0

    .line 1332
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    sparse-switch p1, :sswitch_data_0

    .line 1414
    new-instance v0, Landroid/hardware/scontext/SContextAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 1417
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :goto_0
    return-object v0

    .line 1334
    :sswitch_0
    new-instance v0, Landroid/hardware/scontext/SContextApproachAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextApproachAttribute;-><init>()V

    .line 1335
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1338
    :sswitch_1
    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>()V

    .line 1339
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1342
    :sswitch_2
    new-instance v0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;-><init>()V

    .line 1343
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1346
    :sswitch_3
    new-instance v0, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>()V

    .line 1347
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1350
    :sswitch_4
    new-instance v0, Landroid/hardware/scontext/SContextEnvironmentAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextEnvironmentAttribute;-><init>()V

    .line 1351
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1354
    :sswitch_5
    new-instance v0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;-><init>()V

    .line 1355
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1358
    :sswitch_6
    new-instance v0, Landroid/hardware/scontext/SContextShakeMotionAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextShakeMotionAttribute;-><init>()V

    .line 1359
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1362
    :sswitch_7
    new-instance v0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;-><init>()V

    .line 1363
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1366
    :sswitch_8
    new-instance v0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;-><init>()V

    .line 1367
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1370
    :sswitch_9
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;-><init>()V

    .line 1371
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1374
    :sswitch_a
    new-instance v0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;-><init>()V

    .line 1375
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1378
    :sswitch_b
    new-instance v0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;-><init>()V

    .line 1379
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1382
    :sswitch_c
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;-><init>()V

    .line 1383
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1386
    :sswitch_d
    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>()V

    .line 1387
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1390
    :sswitch_e
    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>()V

    .line 1391
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1394
    :sswitch_f
    new-instance v0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;-><init>()V

    .line 1395
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1398
    :sswitch_10
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>()V

    .line 1399
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1402
    :sswitch_11
    new-instance v0, Landroid/hardware/scontext/SContextExerciseAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextExerciseAttribute;-><init>()V

    .line 1403
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1406
    :sswitch_12
    new-instance v0, Landroid/hardware/scontext/SContextSLocationCoreAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextSLocationCoreAttribute;-><init>()V

    .line 1407
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1410
    :sswitch_13
    new-instance v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitorAttribute;-><init>()V

    .line 1411
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 1332
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x6 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0xc -> :sswitch_6
        0x17 -> :sswitch_7
        0x18 -> :sswitch_8
        0x1b -> :sswitch_9
        0x1c -> :sswitch_a
        0x1d -> :sswitch_b
        0x1e -> :sswitch_c
        0x21 -> :sswitch_d
        0x23 -> :sswitch_e
        0x24 -> :sswitch_f
        0x27 -> :sswitch_10
        0x28 -> :sswitch_11
        0x2f -> :sswitch_12
        0x33 -> :sswitch_13
    .end sparse-switch
.end method

.method private checkHistoryMode(Landroid/hardware/scontext/SContextEvent;)Z
    .locals 7
    .param p1, "scontextevent"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/4 v6, 0x1

    .line 1421
    const/4 v2, 0x0

    .line 1422
    .local v2, "res":Z
    iget-object v5, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v5}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v4

    .line 1424
    .local v4, "type":I
    sparse-switch v4, :sswitch_data_0

    .line 1445
    :cond_0
    :goto_0
    return v2

    .line 1426
    :sswitch_0
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getPedometerContext()Landroid/hardware/scontext/SContextPedometer;

    move-result-object v1

    .line 1427
    .local v1, "pedometerContext":Landroid/hardware/scontext/SContextPedometer;
    invoke-virtual {v1}, Landroid/hardware/scontext/SContextPedometer;->getMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1428
    const/4 v2, 0x1

    goto :goto_0

    .line 1431
    .end local v1    # "pedometerContext":Landroid/hardware/scontext/SContextPedometer;
    :sswitch_1
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getStepLevelMonitorContext()Landroid/hardware/scontext/SContextStepLevelMonitor;

    move-result-object v3

    .line 1433
    .local v3, "stepLevelMonitorContext":Landroid/hardware/scontext/SContextStepLevelMonitor;
    invoke-virtual {v3}, Landroid/hardware/scontext/SContextStepLevelMonitor;->getMode()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 1434
    const/4 v2, 0x1

    goto :goto_0

    .line 1437
    .end local v3    # "stepLevelMonitorContext":Landroid/hardware/scontext/SContextStepLevelMonitor;
    :sswitch_2
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getActivityBatchContext()Landroid/hardware/scontext/SContextActivityBatch;

    move-result-object v0

    .line 1439
    .local v0, "activityBatchContext":Landroid/hardware/scontext/SContextActivityBatch;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextActivityBatch;->getMode()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 1440
    const/4 v2, 0x1

    goto :goto_0

    .line 1424
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x1a -> :sswitch_2
        0x21 -> :sswitch_1
    .end sparse-switch
.end method

.method private checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 1320
    const/4 v0, 0x0

    .line 1321
    .local v0, "res":Z
    if-nez p1, :cond_0

    .line 1322
    const-string v2, "SContextManager"

    const-string v3, "Listener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1326
    .end local v0    # "res":Z
    .local v1, "res":I
    :goto_0
    return v1

    .line 1325
    .end local v1    # "res":I
    .restart local v0    # "res":Z
    :cond_0
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    move v1, v0

    .line 1326
    .restart local v1    # "res":I
    goto :goto_0
.end method

.method private getAvailableServiceMap()Ljava/util/HashMap;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1278
    const/4 v2, 0x0

    .line 1280
    .local v2, "serviceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v3}, Landroid/hardware/scontext/ISContextService;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashMap;

    move-object v2, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    :goto_0
    return-object v2

    .line 1281
    :catch_0
    move-exception v1

    .line 1282
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SContextManager"

    const-string v4, "RemoteException in getAvailableServiceMap: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .locals 4
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;

    .prologue
    .line 1294
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1295
    :cond_0
    const/4 v2, 0x0

    .line 1309
    :cond_1
    :goto_0
    return-object v2

    .line 1298
    :cond_2
    const/4 v2, 0x0

    .line 1300
    .local v2, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1301
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1302
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .line 1303
    .local v0, "delegate":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1304
    move-object v2, v0

    .line 1305
    goto :goto_0
.end method


# virtual methods
.method public changeParameters(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 963
    const/4 v0, 0x0

    .line 964
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 965
    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(I)V

    .line 969
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 971
    .local v1, "res":Z
    return v1

    .line 966
    .end local v1    # "res":Z
    :cond_1
    const/16 v2, 0x21

    if-ne p2, v2, :cond_0

    .line 967
    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>(I)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 8
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 937
    const/4 v0, 0x0

    .line 938
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 939
    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(IDD)V

    .line 941
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    .line 943
    .local v6, "res":Z
    return v6
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 910
    const/4 v0, 0x0

    .line 911
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    .line 912
    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v1, 0x1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    .line 915
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    .line 917
    .local v6, "res":Z
    return v6
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 855
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v4

    if-nez v4, :cond_1

    .line 888
    :cond_0
    :goto_0
    return v2

    .line 859
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 863
    if-eq p2, v3, :cond_2

    const/4 v4, 0x2

    if-eq p2, v4, :cond_2

    const/16 v4, 0x21

    if-eq p2, v4, :cond_2

    const/16 v4, 0x23

    if-eq p2, v4, :cond_2

    const/16 v4, 0x27

    if-eq p2, v4, :cond_2

    const/16 v4, 0x2f

    if-eq p2, v4, :cond_2

    const/16 v4, 0x33

    if-ne p2, v4, :cond_0

    .line 871
    :cond_2
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 873
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_3

    .line 874
    const-string v3, "SContextManager"

    const-string v4, "  .changeParameters : SContextListener is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 879
    :cond_3
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2, p3}, Landroid/hardware/scontext/ISContextService;->changeParameters(Landroid/os/IBinder;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 880
    const-string v2, "SContextManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .changeParameters : listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    move v2, v3

    .line 886
    goto :goto_0

    .line 883
    :catch_0
    move-exception v0

    .line 884
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v4, "RemoteException in changeParameters: "

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getFeatureLevel(I)I
    .locals 2
    .param p1, "service"    # I

    .prologue
    .line 1116
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initializeSContextService(Landroid/hardware/scontext/SContextListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 792
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 798
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_2

    .line 799
    const-string v2, "SContextManager"

    const-string v3, "  .initializeSContextService : SContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 804
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->initializeService(Landroid/os/IBinder;I)V

    .line 805
    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .initializeSContextService : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in initializeSContextService: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isAvailableService(I)Z
    .locals 3
    .param p1, "service"    # I

    .prologue
    .line 1094
    const/4 v0, 0x0

    .line 1095
    .local v0, "res":Z
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 1096
    invoke-direct {p0}, Landroid/hardware/scontext/SContextManager;->getAvailableServiceMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 1098
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 1099
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1100
    const/16 v1, 0x2f

    if-ne p1, v1, :cond_1

    .line 1101
    const-string v1, "BCM4773_SLOCATION_CORE"

    const-string/jumbo v2, "ro.gps.chip.vendor.slocation"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1102
    const/4 v0, 0x0

    .line 1106
    :cond_1
    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 2
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextManager;->addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;

    move-result-object v0

    .line 151
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 153
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 419
    new-instance v0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;-><init>(I)V

    .line 429
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 431
    .local v1, "res":Z
    return v1

    .line 420
    .end local v1    # "res":Z
    :cond_1
    const/4 v2, 0x6

    if-ne p2, v2, :cond_2

    .line 421
    new-instance v0, Landroid/hardware/scontext/SContextAutoRotationAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextAutoRotationAttribute;-><init>(I)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 422
    :cond_2
    const/16 v2, 0x10

    if-ne p2, v2, :cond_3

    .line 423
    new-instance v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;-><init>(I)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 424
    :cond_3
    const/16 v2, 0x21

    if-ne p2, v2, :cond_4

    .line 425
    new-instance v0, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextStepLevelMonitorAttribute;-><init>(I)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 426
    :cond_4
    const/16 v2, 0x24

    if-ne p2, v2, :cond_0

    .line 427
    new-instance v0, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextFlatMotionForTableModeAttribute;-><init>(I)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 8
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 567
    new-instance v0, Landroid/hardware/scontext/SContextPedometerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextPedometerAttribute;-><init>(IDD)V

    .line 569
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    .line 571
    .local v6, "res":Z
    return v6
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;III)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x8

    if-ne p2, v2, :cond_1

    .line 507
    new-instance v0, Landroid/hardware/scontext/SContextEnvironmentAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextEnvironmentAttribute;-><init>(II)V

    .line 514
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 516
    .local v1, "res":Z
    return v1

    .line 508
    .end local v1    # "res":Z
    :cond_1
    const/16 v2, 0xc

    if-ne p2, v2, :cond_2

    .line 509
    new-instance v0, Landroid/hardware/scontext/SContextShakeMotionAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextShakeMotionAttribute;-><init>(II)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0

    .line 510
    :cond_2
    const/16 v2, 0x1d

    if-ne p2, v2, :cond_0

    .line 511
    new-instance v0, Landroid/hardware/scontext/SContextSleepMonitorAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextSleepMonitorAttribute;-><init>(II)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIDI)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # D
    .param p7, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 627
    const/4 v1, 0x0

    .line 628
    .local v1, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x9

    if-ne p2, v2, :cond_0

    .line 629
    new-instance v1, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;

    .end local v1    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v2, p3

    move v3, p4

    move-wide v4, p5

    move v6, p7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;-><init>(IIDI)V

    .line 631
    .restart local v1    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v0

    .line 633
    .local v0, "res":Z
    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIII)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v4, 0x5dc

    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    .line 540
    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v1, p3

    move v2, p4

    move v3, p5

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    .line 543
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    .line 545
    .local v6, "res":Z
    return v6
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 659
    const/4 v0, 0x0

    .line 660
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x1c

    if-ne p2, v2, :cond_0

    .line 661
    new-instance v0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4, p5, p6}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;-><init>(IIII)V

    .line 663
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 665
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIIII)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .param p7, "arg5"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 698
    const/4 v0, 0x0

    .line 699
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v1, 0x18

    if-ne p2, v1, :cond_1

    .line 700
    new-instance v0, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextActivityLocationLoggingAttribute;-><init>(IIIII)V

    .line 704
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v6

    .line 706
    .local v6, "res":Z
    return v6

    .line 701
    .end local v6    # "res":Z
    :cond_1
    const/16 v1, 0x23

    if-ne p2, v1, :cond_0

    .line 702
    new-instance v0, Landroid/hardware/scontext/SContextInactiveTimerAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/hardware/scontext/SContextInactiveTimerAttribute;-><init>(IIIII)V

    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIZ)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x17

    if-ne p2, v2, :cond_0

    .line 597
    new-instance v0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4, p5}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;-><init>(IIZ)V

    .line 599
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 601
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    const/4 v1, 0x0

    .line 255
    const/16 v3, 0x30

    if-ne p2, v3, :cond_1

    .line 256
    const/4 v1, 0x0

    .line 257
    .local v1, "res":Z
    invoke-virtual {p0, p2, p3}, Landroid/hardware/scontext/SContextManager;->setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 289
    .end local v1    # "res":Z
    :cond_0
    :goto_0
    return v1

    .line 261
    :cond_1
    if-eqz p3, :cond_0

    .line 264
    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v2

    .line 275
    .local v2, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v2, :cond_2

    .line 276
    new-instance v2, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .end local v2    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3, v1}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V

    .line 277
    .restart local v2    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_2
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v3, v2, p2, p3}, Landroid/hardware/scontext/ISContextService;->registerCallback(Landroid/os/IBinder;ILandroid/hardware/scontext/SContextAttribute;)V

    .line 282
    const-string v3, "SContextManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .registerListener : listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SContextManager"

    const-string v4, "RemoteException in registerListener: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;Landroid/os/Looper;)Z
    .locals 5
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "attribute"    # Landroid/hardware/scontext/SContextAttribute;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 366
    if-nez p3, :cond_1

    .line 394
    :cond_0
    :goto_0
    return v2

    .line 369
    :cond_1
    invoke-virtual {p3}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 380
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_2

    .line 381
    new-instance v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .end local v1    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    invoke-direct {v1, p0, p1, p4, v2}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V

    .line 382
    .restart local v1    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2, p3}, Landroid/hardware/scontext/ISContextService;->registerCallback(Landroid/os/IBinder;ILandroid/hardware/scontext/SContextAttribute;)V

    .line 387
    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .registerListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in registerListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/os/Looper;)Z
    .locals 2
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextManager;->addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;

    move-result-object v0

    .line 181
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;Landroid/os/Looper;)Z

    move-result v1

    .line 183
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I[I)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x1b

    if-ne p2, v2, :cond_0

    .line 452
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;-><init>([I)V

    .line 454
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 456
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I[II)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # [I
    .param p4, "arg2"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    const/16 v2, 0x1e

    if-ne p2, v2, :cond_0

    .line 479
    new-instance v0, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p3, p4}, Landroid/hardware/scontext/SContextActivityNotificationExAttribute;-><init>([II)V

    .line 482
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    .line 484
    .local v1, "res":Z
    return v1
.end method

.method public requestHistoryData(Landroid/hardware/scontext/SContextListener;I)V
    .locals 6
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 1033
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    const/16 v3, 0x21

    if-eq p2, v3, :cond_2

    const/16 v3, 0x1a

    if-eq p2, v3, :cond_2

    .line 1040
    const-string v3, "SContextManager"

    const-string v4, "  .requestHistoryData : This service is not supported!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1044
    :cond_2
    const/4 v0, 0x0

    .line 1045
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {p0, p2}, Landroid/hardware/scontext/SContextManager;->addListenerAttribute(I)Landroid/hardware/scontext/SContextAttribute;

    move-result-object v0

    .line 1047
    if-eqz v0, :cond_0

    .line 1050
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextAttribute;->checkAttribute()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1055
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1059
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v2

    .line 1060
    .local v2, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mIsHistoryDataListener:Landroid/hardware/scontext/SContextListener;

    .line 1062
    if-nez v2, :cond_3

    .line 1063
    new-instance v2, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .end local v2    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, p0, p1, v3, v4}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Looper;Z)V

    .line 1064
    .restart local v2    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1067
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v3, v2, p2, v0}, Landroid/hardware/scontext/ISContextService;->registerCallback(Landroid/os/IBinder;ILandroid/hardware/scontext/SContextAttribute;)V

    .line 1068
    const-string v3, "SContextManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .registerListener : listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1077
    :cond_3
    :goto_1
    :try_start_1
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v3, v2, p2}, Landroid/hardware/scontext/ISContextService;->requestHistoryData(Landroid/os/IBinder;I)V

    .line 1078
    const-string v3, "SContextManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .requestHistoryData : listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1081
    :catch_0
    move-exception v1

    .line 1082
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SContextManager"

    const-string v4, "RemoteException in requestHistoryData: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1071
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1072
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v3, "SContextManager"

    const-string v4, "RemoteException in registerListener: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public requestToUpdate(Landroid/hardware/scontext/SContextListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 987
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1018
    :goto_0
    return-void

    .line 991
    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/16 v2, 0x19

    if-eq p2, v2, :cond_1

    const/16 v2, 0x1a

    if-eq p2, v2, :cond_1

    const/16 v2, 0x1d

    if-eq p2, v2, :cond_1

    const/16 v2, 0x28

    if-eq p2, v2, :cond_1

    const/16 v2, 0x32

    if-eq p2, v2, :cond_1

    const/16 v2, 0x33

    if-eq p2, v2, :cond_1

    const/16 v2, 0x34

    if-eq p2, v2, :cond_1

    .line 999
    const-string v2, "SContextManager"

    const-string v3, "  .requestToUpdate : This service is not supported!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1003
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 1005
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_2

    .line 1006
    const-string v2, "SContextManager"

    const-string v3, "  .requestToUpdate : SContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1011
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->requestToUpdate(Landroid/os/IBinder;I)V

    .line 1012
    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .requestToUpdate : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in requestToUpdate: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z
    .locals 12
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    const/16 v10, 0x30

    .line 1186
    const/4 v6, 0x0

    .line 1187
    .local v6, "res":Z
    iget-object v9, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    if-eqz v9, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v7, v6

    .line 1269
    .end local v6    # "res":Z
    .local v7, "res":I
    :goto_0
    return v7

    .line 1191
    .end local v7    # "res":I
    .restart local v6    # "res":Z
    :cond_1
    const/4 v0, 0x0

    .line 1192
    .local v0, "bundle":Landroid/os/Bundle;
    if-ne p1, v10, :cond_2

    .line 1193
    const/4 v9, 0x3

    invoke-virtual {p2, v9}, Landroid/hardware/scontext/SContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1198
    :goto_1
    if-nez v0, :cond_3

    move v7, v6

    .line 1199
    .restart local v7    # "res":I
    goto :goto_0

    .line 1195
    .end local v7    # "res":I
    :cond_2
    invoke-virtual {p2, p1}, Landroid/hardware/scontext/SContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 1203
    :cond_3
    sparse-switch p1, :sswitch_data_0

    :cond_4
    :goto_2
    move v7, v6

    .line 1269
    .restart local v7    # "res":I
    goto :goto_0

    .line 1205
    .end local v7    # "res":I
    :sswitch_0
    :try_start_0
    const-string/jumbo v9, "net_data"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string/jumbo v9, "gram_data"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1206
    const-string/jumbo v9, "net_data"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 1207
    .local v5, "netData":[B
    const-string/jumbo v9, "gram_data"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 1208
    .local v2, "gramData":[B
    if-eqz v5, :cond_5

    if-nez v2, :cond_6

    :cond_5
    move v7, v6

    .line 1209
    .restart local v7    # "res":I
    goto :goto_0

    .line 1211
    .end local v7    # "res":I
    :cond_6
    iget-object v9, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const/4 v10, 0x1

    invoke-interface {v9, v10, v5}, Landroid/hardware/scontext/ISContextService;->setReferenceData(I[B)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const/4 v10, 0x2

    invoke-interface {v9, v10, v2}, Landroid/hardware/scontext/ISContextService;->setReferenceData(I[B)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1215
    const/4 v6, 0x1

    goto :goto_2

    .end local v2    # "gramData":[B
    .end local v5    # "netData":[B
    :cond_7
    move v7, v6

    .line 1218
    .restart local v7    # "res":I
    goto :goto_0

    .line 1222
    .end local v7    # "res":I
    :sswitch_1
    const-string/jumbo v9, "luminance_config_data"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1223
    const-string/jumbo v9, "luminance_config_data"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 1224
    .local v4, "luminanceConfigData":[B
    if-nez v4, :cond_8

    move v7, v6

    .line 1225
    .restart local v7    # "res":I
    goto :goto_0

    .line 1227
    .end local v7    # "res":I
    :cond_8
    iget-object v9, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const/4 v10, 0x0

    invoke-interface {v9, v10, v4}, Landroid/hardware/scontext/ISContextService;->setReferenceData(I[B)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1229
    const/4 v6, 0x1

    goto :goto_2

    .end local v4    # "luminanceConfigData":[B
    :cond_9
    move v7, v6

    .line 1232
    .restart local v7    # "res":I
    goto :goto_0

    .line 1236
    .end local v7    # "res":I
    :sswitch_2
    const-string/jumbo v9, "step_count"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1237
    const/4 v9, 0x1

    new-array v8, v9, [B

    .line 1238
    .local v8, "sysfsMode":[B
    const/4 v9, 0x0

    const-string/jumbo v10, "step_count"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 1239
    const-string v9, "SContextManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sysfs data : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v11, v8, v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    iget-object v9, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const/16 v10, 0x30

    invoke-interface {v9, v10, v8}, Landroid/hardware/scontext/ISContextService;->setReferenceData(I[B)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1242
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 1245
    .end local v8    # "sysfsMode":[B
    :cond_a
    const-string v9, "SContextManager"

    const-string v10, "Bundle is not contained key data"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 1246
    .restart local v7    # "res":I
    goto/16 :goto_0

    .line 1250
    .end local v7    # "res":I
    :sswitch_3
    const-string v9, "display_status"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1251
    const/4 v9, 0x1

    new-array v3, v9, [B

    .line 1252
    .local v3, "hallSensorStatus":[B
    const/4 v9, 0x0

    const-string v10, "display_status"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    .line 1253
    const-string v9, "SContextManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Hall Sensor Data : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v11, v3, v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    iget-object v9, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const/16 v10, 0x2b

    invoke-interface {v9, v10, v3}, Landroid/hardware/scontext/ISContextService;->setReferenceData(I[B)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1256
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 1259
    .end local v3    # "hallSensorStatus":[B
    :cond_b
    const-string v9, "SContextManager"

    const-string v10, "Bundle is not contained key data"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v6

    .line 1260
    .restart local v7    # "res":I
    goto/16 :goto_0

    .line 1266
    .end local v7    # "res":I
    :catch_0
    move-exception v1

    .line 1267
    .local v1, "e":Landroid/os/RemoteException;
    const-string v9, "SContextManager"

    const-string v10, "RemoteException in initializeSContextService: "

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1203
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x27 -> :sswitch_1
        0x2b -> :sswitch_3
        0x30 -> :sswitch_2
    .end sparse-switch
.end method

.method public setReferenceData(I[B[B)Z
    .locals 4
    .param p1, "service"    # I
    .param p2, "data1"    # [B
    .param p3, "data2"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1140
    const/4 v1, 0x0

    .line 1141
    .local v1, "res":Z
    const/4 v0, 0x0

    .line 1142
    .local v0, "attribute":Landroid/hardware/scontext/SContextAttribute;
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v2, v1

    .line 1150
    .end local v1    # "res":Z
    .local v2, "res":I
    :goto_0
    return v2

    .line 1146
    .end local v2    # "res":I
    .restart local v1    # "res":Z
    :cond_1
    const/16 v3, 0x10

    if-ne p1, v3, :cond_2

    .line 1147
    new-instance v0, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;

    .end local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    invoke-direct {v0, p2, p3}, Landroid/hardware/scontext/SContextWakeUpVoiceAttribute;-><init>([B[B)V

    .line 1149
    .restart local v0    # "attribute":Landroid/hardware/scontext/SContextAttribute;
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->setReferenceData(ILandroid/hardware/scontext/SContextAttribute;)Z

    move-result v1

    move v2, v1

    .line 1150
    .restart local v2    # "res":I
    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;)V
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;

    .prologue
    .line 715
    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 720
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 721
    .local v3, "service":I
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v2

    .line 722
    .local v2, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-eqz v2, :cond_0

    .line 727
    :try_start_0
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v4, v2, v3}, Landroid/hardware/scontext/ISContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 728
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 729
    const-string v4, "SContextManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .unregisterListener : listener = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "SContextManager"

    const-string v5, "RemoteException in unregisterListener: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 747
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 768
    :goto_0
    return-void

    .line 751
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 753
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_1

    .line 754
    const-string v2, "SContextManager"

    const-string v3, "  .unregisterListener : SContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 759
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 760
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 762
    :cond_2
    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .unregisterListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 765
    :catch_0
    move-exception v0

    .line 766
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in unregisterListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
