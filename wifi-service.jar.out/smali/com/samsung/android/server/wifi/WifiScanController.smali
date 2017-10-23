.class public Lcom/samsung/android/server/wifi/WifiScanController;
.super Ljava/lang/Object;
.source "WifiScanController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;,
        Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    }
.end annotation


# static fields
.field public static final DBG:Z

.field private static final MAX_DURATION:I = 0x927c0

.field private static final MAX_REGISTERATION_SENSOR_TIME:I = 0x57e40

.field public static final SCANLOG_TYPE_1_6_11_CHANNEL_SCAN_COUNTER:I = 0x4

.field public static final SCANLOG_TYPE_2_4GHZ_CHANNEL_SCAN_COUNTER:I = 0x3

.field public static final SCANLOG_TYPE_CACHED_SCAN_COUNTER:I = 0x6

.field public static final SCANLOG_TYPE_DELAYED_SCAN_COUNTER:I = 0x7

.field public static final SCANLOG_TYPE_EXPT_DFS_CHANNEL_SCAN_COUNTER:I = 0x5

.field public static final SCANLOG_TYPE_FULL_CHANNEL_SCAN_COUNTER:I = 0x2

.field public static final SCANLOG_TYPE_SCAN_COUNT_TOTAL:I = 0x0

.field public static final SCANLOG_TYPE_SCAN_INTERVAL:I = 0x1

.field public static final SCAN_TYPE_DO_NOTHING:I = 0x5

.field public static final SCAN_TYPE_EXCEPT_PASSIVE_CHANNELS:I = 0x3

.field public static final SCAN_TYPE_FULL:I = 0x0

.field public static final SCAN_TYPE_MAX:I = 0x5

.field public static final SCAN_TYPE_PARTIAL_1_6_11_CHANNELS:I = 0x2

.field public static final SCAN_TYPE_PARTIAL_2_4_ONLY:I = 0x1

