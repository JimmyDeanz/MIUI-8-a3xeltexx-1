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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsMoved:Z

    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mCheckSMDSetting:Z

    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsNLPPackage:Z

    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    iput-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannel24Only:[I

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannel1_6_11Only:[I

    iput-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannelNoDfs:[I

    iput-wide v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    iput-wide v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTimeForSMDRegi:J

    iput-wide v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    const-wide/32 v2, 0x927c0

    iput-wide v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMaxDuration:J

    new-instance v2, Lcom/samsung/android/server/wifi/WifiScanController$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/WifiScanController$1;-><init>(Lcom/samsung/android/server/wifi/WifiScanController;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/samsung/android/server/wifi/WifiScanController$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/WifiScanController$2;-><init>(Lcom/samsung/android/server/wifi/WifiScanController;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "scontext"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextManager;

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mCheckSMDSetting:Z

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "AnyMotionDetector_wifi"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mActivityManager:Landroid/app/ActivityManager;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->updateNLPPackages()V

    return-void

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
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/WifiScanController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiScanController;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->isLocationEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/WifiScanController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiScanController;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->getPersistedAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/server/wifi/WifiScanController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/server/wifi/WifiScanController;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsMoved:Z

    return p1
.end method

.method private addHistoricalScanLog(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scanType"    # I

    .prologue
    const-string v1, "com.android.settings"

    .local v1, "settingPackageName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    .local v0, "scanLog":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    .end local v0    # "scanLog":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;-><init>(Ljava/lang/String;)V

    .restart local v0    # "scanLog":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->addCounter(I)V

    monitor-exit v3

    .end local v0    # "scanLog":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    :cond_1
    return-void

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
    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x5

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    new-instance v2, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    invoke-direct {v2, p2, p3, p4}, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;-><init>(IJ)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    new-instance v2, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p3, p4}, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;-><init>(IJ)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

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
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTimeForSMDRegi:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x57e40

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->unregisterSensorMonitor()V

    goto :goto_0
.end method

.method private checkScanDelayForCachedScan(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getNLPPackageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    .local v1, "scanSetting":Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;
    if-eqz v1, :cond_0

    iget-wide v4, v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanDelayMillis:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "now":J
    iget-wide v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    sub-long v4, v2, v4

    iget-wide v6, v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanDelayMillis:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    const/4 v4, 0x1

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
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getNLPPackageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    .local v1, "scanSetting":Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;
    if-eqz v1, :cond_1

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

    :cond_0
    iget v2, v1, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanType:I

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
    .local p1, "channelList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    if-nez p1, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

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

    .local v0, "channel":Landroid/net/wifi/WifiChannel;
    if-nez p3, :cond_3

    iget-boolean v3, v0, Landroid/net/wifi/WifiChannel;->isDFS:Z

    if-nez v3, :cond_2

    :cond_3
    if-nez p2, :cond_4

    iget v3, v0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    const/16 v4, 0x1388

    if-gt v3, v4, :cond_2

    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getNLPPackageKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    monitor-enter v3

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

    .local v1, "nlpPackageKey":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v3

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "nlpPackageKey":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit v3

    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

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
    const/4 v3, -0x1

    if-eq p1, v3, :cond_2

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

    .local v2, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p1, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

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
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "pacakgeName":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

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

    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "location_mode"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

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
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getNLPPackageKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

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

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mCheckSMDSetting:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->isLocationEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "WifiScanController"

    const-string v2, "location is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->getPersistedAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "WifiScanController"

    const-string v2, "airplain mode enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "WifiScanController"

    const-string v2, "register SMD listener"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v3, 0x32

    iget-object v4, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/os/Looper;)Z

    move v0, v1

    goto :goto_0
.end method

.method private updateNLPPackages()V
    .locals 8

    .prologue
    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    const-string v2, "com.google.process.location"

    new-instance v3, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;-><init>(IJ)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    const-string v2, "com.google.android.location"

    new-instance v3, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;-><init>(IJ)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    const-string v2, "com.google.android.gms"

    new-instance v3, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v6, v7}, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;-><init>(IJ)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

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
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string v7, "WifiScanController\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

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

    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

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

    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    monitor-enter v8

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

    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mNLPPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;

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

    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

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

    const-string v7, "\nWifi scan command history\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    .local v5, "scanlogNumber":I
    iget-object v8, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    monitor-enter v8

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

    .local v1, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mScanLogMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    .local v4, "scanLog":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    if-eqz v4, :cond_1

    add-int/lit8 v5, v5, 0x1

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

    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

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

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getBigDataString(I)Ljava/lang/String;
    .locals 3
    .param p1, "pid"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getScanLog(I)Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    move-result-object v1

    .local v1, "scanLog":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->isReachedLimitation()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->getBigDataExtra()Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->resetCounter()V

    goto :goto_0
.end method

.method public getChannelFrequencyArray(I)[I
    .locals 1
    .param p1, "scanType"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannel1_6_11Only:[I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannel24Only:[I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannelNoDfs:[I

    goto :goto_0

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

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsMoved:Z

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->requestToUpdate(Landroid/hardware/scontext/SContextListener;I)V

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsMoved:Z

    :cond_0
    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getScanLogData(II)I
    .locals 2
    .param p1, "pid"    # I
    .param p2, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getScanLog(I)Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;

    move-result-object v0

    .local v0, "scanLog":Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/WifiScanController$ScanLog;->getScanLogData(I)I

    move-result v1

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
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "now":J
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/WifiScanController;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "scanType":I
    if-eqz v2, :cond_a

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/WifiScanController;->isNLPPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsNLPPackage:Z

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTimeForSMDRegi:J

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/WifiScanController;->checkScanDelayForCachedScan(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "WifiScanController"

    const-string v6, "Ignore scan request, reason:scan delay"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x5

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/WifiScanController;->addHistoricalScanLog(Ljava/lang/String;I)V

    move v4, v3

    .end local v3    # "scanType":I
    .local v4, "scanType":I
    :goto_0
    return v4

    .end local v4    # "scanType":I
    .restart local v3    # "scanType":I
    :cond_1
    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mCheckSMDSetting:Z

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->registerSensorMonitor()Z

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/WifiScanController;->getCustomScanType(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/WifiScanController;->addHistoricalScanLog(Ljava/lang/String;I)V

    move v4, v3

    .end local v3    # "scanType":I
    .restart local v4    # "scanType":I
    goto :goto_0

    .end local v4    # "scanType":I
    .restart local v3    # "scanType":I
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->getMovingStatus()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-boolean v5, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "WifiScanController"

    const-string v6, "SMD detected. Force scan"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/WifiScanController;->getCustomScanType(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/WifiScanController;->addHistoricalScanLog(Ljava/lang/String;I)V

    move v4, v3

    .end local v3    # "scanType":I
    .restart local v4    # "scanType":I
    goto :goto_0

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

    iget-wide v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    sub-long v6, v0, v6

    iget-wide v8, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMaxDuration:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_6

    sget-boolean v5, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "WifiScanController"

    const-string v6, "Ignore scan request, use cached scan result"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/WifiScanController;->addHistoricalScanLog(Ljava/lang/String;I)V

    move v4, v3

    .end local v3    # "scanType":I
    .restart local v4    # "scanType":I
    goto :goto_0

    .end local v4    # "scanType":I
    .restart local v3    # "scanType":I
    :cond_6
    sget-boolean v5, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v5, :cond_7

    const-string v5, "WifiScanController"

    const-string v6, "reset timer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastNLPScanRequestTime:J

    :cond_8
    sget-boolean v5, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v5, :cond_9

    const-string v5, "WifiScanController"

    const-string v6, "force scan"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/WifiScanController;->getCustomScanType(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/WifiScanController;->addHistoricalScanLog(Ljava/lang/String;I)V

    move v4, v3

    .end local v3    # "scanType":I
    .restart local v4    # "scanType":I
    goto/16 :goto_0

    .end local v4    # "scanType":I
    .restart local v3    # "scanType":I
    :cond_a
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsNLPPackage:Z

    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    if-eqz v5, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->checkAndSMDUnregisteration()V

    :cond_b
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mLastActualScanActionTime:J

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/WifiScanController;->addHistoricalScanLog(Ljava/lang/String;I)V

    move v4, v3

    .end local v3    # "scanType":I
    .restart local v4    # "scanType":I
    goto/16 :goto_0
.end method

.method public isNLPPackageFromLastPid()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsNLPPackage:Z

    return v0
.end method

.method public setCustomScanType(Ljava/lang/String;II)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scanType"    # I
    .param p3, "scanDelaySeconds"    # I

    .prologue
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

    :cond_0
    int-to-long v0, p3

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/server/wifi/WifiScanController;->addOrUpdateNLPPackageSetting(Ljava/lang/String;IJ)V

    return-void
.end method

.method public setDurationSettings(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mMaxDuration:J

    return-void
.end method

.method public setEnableToCheckSMD(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mCheckSMDSetting:Z

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiScanController;->unregisterSensorMonitor()V

    :cond_0
    return-void
.end method

.method public unregisterSensorMonitor()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsAnyMotionDetectorSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiScanController"

    const-string v1, "unregister SMD listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z

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

    sget-boolean v2, Lcom/samsung/android/server/wifi/WifiScanController;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiScanController"

    const-string v3, "updateChannelList"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .local v0, "channelSet":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-direct {p0, p1, v4, v4}, Lcom/samsung/android/server/wifi/WifiScanController;->getFilteredChannelList(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannel24Only:[I

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannel24Only:[I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiChannel;

    iget v2, v2, Landroid/net/wifi/WifiChannel;->freqMHz:I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_1
    iput-object v5, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannel24Only:[I

    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v4}, Lcom/samsung/android/server/wifi/WifiScanController;->getFilteredChannelList(Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannelNoDfs:[I

    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannelNoDfs:[I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiChannel;

    iget v2, v2, Landroid/net/wifi/WifiChannel;->freqMHz:I

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_3
    iput-object v5, p0, Lcom/samsung/android/server/wifi/WifiScanController;->mChannelNoDfs:[I

    :cond_4
    return-void
.end method
