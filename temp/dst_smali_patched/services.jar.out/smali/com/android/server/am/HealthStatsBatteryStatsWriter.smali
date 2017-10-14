.class public Lcom/android/server/am/HealthStatsBatteryStatsWriter;
.super Ljava/lang/Object;
.source "HealthStatsBatteryStatsWriter.java"


# instance fields
.field private final mNowRealtimeMs:J

.field private final mNowUptimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowUptimeMs:J

    return-void
.end method

.method private addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V
    .locals 6
    .param p1, "writer"    # Landroid/os/health/HealthStatsWriter;
    .param p2, "key"    # I
    .param p3, "timer"    # Landroid/os/BatteryStats$Timer;

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v1, 0x2

    if-eqz p3, :cond_0

    invoke-virtual {p3, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    iget-wide v2, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    mul-long/2addr v2, v4

    invoke-virtual {p3, v2, v3, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {p1, p2, v0, v2, v3}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    :cond_0
    return-void
.end method

.method private addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V
    .locals 8
    .param p1, "writer"    # Landroid/os/health/HealthStatsWriter;
    .param p2, "key"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "timer"    # Landroid/os/BatteryStats$Timer;

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v4, 0x2

    if-eqz p4, :cond_0

    new-instance v0, Landroid/os/health/TimerStat;

    invoke-virtual {p4, v4}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v1

    iget-wide v2, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    mul-long/2addr v2, v6

    invoke-virtual {p4, v2, v3, v4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/os/health/TimerStat;-><init>(IJ)V

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/health/HealthStatsWriter;->addTimers(ILjava/lang/String;Landroid/os/health/TimerStat;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public writePid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pid;)V
    .locals 4
    .param p1, "pidWriter"    # Landroid/os/health/HealthStatsWriter;
    .param p2, "pid"    # Landroid/os/BatteryStats$Uid$Pid;

    .prologue
    const/16 v3, 0x4e22

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget v0, p2, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    int-to-long v0, v0

    const/16 v2, 0x4e21

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    iget-wide v0, p2, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    iget-wide v0, p2, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    return-void
.end method

.method public writePkg(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg;)V
    .locals 9
    .param p1, "pkgWriter"    # Landroid/os/health/HealthStatsWriter;
    .param p2, "pkg"    # Landroid/os/BatteryStats$Uid$Pkg;

    .prologue
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    new-instance v4, Landroid/os/health/HealthStatsWriter;

    sget-object v5, Landroid/os/health/ServiceHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v4, v5}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .local v4, "writer":Landroid/os/health/HealthStatsWriter;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeServ(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg$Serv;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const v6, 0x9c41

    invoke-virtual {p1, v6, v5, v4}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    goto :goto_0

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v4    # "writer":Landroid/os/health/HealthStatsWriter;
    :cond_0
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Counter;

    .local v0, "counter":Landroid/os/BatteryStats$Counter;
    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    int-to-long v6, v6

    const v8, 0x9c42

    invoke-virtual {p1, v8, v5, v6, v7}, Landroid/os/health/HealthStatsWriter;->addMeasurements(ILjava/lang/String;J)V

    goto :goto_1

    .end local v0    # "counter":Landroid/os/BatteryStats$Counter;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    :cond_2
    return-void
.end method

.method public writeProc(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Proc;)V
    .locals 4
    .param p1, "procWriter"    # Landroid/os/health/HealthStatsWriter;
    .param p2, "proc"    # Landroid/os/BatteryStats$Uid$Proc;

    .prologue
    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v0

    const/16 v2, 0x7531

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {p2, v3}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v0

    const/16 v2, 0x7532

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {p2, v3}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x7533

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {p2, v3}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x7534

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {p2, v3}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x7535

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {p2, v3}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v0

    const/16 v2, 0x7536

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    return-void
.end method

.method public writeServ(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg$Serv;)V
    .locals 4
    .param p1, "servWriter"    # Landroid/os/health/HealthStatsWriter;
    .param p2, "serv"    # Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .prologue
    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v0

    int-to-long v0, v0

    const v2, 0xc351

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {p2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v0

    int-to-long v0, v0

    const v2, 0xc352

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    return-void
.end method

.method public writeUid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;)V
    .locals 30
    .param p1, "uidWriter"    # Landroid/os/health/HealthStatsWriter;
    .param p2, "bs"    # Landroid/os/BatteryStats;
    .param p3, "uid"    # Landroid/os/BatteryStats$Uid;

    .prologue
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3e8

    mul-long v24, v24, v26

    const/16 v26, 0x2

    move-object/from16 v0, p2

    move-wide/from16 v1, v24

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    const/16 v26, 0x2711

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowUptimeMs:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3e8

    mul-long v24, v24, v26

    const/16 v26, 0x2

    move-object/from16 v0, p2

    move-wide/from16 v1, v24

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    const/16 v26, 0x2712

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3e8

    mul-long v24, v24, v26

    const/16 v26, 0x2

    move-object/from16 v0, p2

    move-wide/from16 v1, v24

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    const/16 v26, 0x2713

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowUptimeMs:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3e8

    mul-long v24, v24, v26

    const/16 v26, 0x2

    move-object/from16 v0, p2

    move-wide/from16 v1, v24

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    const/16 v26, 0x2714

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .local v15, "key":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/BatteryStats$Uid$Wakelock;

    .local v22, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v19

    .local v19, "timer":Landroid/os/BatteryStats$Timer;
    const/16 v24, 0x2715

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v19

    const/16 v24, 0x2716

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    const/16 v24, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v19

    const/16 v24, 0x2717

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    const/16 v24, 0x12

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v19

    const/16 v24, 0x2718

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    goto :goto_0

    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v15    # "key":Ljava/lang/String;
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v22    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/BatteryStats$Timer;

    const/16 v26, 0x2719

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    goto :goto_1

    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .restart local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/BatteryStats$Timer;

    const/16 v26, 0x271a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    goto :goto_2

    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v18

    .local v18, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v6

    .local v6, "N":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-ge v14, v6, :cond_4

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v17

    .local v17, "sensorId":I
    const/16 v24, -0x2710

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual/range {v24 .. v24}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v24

    const/16 v25, 0x271b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_3
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual/range {v24 .. v24}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v24

    const/16 v26, 0x271c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    move-object/from16 v3, v25

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    goto :goto_4

    .end local v17    # "sensorId":I
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v16

    .local v16, "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v6, :cond_5

    new-instance v23, Landroid/os/health/HealthStatsWriter;

    sget-object v24, Landroid/os/health/PidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct/range {v23 .. v24}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .local v23, "writer":Landroid/os/health/HealthStatsWriter;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/BatteryStats$Uid$Pid;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writePid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pid;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x271d

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v24

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .end local v23    # "writer":Landroid/os/health/HealthStatsWriter;
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    new-instance v23, Landroid/os/health/HealthStatsWriter;

    sget-object v24, Landroid/os/health/ProcessHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct/range {v23 .. v24}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .restart local v23    # "writer":Landroid/os/health/HealthStatsWriter;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/BatteryStats$Uid$Proc;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeProc(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Proc;)V

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const/16 v25, 0x271e

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v24

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    goto :goto_6

    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v23    # "writer":Landroid/os/health/HealthStatsWriter;
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    new-instance v23, Landroid/os/health/HealthStatsWriter;

    sget-object v24, Landroid/os/health/PackageHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct/range {v23 .. v24}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .restart local v23    # "writer":Landroid/os/health/HealthStatsWriter;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/BatteryStats$Uid$Pkg;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writePkg(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg;)V

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const/16 v25, 0x271f

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v24

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    goto :goto_7

    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v23    # "writer":Landroid/os/health/HealthStatsWriter;
    :cond_7
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v7

    .local v7, "controller":Landroid/os/BatteryStats$ControllerActivityCounter;
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v24

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v24

    const/16 v26, 0x2720

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v24

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v24

    const/16 v26, 0x2721

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const-wide/16 v20, 0x0

    .local v20, "sum":J
    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v25

    const/16 v24, 0x0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    :goto_8
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    aget-object v8, v25, v24

    .local v8, "counter":Landroid/os/BatteryStats$LongCounter;
    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v28

    add-long v20, v20, v28

    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .end local v8    # "counter":Landroid/os/BatteryStats$LongCounter;
    :cond_8
    const/16 v24, 0x2722

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v24

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v24

    const/16 v26, 0x2723

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .end local v20    # "sum":J
    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v24

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v24

    const/16 v26, 0x2724

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v24

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v24

    const/16 v26, 0x2725

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const-wide/16 v20, 0x0

    .restart local v20    # "sum":J
    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v25

    const/16 v24, 0x0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    :goto_9
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_a

    aget-object v8, v25, v24

    .restart local v8    # "counter":Landroid/os/BatteryStats$LongCounter;
    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v28

    add-long v20, v20, v28

    add-int/lit8 v24, v24, 0x1

    goto :goto_9

    .end local v8    # "counter":Landroid/os/BatteryStats$LongCounter;
    :cond_a
    const/16 v24, 0x2726

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v24

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v24

    const/16 v26, 0x2727

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .end local v20    # "sum":J
    :cond_b
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v24

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v24

    const/16 v26, 0x2728

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v24

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v24

    const/16 v26, 0x2729

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const-wide/16 v20, 0x0

    .restart local v20    # "sum":J
    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v25

    const/16 v24, 0x0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    :goto_a
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    aget-object v8, v25, v24

    .restart local v8    # "counter":Landroid/os/BatteryStats$LongCounter;
    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v28

    add-long v20, v20, v28

    add-int/lit8 v24, v24, 0x1

    goto :goto_a

    .end local v8    # "counter":Landroid/os/BatteryStats$LongCounter;
    :cond_c
    const/16 v24, 0x272a

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v7}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v24

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v24

    const/16 v26, 0x272b

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    .end local v20    # "sum":J
    :cond_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3e8

    mul-long v24, v24, v26

    const/16 v26, 0x2

    move-object/from16 v0, p3

    move-wide/from16 v1, v24

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    const/16 v26, 0x272c

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3e8

    mul-long v24, v24, v26

    const/16 v26, 0x2

    move-object/from16 v0, p3

    move-wide/from16 v1, v24

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    const/16 v26, 0x272d

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v24, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x3e8

    mul-long v26, v26, v28

    const/16 v25, 0x2

    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    const/16 v25, 0x272e

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v24

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3e8

    mul-long v24, v24, v26

    const/16 v26, 0x2

    move-object/from16 v0, p3

    move-wide/from16 v1, v24

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiMulticastTime(JI)J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    const/16 v26, 0x272f

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v24

    const/16 v25, 0x2730

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v24

    const/16 v25, 0x2731

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v24

    const/16 v25, 0x2732

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v24

    const/16 v25, 0x2733

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v24

    const/16 v25, 0x2734

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v24

    const/16 v25, 0x2735

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v24, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v24

    const/16 v25, 0x2736

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v24, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v24

    const/16 v25, 0x2737

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v24, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v24

    const/16 v25, 0x2738

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v24, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v24

    const/16 v25, 0x2739

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v24, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v24

    const/16 v25, 0x273a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v24, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v24

    const/16 v25, 0x273b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v24

    const/16 v25, 0x273c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v24, 0x0

    const/16 v25, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const/16 v26, 0x273d

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v24, 0x1

    const/16 v25, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const/16 v26, 0x273e

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v24, 0x2

    const/16 v25, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const/16 v26, 0x273f

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v24, 0x0

    const/16 v25, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v24

    const/16 v26, 0x2740

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v24, 0x1

    const/16 v25, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v24

    const/16 v26, 0x2741

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v24, 0x2

    const/16 v25, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v24

    const/16 v26, 0x2742

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v24, 0x3

    const/16 v25, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v24

    const/16 v26, 0x2743

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v24, 0x4

    const/16 v25, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v24

    const/16 v26, 0x2744

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v24, 0x5

    const/16 v25, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v24

    const/16 v26, 0x2745

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v24, 0x0

    const/16 v25, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v24

    const/16 v26, 0x2746

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v24, 0x1

    const/16 v25, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v24

    const/16 v26, 0x2747

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v24, 0x2

    const/16 v25, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v24

    const/16 v26, 0x2748

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v24, 0x3

    const/16 v25, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v24

    const/16 v26, 0x2749

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v24, 0x4

    const/16 v25, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v24

    const/16 v26, 0x274a

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v24, 0x5

    const/16 v25, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v24

    const/16 v26, 0x274b

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v24, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v24

    const/16 v25, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v26

    const/16 v25, 0x274d

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v24

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    const/16 v24, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    const/16 v26, 0x274e

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v24, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    const/16 v26, 0x274f

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v24, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getCpuPowerMaUs(I)J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    const/16 v26, 0x2750

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    return-void
.end method