.field public static final SCAN_TYPE_USE_CACHED_RESULT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiScanController"


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mChannel1_6_11Only:[I

.field private mChannel24Only:[I

.field private mChannelNoDfs:[I

.field private mCheckSMDSetting:Z

.field private final mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsAnyMotionDetectorSupported:Z

.field private mIsMoved:Z

.field private mIsNLPPackage:Z

.field private mIsRegisteredSMDListener:Z

.field private mLastActualScanActionTime:J

.field private mLastNLPScanRequestTime:J

.field private mLastNLPScanRequestTimeForSMDRegi:J

.field private mMaxDuration:J

.field private final mNLPPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private final mScanLogMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 53
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsMoved:Z

    .line 54
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    .line 55
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mCheckSMDSetting:Z

    .line 56
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsNLPPackage:Z

    .line 57
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    .line 60
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    .line 62
    iput-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannel24Only:[I

    .line 63
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannel1_6_11Only:[I

    .line 64
    iput-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannelNoDfs:[I

    .line 66
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    .line 67
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTimeForSMDRegi:J

    .line 68
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    .line 69
    const-wide/32 v2, 0x927c0

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMaxDuration:J

    .line 630
    new-instance v2, Lcom/samsung/android/server/wifi/WifiScanController$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/WifiScanController$1;-><init>(Lcom/samsung/android/server/wifi/WifiScanController;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 643
    new-instance v2, Lcom/samsung/android/server/wifi/WifiScanController$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/WifiScanController$2;-><init>(Lcom/samsung/android/server/wifi/WifiScanController;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 91
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 93
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const-string v2, "scontext"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextManager;

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 95
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    .line 98
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mCheckSMDSetting:Z

    .line 100
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "AnyMotionDetector_wifi"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 101
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mActivityManager:Landroid/app/ActivityManager;

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->updateNLPPackages()V

    .line 112
    return-void

    .line 63
    nop

    :array_0
    .array-data 4
        0x96c
        0x985
        0x99e
    .end array-data
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/WifiScanController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiScanController;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/WifiScanController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiScanController;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->isLocationEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/WifiScanController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiScanController;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->getPersistedAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/server/wifi/WifiScanController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiScanController;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsMoved:Z

    return p1
.end method

.method private addHistoricalScanLog(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scanType"    # I

    .prologue
    .line 264
    const-string v1, "com.android.settings"

    .line 265
    .local v1, "settingPackageName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 266
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 267
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    .line 268
    .local v0, "scanLog":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    .end local v0    # "scanLog":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;-><init>(Ljava/lang/String;)V

    .line 270
    .restart local v0    # "scanLog":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_0
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->addCounter(I)V

    .line 273
    monitor-exit v3

    .line 275
    .end local v0    # "scanLog":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    :cond_1
    return-void

    .line 273
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private addOrUpdateNLPPackageSetting(Ljava/lang/String;IJ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scanType"    # I
    .param p3, "scanDelay"    # J

    .prologue
    .line 561
    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    :cond_0
    const/4 v0, 0x5

    if-ge p2, v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    new-instance v2, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    invoke-direct {v2, p2, p3, p4}, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;-><init>(IJ)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    :goto_0
    monitor-exit v1

    .line 571
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    new-instance v2, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p3, p4}, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;-><init>(IJ)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkAndSMDUnregisteration()V
    .locals 4

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    if-nez v0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTimeForSMDRegi:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x57e40

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->unregisterSensorMonitor()V

    goto :goto_0
.end method

.method private checkScanDelayForCachedScan(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getNLPPackageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 425
    iget-object v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    .line 426
    .local v1, "scanSetting":Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;
    if-eqz v1, :cond_0

    iget-wide v4, v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanDelayMillis:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 428
    .local v2, "now":J
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    sub-long v4, v2, v4

    iget-wide v6, v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanDelayMillis:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 429
    const/4 v4, 0x1

    .line 433
    .end local v1    # "scanSetting":Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;
    .end local v2    # "now":J
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getCustomScanType(Ljava/lang/String;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getNLPPackageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 413
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    .line 414
    .local v1, "scanSetting":Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;
    if-eqz v1, :cond_1

    .line 415
    sget-boolean v2, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiScanController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    iget v2, v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanType:I

    .line 419
    .end local v1    # "scanSetting":Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getFilteredChannelList(Ljava/util/List;ZZ)Ljava/util/List;
    .locals 5
    .param p2, "use5"    # Z
    .param p3, "useDFS"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;ZZ)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    .local p1, "channelList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    if-nez p1, :cond_1

    .line 394
    const/4 v1, 0x0

    .line 407
    :cond_0
    return-object v1

    .line 396
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v1, "filteredChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/WifiChannel;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiChannel;

    .line 399
    .local v0, "channel":Landroid/net/wifi/WifiChannel;
    if-nez p3, :cond_3

    iget-boolean v3, v0, Landroid/net/wifi/WifiChannel;->isDFS:Z

    if-nez v3, :cond_2

    .line 402
    :cond_3
    if-nez p2, :cond_4

    iget v3, v0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    const/16 v4, 0x1388

    if-gt v3, v4, :cond_2

    .line 405
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getNLPPackageKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 594
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 595
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 596
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 597
    .local v1, "nlpPackageKey":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 598
    monitor-exit v3

    .line 603
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "nlpPackageKey":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 601
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit v3

    .line 603
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 601
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getPackageName(I)Ljava/lang/String;
    .locals 6
    .param p1, "pid"    # I

    .prologue
    .line 574
    const/4 v3, -0x1

    if-eq p1, v3, :cond_2

    .line 575
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 576
    .local v2, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p1, :cond_0

    .line 577
    new-instance v1, Ljava/lang/String;

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 578
    .local v1, "packageName":Ljava/lang/String;
    sget-boolean v3, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "WifiScanController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startScan by packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPersistedAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 626
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getScanLog(I)Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    .locals 2
    .param p1, "pid"    # I

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "pacakgeName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 439
    const/4 v1, 0x0

    .line 441
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    goto :goto_0
.end method

.method private isLocationEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 619
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 620
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "location_mode"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 622
    .local v0, "mode":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isNLPPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 587
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getNLPPackageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    const/4 v0, 0x1

    .line 590
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerSensorMonitor()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 522
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mCheckSMDSetting:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    if-nez v2, :cond_0

    .line 523
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->isLocationEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 524
    const-string v1, "WifiScanController"

    const-string v2, "location is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_0
    :goto_0
    return v0

    .line 526
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->getPersistedAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 527
    const-string v1, "WifiScanController"

    const-string v2, "airplain mode enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 530
    :cond_2
    const-string v0, "WifiScanController"

    const-string v2, "register SMD listener"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    .line 532
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v3, 0x32

    iget-object v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/os/Looper;)Z

    move v0, v1

    .line 534
    goto :goto_0
.end method

.method private updateNLPPackages()V
    .locals 8

    .prologue
    .line 548
    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 551
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    const-string v2, "com.google.process.location"

    new-instance v3, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;-><init>(IJ)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    const-string v2, "com.google.android.location"

    new-instance v3, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;-><init>(IJ)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    const-string v2, "com.google.android.gms"

    new-instance v3, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;-><init>(IJ)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    monitor-exit v1

    .line 558
    return-void

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 12

    .prologue
    .line 488
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 489
    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string v7, "WifiScanController\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-SMD Supported:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", used:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mCheckSMDSetting:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 493
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-MAX Duration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMaxDuration:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 494
    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 495
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    monitor-enter v8

    .line 496
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 497
    .local v2, "packageName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 498
    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    .line 499
    .local v6, "settings":Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " type:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v6, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanType:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 500
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " delay:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, v6, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanDelayMillis:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 503
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v6    # "settings":Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    const-string v7, "\nWifi scan command history\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 505
    const/4 v5, 0x0

    .line 506
    .local v5, "scanlogNumber":I
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 507
    :try_start_2
    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 508
    .local v1, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    .line 509
    .local v4, "scanLog":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    if-eqz v4, :cond_1

    .line 510
    add-int/lit8 v5, v5, 0x1

    .line 511
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ". "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PackageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 512
    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 513
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 517
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "scanLog":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7

    :cond_2
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 518
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getBigDataString(I)Ljava/lang/String;
    .locals 3
    .param p1, "pid"    # I

    .prologue
    const/4 v0, 0x0

    .line 453
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getScanLog(I)Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    move-result-object v1

    .line 454
    .local v1, "scanLog":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    if-nez v1, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-object v0

    .line 458
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->isReachedLimitation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->getBigDataExtra()Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->resetCounter()V

    goto :goto_0
.end method

.method public getChannelFrequencyArray(I)[I
    .locals 1
    .param p1, "scanType"    # I

    .prologue
    .line 350
    packed-switch p1, :pswitch_data_0

    .line 363
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 352
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannel1_6_11Only:[I

    goto :goto_0

    .line 355
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannel24Only:[I

    goto :goto_0

    .line 358
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannelNoDfs:[I

    goto :goto_0

    .line 350
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getMovingStatus()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 607
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    if-eqz v1, :cond_0

    .line 608
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsMoved:Z

    .line 609
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->requestToUpdate(Landroid/hardware/scontext/SContextListener;I)V

    .line 611
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsMoved:Z

    .line 615
    :cond_0
    return v0

    .line 612
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getScanLogData(II)I
    .locals 2
    .param p1, "pid"    # I
    .param p2, "type"    # I

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getScanLog(I)Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    move-result-object v0

    .line 446
    .local v0, "scanLog":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->getScanLogData(I)I

    move-result v1

    .line 449
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScanType(I)I
    .locals 10
    .param p1, "pid"    # I

    .prologue
    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 279
    .local v0, "now":J
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 282
    .local v3, "scanType":I
    if-eqz v2, :cond_a

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/WifiScanController;->isNLPPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 283
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsNLPPackage:Z

    .line 284
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTimeForSMDRegi:J

    .line 286
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/WifiScanController;->checkScanDelayForCachedScan(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 287
    sget-boolean v5, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "WifiScanController"

    const-string v6, "Ignore scan request, reason:scan delay"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    const/4 v3, 0x5

    .line 289
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/WifiScanController;->addHistoricalScanLog(Ljava/lang/String;I)V

    move v4, v3

    .line 336
    .end local v3    # "scanType":I
    .local v4, "scanType":I
    :goto_0
    return v4

    .line 293
    .end local v4    # "scanType":I
    .restart local v3    # "scanType":I
    :cond_1
    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mCheckSMDSetting:Z

    if-eqz v5, :cond_8

    .line 294
    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    if-nez v5, :cond_2

    .line 295
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->registerSensorMonitor()Z

    .line 296
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    .line 298
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/WifiScanController;->getCustomScanType(Ljava/lang/String;)I

    move-result v3

    .line 299
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/WifiScanController;->addHistoricalScanLog(Ljava/lang/String;I)V

    move v4, v3

    .line 300
    .end local v3    # "scanType":I
    .restart local v4    # "scanType":I
    goto :goto_0

    .line 302
    .end local v4    # "scanType":I
    .restart local v3    # "scanType":I
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->getMovingStatus()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 303
    sget-boolean v5, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "WifiScanController"

    const-string v6, "SMD detected. Force scan"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    .line 305
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/WifiScanController;->getCustomScanType(Ljava/lang/String;)I

    move-result v3

    .line 306
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/WifiScanController;->addHistoricalScanLog(Ljava/lang/String;I)V

    move v4, v3

    .line 307
    .end local v3    # "scanType":I
    .restart local v4    # "scanType":I
    goto :goto_0

    .line 311
    .end local v4    # "scanType":I
    .restart local v3    # "scanType":I
    :cond_4
    const-string v5, "WifiScanController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "time diff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    sub-long v8, v0, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    sub-long v6, v0, v6

    iget-wide v8, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMaxDuration:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_6

    .line 313
    sget-boolean v5, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "WifiScanController"

    const-string v6, "Ignore scan request, use cached scan result"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_5
    const/4 v3, 0x4

    .line 315
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/WifiScanController;->addHistoricalScanLog(Ljava/lang/String;I)V

    move v4, v3

    .line 316
    .end local v3    # "scanType":I
    .restart local v4    # "scanType":I
    goto :goto_0

    .line 318
    .end local v4    # "scanType":I
    .restart local v3    # "scanType":I
    :cond_6
    sget-boolean v5, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v5, :cond_7

    const-string v5, "WifiScanController"

    const-string v6, "reset timer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    .line 323
    :cond_8
    sget-boolean v5, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v5, :cond_9

    const-string v5, "WifiScanController"

    const-string v6, "force scan"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_9
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    .line 325
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/WifiScanController;->getCustomScanType(Ljava/lang/String;)I

    move-result v3

    .line 326
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/WifiScanController;->addHistoricalScanLog(Ljava/lang/String;I)V

    move v4, v3

    .line 327
    .end local v3    # "scanType":I
    .restart local v4    # "scanType":I
    goto/16 :goto_0

    .line 329
    .end local v4    # "scanType":I
    .restart local v3    # "scanType":I
    :cond_a
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsNLPPackage:Z

    .line 330
    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    if-eqz v5, :cond_b

    .line 331
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->checkAndSMDUnregisteration()V

    .line 334
    :cond_b
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    .line 335
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/WifiScanController;->addHistoricalScanLog(Ljava/lang/String;I)V

    move v4, v3

    .line 336
    .end local v3    # "scanType":I
    .restart local v4    # "scanType":I
    goto/16 :goto_0
.end method

.method public isNLPPackageFromLastPid()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsNLPPackage:Z

    return v0
.end method

.method public setCustomScanType(Ljava/lang/String;II)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scanType"    # I
    .param p3, "scanDelaySeconds"    # I

    .prologue
    .line 468
    sget-boolean v0, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiScanController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scanType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scanDelay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(sec.)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    int-to-long v0, p3

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/server/wifi/WifiScanController;->addOrUpdateNLPPackageSetting(Ljava/lang/String;IJ)V

    .line 471
    return-void
.end method

.method public setDurationSettings(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 484
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMaxDuration:J

    .line 485
    return-void
.end method

.method public setEnableToCheckSMD(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    if-eqz v0, :cond_0

    .line 475
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mCheckSMDSetting:Z

    .line 477
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->unregisterSensorMonitor()V

    .line 481
    :cond_0
    return-void
.end method

.method public unregisterSensorMonitor()V
    .locals 3

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    if-eqz v0, :cond_0

    .line 541
    const-string v0, "WifiScanController"

    const-string v1, "unregister SMD listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    .line 545
    :cond_0
    return-void
.end method

.method public updateChannelList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "channelList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 367
    sget-boolean v2, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiScanController"

    const-string v3, "updateChannelList"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    const/4 v0, 0x0

    .line 370
    .local v0, "channelSet":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-direct {p0, p1, v4, v4}, Lcom/samsung/android/server/wifi/WifiScanController;->getFilteredChannelList(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 372
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannel24Only:[I

    .line 373
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 374
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannel24Only:[I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiChannel;

    iget v2, v2, Landroid/net/wifi/WifiChannel;->freqMHz:I

    aput v2, v3, v1

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .end local v1    # "i":I
    :cond_1
    iput-object v5, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannel24Only:[I

    .line 380
    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v4}, Lcom/samsung/android/server/wifi/WifiScanController;->getFilteredChannelList(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 382
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannelNoDfs:[I

    .line 383
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 384
    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannelNoDfs:[I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiChannel;

    iget v2, v2, Landroid/net/wifi/WifiChannel;->freqMHz:I

    aput v2, v3, v1

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 387
    .end local v1    # "i":I
    :cond_3
    iput-object v5, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannelNoDfs:[I

    .line 389
    :cond_4
    return-void
.end method
