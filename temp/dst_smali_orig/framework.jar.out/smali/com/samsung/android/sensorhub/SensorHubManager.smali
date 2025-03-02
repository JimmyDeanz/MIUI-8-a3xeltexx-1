.class public Lcom/samsung/android/sensorhub/SensorHubManager;
.super Ljava/lang/Object;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;,
        Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread;,
        Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;
    }
.end annotation


# static fields
.field public static final CONTEXT_DELAY:I = 0x0

.field public static final GESTURE_SENSOR_DELAY:I = 0x1

.field private static final SENSORHUB_DISABLE:I = -0x1

.field private static final SENSORHUB_DISABLE_FOR_DELAY:I = -0x1

.field private static final SENSORHUB_ENABLE:I = 0x1

.field private static final SENSORHUB_EVENT_SIZE:I = 0x4000

.field private static final TAG:Ljava/lang/String; = "SensorHubManager"

.field private static sFullSensorHubsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sensorhub/SensorHub;",
            ">;"
        }
    .end annotation
.end field

.field static sHandleToSensorHub:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/sensorhub/SensorHub;",
            ">;"
        }
    .end annotation
.end field

.field static final sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static sPool:Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;

.field private static sQueue:J

.field private static sSensorHubListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sensorhub/SensorHub;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sSensorHubModuleInitialized:Z

.field private static sSensorHubThread:Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread;


# instance fields
.field mMainLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sensorhub/SensorHubManager;->sSensorHubModuleInitialized:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/sensorhub/SensorHubManager;->sFullSensorHubsList:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/sensorhub/SensorHubManager;->sSensorHubListByType:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/sensorhub/SensorHubManager;->sHandleToSensorHub:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sensorhub/SensorHubManager;->mMainLooper:Landroid/os/Looper;

    sget-object v4, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    sget-boolean v3, Lcom/samsung/android/sensorhub/SensorHubManager;->sSensorHubModuleInitialized:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/android/sensorhub/SensorHubManager;->sSensorHubModuleInitialized:Z

    invoke-static {}, Lcom/samsung/android/sensorhub/SensorHubManager;->nativeClassInit()V

    invoke-static {}, Lcom/samsung/android/sensorhub/SensorHubManager;->sensorhubs_module_init()I

    const-string v3, "SensorHubManager"

    const-string v5, "sensorhubs_module_init()"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sensorhub/SensorHubManager;->sFullSensorHubsList:Ljava/util/ArrayList;

    .local v0, "fullList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sensorhub/SensorHub;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :cond_0
    new-instance v2, Lcom/samsung/android/sensorhub/SensorHub;

    invoke-direct {v2}, Lcom/samsung/android/sensorhub/SensorHub;-><init>()V

    .local v2, "sensorhub":Lcom/samsung/android/sensorhub/SensorHub;
    invoke-static {v2, v1}, Lcom/samsung/android/sensorhub/SensorHubManager;->sensorhubs_get_next_module(Lcom/samsung/android/sensorhub/SensorHub;I)I

    move-result v1

    const-string v3, "SensorHubManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Num SensorHub= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v1, :cond_1

    const-string v3, "SensorHubManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found sensorhub= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/sensorhub/SensorHub;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", handle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/sensorhub/SensorHub;->getHandle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/samsung/android/sensorhub/SensorHubManager;->sHandleToSensorHub:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/samsung/android/sensorhub/SensorHub;->getHandle()I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1
    if-gtz v1, :cond_0

    new-instance v3, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;

    sget-object v5, Lcom/samsung/android/sensorhub/SensorHubManager;->sFullSensorHubsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v5}, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;-><init>(I)V

    sput-object v3, Lcom/samsung/android/sensorhub/SensorHubManager;->sPool:Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;

    new-instance v3, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread;

    invoke-direct {v3}, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread;-><init>()V

    sput-object v3, Lcom/samsung/android/sensorhub/SensorHubManager;->sSensorHubThread:Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread;

    .end local v0    # "fullList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sensorhub/SensorHub;>;"
    .end local v1    # "i":I
    .end local v2    # "sensorhub":Lcom/samsung/android/sensorhub/SensorHub;
    :cond_2
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static SendSensorHubData(I[B)I
    .locals 7
    .param p0, "datasize"    # I
    .param p1, "data"    # [B

    .prologue
    const/16 v6, 0x100

    const/4 v5, 0x6

    const/4 v3, 0x0

    .local v3, "res":I
    const/4 v0, 0x0

    .local v0, "handle":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .local v2, "log":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_6

    if-nez v1, :cond_4

    const-string v4, "send data = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_1
    if-lt p0, v6, :cond_1

    if-lt v1, v5, :cond_1

    add-int/lit8 v4, p0, -0x6

    if-lt v1, v4, :cond_2

    :cond_1
    aget-byte v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    if-le p0, v6, :cond_3

    if-ne v1, v5, :cond_3

    const-string v4, " ..."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-lt p0, v6, :cond_5

    if-lt v1, v5, :cond_5

    add-int/lit8 v4, p0, -0x6

    if-lt v1, v4, :cond_0

    :cond_5
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    const-string v4, "SensorHubManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SendSensorHubData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v4, Lcom/samsung/android/sensorhub/SensorHubManager;->sQueue:J

    invoke-static {v4, v5, v0, p0, p1}, Lcom/samsung/android/sensorhub/SensorHubManager;->sensorhubs_send_data(JII[B)I

    move-result v3

    if-gez v3, :cond_7

    const-string v4, "SensorHubManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SendSensorHubData: error("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v3
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    sget-wide v0, Lcom/samsung/android/sensorhub/SensorHubManager;->sQueue:J

    return-wide v0
.end method

.method static synthetic access$002(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    sput-wide p0, Lcom/samsung/android/sensorhub/SensorHubManager;->sQueue:J

    return-wide p0
.end method

.method static synthetic access$200()Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/sensorhub/SensorHubManager;->sPool:Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubEventPool;

    return-object v0
.end method

.method private disableSensorHubLocked(Lcom/samsung/android/sensorhub/SensorHub;)Z
    .locals 4
    .param p1, "sensorhub"    # Lcom/samsung/android/sensorhub/SensorHub;

    .prologue
    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/samsung/android/sensorhub/SensorHub;->getHandle()I

    move-result v0

    .local v0, "handle":I
    sget-wide v2, Lcom/samsung/android/sensorhub/SensorHubManager;->sQueue:J

    invoke-static {v2, v3, v0, v1, v1}, Lcom/samsung/android/sensorhub/SensorHubManager;->sensorhubs_enabledisable(JIII)Z

    move-result v1

    return v1
.end method

.method private enableSensorHubLocked(Lcom/samsung/android/sensorhub/SensorHub;I)Z
    .locals 7
    .param p1, "sensorhub"    # Lcom/samsung/android/sensorhub/SensorHub;
    .param p2, "delay"    # I

    .prologue
    const/4 v3, 0x0

    .local v3, "result":Z
    sget-object v4, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;

    .local v1, "i":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->hasSensorHub(Lcom/samsung/android/sensorhub/SensorHub;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sensorhub/SensorHub;->getHandle()I

    move-result v0

    .local v0, "handle":I
    sget-wide v4, Lcom/samsung/android/sensorhub/SensorHubManager;->sQueue:J

    const/4 v6, 0x1

    invoke-static {v4, v5, v0, v6, p2}, Lcom/samsung/android/sensorhub/SensorHubManager;->sensorhubs_enabledisable(JIII)Z

    move-result v3

    .end local v0    # "handle":I
    .end local v1    # "i":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    :cond_1
    return v3
.end method

.method private static native nativeClassInit()V
.end method

.method static native sensorhubs_create_queue()J
.end method

.method static native sensorhubs_data_poll(J[B[I[I[I[F[JI)I
.end method

.method static native sensorhubs_destroy_queue(J)V
.end method

.method static native sensorhubs_enabledisable(JIII)Z
.end method

.method private static native sensorhubs_get_next_module(Lcom/samsung/android/sensorhub/SensorHub;I)I
.end method

.method private static native sensorhubs_module_init()I
.end method

.method static native sensorhubs_send_data(JII[B)I
.end method

.method static native sensorhubs_send_delay(JII)Z
.end method

.method private unregisterListener(Ljava/lang/Object;)V
    .locals 9
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v6, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    sget-object v5, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;

    .local v2, "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_1

    sget-object v5, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->getSensorHubs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sensorhub/SensorHub;

    .local v3, "sensorhub":Lcom/samsung/android/sensorhub/SensorHub;
    invoke-direct {p0, v3}, Lcom/samsung/android/sensorhub/SensorHubManager;->disableSensorHubLocked(Lcom/samsung/android/sensorhub/SensorHub;)Z

    const-string v5, "SensorHubManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unregisterListener: disable all sensorhubs for this listener, name=  listener= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    .end local v3    # "sensorhub":Lcom/samsung/android/sensorhub/SensorHub;
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0    # "i":I
    .restart local v2    # "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    .restart local v4    # "size":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private unregisterListener(Ljava/lang/Object;Lcom/samsung/android/sensorhub/SensorHub;)V
    .locals 7
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "sensorhub"    # Lcom/samsung/android/sensorhub/SensorHub;

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v4, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    sget-object v3, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;

    .local v1, "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_3

    invoke-virtual {v1, p2}, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->removeSensorHub(Lcom/samsung/android/sensorhub/SensorHub;)I

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .end local v1    # "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/sensorhub/SensorHubManager;->disableSensorHubLocked(Lcom/samsung/android/sensorhub/SensorHub;)Z

    const-string v3, "SensorHubManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregisterListener: handle= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/samsung/android/sensorhub/SensorHub;->getHandle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Listener= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto :goto_0

    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i":I
    .restart local v1    # "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    .restart local v2    # "size":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public SendSensorHubData(Lcom/samsung/android/sensorhub/SensorHub;I[B)I
    .locals 1
    .param p1, "sensorhub"    # Lcom/samsung/android/sensorhub/SensorHub;
    .param p2, "datasize"    # I
    .param p3, "data"    # [B

    .prologue
    invoke-static {p2, p3}, Lcom/samsung/android/sensorhub/SensorHubManager;->SendSensorHubData(I[B)I

    move-result v0

    return v0
.end method

.method public getDefaultSensorHub(I)Lcom/samsung/android/sensorhub/SensorHub;
    .locals 2
    .param p1, "type"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/sensorhub/SensorHubManager;->getSensorHubList(I)Ljava/util/List;

    move-result-object v0

    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sensorhub/SensorHub;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sensorhub/SensorHub;

    goto :goto_0
.end method

.method public getSensorHubList(I)Ljava/util/List;
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sensorhub/SensorHub;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/samsung/android/sensorhub/SensorHubManager;->sFullSensorHubsList:Ljava/util/ArrayList;

    .local v0, "fullList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sensorhub/SensorHub;>;"
    monitor-enter v0

    :try_start_0
    sget-object v4, Lcom/samsung/android/sensorhub/SensorHubManager;->sSensorHubListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sensorhub/SensorHub;>;"
    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sensorhub/SensorHub;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sensorhub/SensorHub;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sensorhub/SensorHub;

    .local v1, "i":Lcom/samsung/android/sensorhub/SensorHub;
    invoke-virtual {v1}, Lcom/samsung/android/sensorhub/SensorHub;->getType()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "i":Lcom/samsung/android/sensorhub/SensorHub;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sensorhub/SensorHub;>;"
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sensorhub/SensorHub;>;"
    :cond_1
    :try_start_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sensorhub/SensorHubManager;->sSensorHubListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public registerListener(Lcom/samsung/android/sensorhub/SensorHubEventListener;Lcom/samsung/android/sensorhub/SensorHub;I)Z
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/sensorhub/SensorHubEventListener;
    .param p2, "sensorhub"    # Lcom/samsung/android/sensorhub/SensorHub;
    .param p3, "rate"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/sensorhub/SensorHubManager;->registerListener(Lcom/samsung/android/sensorhub/SensorHubEventListener;Lcom/samsung/android/sensorhub/SensorHub;ILandroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Lcom/samsung/android/sensorhub/SensorHubEventListener;Lcom/samsung/android/sensorhub/SensorHub;ILandroid/os/Handler;)Z
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/sensorhub/SensorHubEventListener;
    .param p2, "sensorhub"    # Lcom/samsung/android/sensorhub/SensorHub;
    .param p3, "rate"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    if-gez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rate must be >=0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sensorhub/SensorHubManager;->registerListener(Lcom/samsung/android/sensorhub/SensorHubEventListener;Lcom/samsung/android/sensorhub/SensorHub;ILandroid/os/Handler;I)Z

    move-result v0

    return v0
.end method

.method public registerListener(Lcom/samsung/android/sensorhub/SensorHubEventListener;Lcom/samsung/android/sensorhub/SensorHub;ILandroid/os/Handler;I)Z
    .locals 10
    .param p1, "listener"    # Lcom/samsung/android/sensorhub/SensorHubEventListener;
    .param p2, "sensorhub"    # Lcom/samsung/android/sensorhub/SensorHub;
    .param p3, "rate"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "temp"    # I

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_1
    if-gez p3, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "rate must be >=0"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    const/4 v5, 0x1

    .local v5, "result":Z
    const/4 v0, -0x1

    .local v0, "delay":I
    packed-switch p3, :pswitch_data_0

    move v0, p3

    :goto_1
    sget-object v7, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v7

    const/4 v3, 0x0

    .local v3, "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    :try_start_0
    sget-object v6, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;

    .local v1, "i":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->getListener()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-ne v6, p1, :cond_3

    move-object v3, v1

    move-object v4, v3

    .end local v1    # "i":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    .end local v3    # "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    .local v4, "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    :goto_2
    :try_start_1
    const-string v6, "SensorHubManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "registerListener: handle= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/samsung/android/sensorhub/SensorHub;->getHandle()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " delay= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Listener= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_7

    new-instance v3, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;

    invoke-direct {v3, p0, p1, p2, p4}, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;-><init>(Lcom/samsung/android/sensorhub/SensorHubManager;Lcom/samsung/android/sensorhub/SensorHubEventListener;Lcom/samsung/android/sensorhub/SensorHub;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v4    # "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    .restart local v3    # "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    :try_start_2
    sget-object v6, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, Lcom/samsung/android/sensorhub/SensorHubManager;->sSensorHubThread:Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread;

    invoke-virtual {v6}, Lcom/samsung/android/sensorhub/SensorHubManager$SensorHubThread;->startLocked()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sensorhub/SensorHubManager;->enableSensorHubLocked(Lcom/samsung/android/sensorhub/SensorHub;I)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const-string v6, "SensorHubManager"

    const-string v8, "registerListener: enableSensorHubLocked fail 1"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    monitor-exit v7

    goto/16 :goto_0

    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .end local v3    # "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    :pswitch_0
    const/4 v0, 0x0

    goto/16 :goto_1

    :pswitch_1
    const/16 v0, 0x2710

    goto/16 :goto_1

    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    :cond_5
    :try_start_3
    sget-object v6, Lcom/samsung/android/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .end local v3    # "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    .restart local v4    # "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    :cond_7
    :try_start_4
    invoke-virtual {v4, p2}, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->addSensorHub(Lcom/samsung/android/sensorhub/SensorHub;)V

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/sensorhub/SensorHubManager;->enableSensorHubLocked(Lcom/samsung/android/sensorhub/SensorHub;I)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v4, p2}, Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;->removeSensorHub(Lcom/samsung/android/sensorhub/SensorHub;)I

    const/4 v5, 0x0

    const-string v6, "SensorHubManager"

    const-string v8, "registerListener: enableSensorHubLocked fail 2"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_8
    move-object v3, v4

    .end local v4    # "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    .restart local v3    # "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    goto :goto_3

    .end local v3    # "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    .restart local v4    # "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    .restart local v3    # "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    goto :goto_4

    :cond_9
    move-object v4, v3

    .end local v3    # "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    .restart local v4    # "l":Lcom/samsung/android/sensorhub/SensorHubManager$ListenerDelegate;
    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public unregisterListener(Lcom/samsung/android/sensorhub/SensorHubEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/sensorhub/SensorHubEventListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/sensorhub/SensorHubManager;->unregisterListener(Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/sensorhub/SensorHubEventListener;Lcom/samsung/android/sensorhub/SensorHub;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/sensorhub/SensorHubEventListener;
    .param p2, "sensorhub"    # Lcom/samsung/android/sensorhub/SensorHub;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sensorhub/SensorHubManager;->unregisterListener(Ljava/lang/Object;Lcom/samsung/android/sensorhub/SensorHub;)V

    return-void
.end method
