.class public Lcom/android/server/wifi/WifiAutoJoinController;
.super Ljava/lang/Object;
.source "WifiAutoJoinController.java"


# static fields
.field private static final ASSOC_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AUTO_JOIN_EXTENDED_ROAMING:I = 0x2

.field public static final AUTO_JOIN_IDLE:I = 0x0

.field public static final AUTO_JOIN_OUT_OF_NETWORK_ROAMING:I = 0x3

.field public static final AUTO_JOIN_ROAMING:I = 0x1

.field private static DBG:Z = false

.field private static final DEFAULT_EPHEMERAL_OUT_OF_RANGE_TIMEOUT_MS:J = 0xea60L

.field public static final HIGH_THRESHOLD_MODIFIER:I = 0x5

.field public static final MAX_RSSI_DELTA:I = 0x32

.field private static final TAG:Ljava/lang/String; = "WifiAutoJoinController "

.field private static VDBG:Z = false

.field private static final loseBlackListHardMilli:J = 0x1b77400L

.field private static final loseBlackListSoftMilli:J = 0x1b7740L

.field public static mScanResultAutoJoinAge:I

.field public static mScanResultMaximumAge:I

.field private static final mStaStaSupported:Z


# instance fields
.field didBailDueToWeakRssi:Z

.field didOverride:Z

.field private mAllowUntrustedConnections:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentConfigurationKey:Ljava/lang/String;

.field private mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

.field private mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field private mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private final scanResultCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private scoreManager:Landroid/net/NetworkScoreManager;

.field weakRssiBailCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    sput-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    .line 60
    sput-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    .line 63
    const v0, 0x9c40

    sput v0, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    .line 64
    const/16 v0, 0x1388

    sput v0, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultAutoJoinAge:I

    .line 1298
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ASSOCIATING"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "ASSOCIATED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "FOUR_WAY_HANDSHAKE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GROUP_KEY_HANDSHAKE"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiAutoJoinController;->ASSOC_STATES:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiConfigStore;Landroid/net/wifi/WifiConnectionStatistics;Lcom/android/server/wifi/WifiNative;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "w"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p3, "s"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p4, "st"    # Landroid/net/wifi/WifiConnectionStatistics;
    .param p5, "n"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    .line 75
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->didOverride:Z

    .line 105
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->didBailDueToWeakRssi:Z

    .line 110
    iput v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    .line 114
    iput-object p1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 116
    iput-object p3, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 117
    iput-object p5, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 118
    iput-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    .line 119
    iput-object p4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    .line 120
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    const-string v1, "network_score"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    .line 122
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    if-nez v0, :cond_0

    .line 123
    const-string v0, "Registered scoreManager NULL  service network_score"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    if-eqz v0, :cond_1

    .line 126
    new-instance v0, Lcom/android/server/wifi/WifiNetworkScoreCache;

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    .line 127
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v0, v3, v1}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 134
    :goto_0
    return-void

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No network score service: Couldnt register as a WiFi score Manager, type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "network_score"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 132
    iput-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    goto :goto_0
.end method

.method private ageScanResultsOut(I)V
    .locals 10
    .param p1, "delay"    # I

    .prologue
    .line 154
    if-gtz p1, :cond_0

    .line 155
    sget p1, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    .line 157
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 158
    .local v2, "milli":J
    sget-boolean v5, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v5, :cond_1

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ageScanResultsOut delay "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " now "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 163
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 164
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/ScanDetail;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 166
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/ScanDetail;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wifi/ScanDetail;

    .line 167
    .local v4, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v4}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v6

    int-to-long v8, p1

    add-long/2addr v6, v8

    cmp-long v5, v6, v2

    if-gez v5, :cond_2

    .line 168
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 171
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/ScanDetail;>;"
    .end local v4    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_3
    return-void
.end method

.method private compareNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I
    .locals 4
    .param p1, "candidate"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "lastSelectedConfiguration"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 363
    if-nez p1, :cond_1

    .line 364
    const/4 v1, -0x3

    .line 416
    :cond_0
    :goto_0
    return v1

    .line 366
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 367
    .local v0, "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_2

    .line 370
    const/16 v1, 0x3e8

    goto :goto_0

    .line 373
    :cond_2
    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 374
    const/4 v1, -0x2

    goto :goto_0

    .line 377
    :cond_3
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v2, :cond_4

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compareNetwork will compare "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 381
    :cond_4
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 388
    .local v1, "order":I
    if-eqz p2, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 394
    add-int/lit8 v1, v1, -0x64

    .line 395
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v2, :cond_0

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "     ...and prefers -100 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because it is the last selected -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 401
    :cond_5
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    add-int/lit8 v1, v1, 0x64

    .line 408
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v2, :cond_0

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "     ...and prefers +100 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because it is the last selected -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getNetID(Ljava/lang/String;)I
    .locals 11
    .param p1, "wpaStatus"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    .line 1305
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v9, :cond_0

    .line 1306
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "attemptAutoJoin() status="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1310
    :cond_0
    const/4 v1, -0x1

    .line 1311
    .local v1, "id":I
    const/4 v7, 0x0

    .line 1312
    .local v7, "state":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/StringReader;

    invoke-direct {v9, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1314
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1315
    const/16 v9, 0x3d

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1316
    .local v6, "split":I
    if-ltz v6, :cond_1

    .line 1320
    const/4 v9, 0x0

    invoke-virtual {v3, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1321
    .local v4, "name":Ljava/lang/String;
    const-string v9, "id"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-eqz v9, :cond_3

    .line 1323
    add-int/lit8 v9, v6, 0x1

    :try_start_1
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 1324
    if-eqz v7, :cond_1

    .line 1341
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "id":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "split":I
    :cond_2
    :goto_0
    return v1

    .line 1327
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "id":I
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "split":I
    :catch_0
    move-exception v5

    .local v5, "nfe":Ljava/lang/NumberFormatException;
    move v1, v8

    .line 1328
    goto :goto_0

    .line 1330
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :cond_3
    :try_start_2
    const-string v9, "wpa_state"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1331
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1332
    sget-object v9, Lcom/android/server/wifi/WifiAutoJoinController;->ASSOC_STATES:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v9

    if-eqz v9, :cond_4

    move v1, v8

    .line 1333
    goto :goto_0

    .line 1334
    :cond_4
    if-ltz v1, :cond_1

    goto :goto_0

    .line 1340
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "split":I
    :catch_1
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    move v1, v8

    .line 1341
    goto :goto_0
.end method

.method private haveRecentlySeenScoredBssid(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 14
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1230
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_ephemeral_out_of_range_timeout_ms"

    const-wide/32 v12, 0xea60

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1240
    .local v4, "ephemeralOutOfRangeTimeoutMs":J
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 1241
    .local v1, "currentScanResult":Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_2

    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v9, v1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->hasScoreCurve(Landroid/net/wifi/ScanResult;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v0, 0x1

    .line 1243
    .local v0, "currentNetworkHasScoreCurve":Z
    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-lez v9, :cond_0

    if-eqz v0, :cond_4

    .line 1244
    :cond_0
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v9, :cond_1

    .line 1245
    if-eqz v0, :cond_3

    .line 1246
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current network has a score curve, keeping network: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1276
    .end local v0    # "currentNetworkHasScoreCurve":Z
    :cond_1
    :goto_1
    return v0

    .line 1241
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1249
    .restart local v0    # "currentNetworkHasScoreCurve":Z
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current network has no score curve, giving up: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_1

    .line 1255
    :cond_4
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v9, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v9, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wifi/ScanDetailCache;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1257
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 1260
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1261
    .local v2, "currentTimeMs":J
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v9, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/ScanDetail;

    .line 1262
    .local v8, "sd":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v7

    .line 1263
    .local v7, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v10

    cmp-long v9, v2, v10

    if-lez v9, :cond_7

    invoke-virtual {v8}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v10

    sub-long v10, v2, v10

    cmp-long v9, v10, v4

    if-gez v9, :cond_7

    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v9, v7}, Lcom/android/server/wifi/WifiNetworkScoreCache;->hasScoreCurve(Landroid/net/wifi/ScanResult;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1266
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v9, :cond_8

    .line 1267
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found scored BSSID, keeping network: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1269
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1273
    .end local v7    # "result":Landroid/net/wifi/ScanResult;
    .end local v8    # "sd":Lcom/android/server/wifi/ScanDetail;
    :cond_9
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v9, :cond_a

    .line 1274
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No recently scored BSSID found, giving up connection: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1276
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private isOpenNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 1224
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logDenial(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1925
    sget-boolean v0, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-nez v0, :cond_0

    .line 1929
    :goto_0
    return-void

    .line 1928
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCurrentConfigurationKey(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 5
    .param p1, "currentConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "supplicantNetId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 1347
    if-eqz p1, :cond_4

    .line 1348
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq p2, v2, :cond_0

    if-eq p2, v3, :cond_0

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, v3, :cond_0

    .line 1353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attemptAutoJoin() ERROR wpa_supplicant out of sync nid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " WifiStateMachine="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1356
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    .line 1374
    :goto_0
    return v1

    .line 1358
    :cond_0
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiAutoJoinController;->haveRecentlySeenScoredBssid(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1364
    :cond_1
    const-string v2, "attemptAutoJoin() disconnecting from unwanted ephemeral network"

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1365
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v3, 0x3f2

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand(II)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1369
    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    move v1, v0

    .line 1370
    goto :goto_0

    .line 1374
    :cond_4
    if-ne p2, v3, :cond_5

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private updateBlackListStatus(Landroid/net/wifi/WifiConfiguration;J)V
    .locals 10
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "now"    # J

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1381
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v2, v8, :cond_0

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 1386
    :cond_0
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    cmp-long v2, v2, p2

    if-lez v2, :cond_2

    .line 1389
    :cond_1
    iput-wide p2, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    .line 1391
    :cond_2
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    sub-long v2, p2, v2

    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v4, v4, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 1394
    iput v8, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1397
    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 1398
    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 1399
    iput v6, p1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    .line 1400
    invoke-virtual {p1, v6}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 1402
    iput-boolean v7, p1, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 1414
    :cond_3
    :goto_0
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v2, :cond_4

    .line 1415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attemptAutoJoin skip candidate due to auto join status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v7}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1420
    :cond_4
    return-void

    .line 1404
    :cond_5
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v2, :cond_3

    .line 1405
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    int-to-long v2, v2

    iget-wide v4, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    sub-long v4, p2, v4

    sub-long v0, v2, v4

    .line 1407
    .local v0, "delay":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attemptautoJoin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dont unblacklist yet, waiting for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method addToScanCache(Ljava/util/List;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "scanList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    const/4 v7, 0x0

    .line 225
    .local v7, "numScanResultsKnown":I
    const/4 v2, 0x0

    .line 226
    .local v2, "associatedConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v4, 0x0

    .line 227
    .local v4, "didAssociate":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 229
    .local v8, "now":J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v13, "unknownScanResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wifi/ScanDetail;

    .line 232
    .local v11, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v11}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v10

    .line 233
    .local v10, "result":Landroid/net/wifi/ScanResult;
    iget-object v14, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v14, :cond_0

    .line 235
    sget-boolean v14, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v14, :cond_1

    .line 236
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " addToScanCache "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " tsf="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v10, Landroid/net/wifi/ScanResult;->timestamp:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " now= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " uptime="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " elapsed="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 243
    :cond_1
    invoke-virtual {v11}, Lcom/android/server/wifi/ScanDetail;->setSeen()J

    .line 245
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiAutoJoinController;->averageRssiAndRemoveFromCache(Landroid/net/wifi/ScanResult;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v14, v10}, Lcom/android/server/wifi/WifiNetworkScoreCache;->isScoredNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 248
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13}, Lcom/android/server/wifi/WifiAutoJoinController;->addToUnscoredNetworks(Landroid/net/wifi/ScanResult;Ljava/util/List;)V

    .line 261
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    iget-object v15, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v14, v11}, Lcom/android/server/wifi/WifiConfigStore;->updateSavedNetworkHistory(Lcom/android/server/wifi/ScanDetail;)Z

    move-result v4

    .line 266
    if-nez v4, :cond_6

    .line 269
    const/4 v14, 0x1

    iput-boolean v14, v10, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 276
    :cond_3
    :goto_2
    if-eqz v4, :cond_7

    .line 277
    add-int/lit8 v7, v7, 0x1

    .line 278
    iget v14, v10, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v10, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    goto/16 :goto_0

    .line 250
    :cond_4
    sget-boolean v14, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v14, :cond_2

    .line 251
    const-string v3, ""

    .line 252
    .local v3, "cap":Ljava/lang/String;
    iget-object v14, v10, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v14, :cond_5

    .line 253
    iget-object v3, v10, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 254
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v14, v10}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;)I

    move-result v12

    .line 255
    .local v12, "score":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " rssi="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v10, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " cap "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is scored : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_1

    .line 272
    .end local v3    # "cap":Ljava/lang/String;
    .end local v12    # "score":I
    :cond_6
    iget-wide v14, v10, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    sub-long v14, v8, v14

    const-wide/32 v16, 0x1b77400

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    .line 273
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    goto :goto_2

    .line 280
    :cond_7
    const/4 v14, 0x0

    iput v14, v10, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    goto/16 :goto_0

    .line 284
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    .end local v11    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-eqz v14, :cond_9

    .line 285
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Landroid/net/NetworkKey;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/NetworkKey;

    .line 288
    .local v6, "newKeys":[Landroid/net/NetworkKey;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiAutoJoinController;->scoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v14, v6}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    .line 290
    .end local v6    # "newKeys":[Landroid/net/NetworkKey;
    :cond_9
    return v7
.end method

.method addToUnscoredNetworks(Landroid/net/wifi/ScanResult;Ljava/util/List;)V
    .locals 8
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Ljava/util/List",
            "<",
            "Landroid/net/NetworkKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, "unknownScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkKey;>;"
    :try_start_0
    new-instance v3, Landroid/net/WifiKey;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/net/WifiKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .local v3, "wkey":Landroid/net/WifiKey;
    :goto_0
    if-eqz v3, :cond_0

    .line 210
    new-instance v2, Landroid/net/NetworkKey;

    invoke-direct {v2, v3}, Landroid/net/NetworkKey;-><init>(Landroid/net/WifiKey;)V

    .line 212
    .local v2, "nkey":Landroid/net/NetworkKey;
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .end local v2    # "nkey":Landroid/net/NetworkKey;
    :cond_0
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_2

    .line 215
    const-string v0, ""

    .line 216
    .local v0, "cap":Ljava/lang/String;
    iget-object v4, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 217
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 218
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rssi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tsf "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not scored"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 221
    .end local v0    # "cap":Ljava/lang/String;
    :cond_2
    return-void

    .line 204
    .end local v3    # "wkey":Landroid/net/WifiKey;
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AutoJoinController: received badly encoded SSID=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] ->skipping this network"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 207
    const/4 v3, 0x0

    .restart local v3    # "wkey":Landroid/net/WifiKey;
    goto :goto_0
.end method

.method attemptAutoJoin()Z
    .locals 48

    .prologue
    .line 1441
    const/16 v18, 0x0

    .line 1442
    .local v18, "found":Z
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->didOverride:Z

    .line 1443
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->didBailDueToWeakRssi:Z

    .line 1444
    const/16 v28, 0x0

    .line 1445
    .local v28, "networkSwitchType":I
    sget v6, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultAutoJoinAge:I

    .line 1447
    .local v6, "age":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 1449
    .local v30, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v23

    .line 1450
    .local v23, "lastSelectedConfiguration":Ljava/lang/String;
    if-eqz v23, :cond_0

    .line 1451
    const/16 v6, 0x36b0

    .line 1455
    :cond_0
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    .line 1458
    .local v14, "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    const/4 v8, 0x0

    .line 1460
    .local v8, "candidate":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v0, v6, v1}, Lcom/android/server/wifi/WifiConfigStore;->getRecentConfiguredNetworks(IZ)Ljava/util/List;

    move-result-object v26

    .line 1462
    .local v26, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v26, :cond_2

    .line 1463
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v43, :cond_1

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "attemptAutoJoin nothing known="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworksSize()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1465
    :cond_1
    const/16 v43, 0x0

    .line 1921
    :goto_0
    return v43

    .line 1469
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiNative;->status(Z)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->getNetID(Ljava/lang/String;)I

    move-result v41

    .line 1471
    .local v41, "supplicantNetId":I
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v43, :cond_5

    .line 1472
    const-string v9, ""

    .line 1473
    .local v9, "conf":Ljava/lang/String;
    const-string v22, ""

    .line 1474
    .local v22, "last":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 1475
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, " current="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1477
    :cond_3
    if-eqz v23, :cond_4

    .line 1478
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, " last="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1480
    :cond_4
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "attemptAutoJoin() num recent config "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " ---> suppNetId="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1485
    .end local v9    # "conf":Ljava/lang/String;
    .end local v22    # "last":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v14, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->setCurrentConfigurationKey(Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v43

    if-nez v43, :cond_6

    .line 1486
    const/16 v43, 0x0

    goto/16 :goto_0

    .line 1489
    :cond_6
    const/4 v15, -0x1

    .line 1490
    .local v15, "currentNetId":I
    if-eqz v14, :cond_7

    .line 1493
    iget v15, v14, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1501
    :cond_7
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_22

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 1502
    .local v10, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v43, v0

    if-eqz v43, :cond_8

    .line 1506
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v43, v0

    const/16 v44, 0x80

    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_9

    .line 1507
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-direct {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->updateBlackListStatus(Landroid/net/wifi/WifiConfiguration;J)V

    goto :goto_1

    .line 1511
    :cond_9
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v43, v0

    const/16 v44, 0x3

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_a

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v43, v0

    const/16 v44, 0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_b

    .line 1513
    :cond_a
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v43, :cond_8

    .line 1514
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "attemptAutoJoin skip candidate due to user approval status "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/net/wifi/WifiConfiguration;->userApprovedAsString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " key "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_1

    .line 1522
    :cond_b
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmp-long v43, v44, v46

    if-lez v43, :cond_c

    .line 1523
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v44, v0

    cmp-long v43, v30, v44

    if-gez v43, :cond_e

    .line 1529
    const/16 v43, 0x0

    move/from16 v0, v43

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 1541
    :cond_c
    :goto_2
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v43, v0

    if-eqz v43, :cond_8

    .line 1546
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiAutoJoinController;->underSoftThreshold(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v43

    if-eqz v43, :cond_10

    .line 1547
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v43, :cond_d

    .line 1548
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "attemptAutoJoin do not unblacklist due to low visibility "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " status="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1567
    :cond_d
    :goto_3
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_12

    .line 1570
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v43, :cond_8

    .line 1571
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "attemptAutoJoin skip blacklisted -> status="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " status="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1531
    :cond_e
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v44, v0

    sub-long v44, v30, v44

    const-wide/32 v46, 0x1b77400

    cmp-long v43, v44, v46

    if-lez v43, :cond_f

    .line 1533
    const/16 v43, 0x0

    move/from16 v0, v43

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto/16 :goto_2

    .line 1534
    :cond_f
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v44, v0

    sub-long v44, v30, v44

    const-wide/32 v46, 0x1b7740

    cmp-long v43, v44, v46

    if-lez v43, :cond_c

    .line 1536
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x8

    move/from16 v0, v43

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto/16 :goto_2

    .line 1551
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiAutoJoinController;->underHardThreshold(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v43

    if-eqz v43, :cond_11

    .line 1554
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x1

    move/from16 v0, v43

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 1555
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v43, :cond_d

    .line 1556
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "attemptAutoJoin good candidate seen, bumped soft -> status="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " status="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1560
    :cond_11
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x3

    move/from16 v0, v43

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 1561
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v43, :cond_d

    .line 1562
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "attemptAutoJoin good candidate seen, bumped hard -> status="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " status="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1576
    :cond_12
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v43, v0

    move/from16 v0, v43

    if-ne v0, v15, :cond_13

    .line 1577
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v43, :cond_8

    .line 1578
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "attemptAutoJoin skip current candidate  "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " key "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1585
    :cond_13
    const/16 v21, 0x0

    .line 1586
    .local v21, "isLastSelected":Z
    if-eqz v23, :cond_14

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_14

    .line 1588
    const/16 v21, 0x1

    .line 1591
    :cond_14
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmp-long v43, v44, v46

    if-eqz v43, :cond_16

    if-eqz v14, :cond_16

    if-eqz v23, :cond_15

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_16

    .line 1599
    :cond_15
    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    move-wide/from16 v44, v0

    cmp-long v43, v30, v44

    if-lez v43, :cond_16

    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    move-wide/from16 v44, v0

    sub-long v44, v30, v44

    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    move-wide/from16 v46, v0

    cmp-long v43, v44, v46

    if-gez v43, :cond_16

    .line 1602
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v43, :cond_8

    .line 1603
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "compareNetwork not switching to "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " from current "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " because it is blacklisted due to roam failure, "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " blacklist remain time = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget-wide v0, v10, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    move-wide/from16 v44, v0

    sub-long v44, v30, v44

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " ms"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1613
    :cond_16
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    move/from16 v44, v0

    add-int v7, v43, v44

    .line 1614
    .local v7, "boost":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v43

    sub-int v43, v43, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin5RSSI:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v44

    sub-int v44, v44, v7

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->underThreshold(Landroid/net/wifi/WifiConfiguration;II)Z

    move-result v43

    if-eqz v43, :cond_19

    .line 1618
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v43, :cond_17

    .line 1619
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "attemptAutoJoin skip due to low visibility "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1624
    :cond_17
    if-nez v21, :cond_18

    .line 1625
    const/16 v43, 0x1

    move/from16 v0, v43

    iput-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    .line 1626
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->didBailDueToWeakRssi:Z

    goto/16 :goto_1

    .line 1630
    :cond_18
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    move/from16 v43, v0

    sget v44, Landroid/net/wifi/WifiConfiguration;->MAX_INITIAL_AUTO_JOIN_RSSI_BOOST:I

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_19

    iget-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    move/from16 v43, v0

    if-eqz v43, :cond_19

    .line 1633
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x4

    move/from16 v0, v43

    iput v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    .line 1638
    :cond_19
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    move/from16 v43, v0

    if-lez v43, :cond_1a

    if-nez v21, :cond_1a

    iget-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    move/from16 v43, v0

    if-nez v43, :cond_1a

    .line 1644
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v43, :cond_8

    .line 1645
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "attemptAutoJoin skip candidate due to no InternetAccess  "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " num reports "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1652
    :cond_1a
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v43, :cond_1c

    .line 1653
    const-string v11, ""

    .line 1654
    .local v11, "cur":Ljava/lang/String;
    if-eqz v8, :cond_1b

    .line 1655
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, " current candidate "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1657
    :cond_1b
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "attemptAutoJoin trying id="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " status="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1664
    .end local v11    # "cur":Ljava/lang/String;
    :cond_1c
    if-nez v8, :cond_1d

    .line 1665
    move-object v8, v10

    goto/16 :goto_1

    .line 1667
    :cond_1d
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v43, :cond_1e

    .line 1668
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "attemptAutoJoin will compare candidate  "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " with "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1672
    :cond_1e
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    move-result v29

    .line 1673
    .local v29, "order":I
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v43, :cond_1f

    .line 1674
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "attemptAutoJoin compareWifiConfigurations returned "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1682
    :cond_1f
    if-eqz v23, :cond_21

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_21

    .line 1688
    add-int/lit8 v29, v29, -0x64

    .line 1689
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v43, :cond_20

    .line 1690
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "     ...and prefers -100 "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " over "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " because it is the last selected -> "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1710
    :cond_20
    :goto_4
    if-lez v29, :cond_8

    .line 1712
    move-object v8, v10

    goto/16 :goto_1

    .line 1695
    :cond_21
    if-eqz v23, :cond_20

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_20

    .line 1701
    add-int/lit8 v29, v29, 0x64

    .line 1702
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v43, :cond_20

    .line 1703
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "     ...and prefers +100 "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " over "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " because it is the last selected -> "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_4

    .line 1718
    .end local v7    # "boost":I
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v21    # "isLastSelected":Z
    .end local v29    # "order":I
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    move-object/from16 v43, v0

    if-eqz v43, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    move/from16 v43, v0

    if-eqz v43, :cond_27

    .line 1719
    sget v38, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 1720
    .local v38, "rssi5":I
    sget v37, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 1721
    .local v37, "rssi24":I
    if-eqz v8, :cond_23

    .line 1722
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    move/from16 v38, v0

    .line 1723
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    move/from16 v37, v0

    .line 1727
    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 1728
    .local v32, "nowMs":J
    const/16 v16, -0x2710

    .line 1730
    .local v16, "currentScore":I
    const/16 v42, 0x0

    .line 1732
    .local v42, "untrustedCandidate":Lcom/android/server/wifi/ScanDetail;
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->isBadCandidate(II)Z

    move-result v43

    if-eqz v43, :cond_26

    .line 1733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_24
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_26

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/wifi/ScanDetail;

    .line 1734
    .local v39, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v35

    .line 1737
    .local v35, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v43

    if-nez v43, :cond_24

    move-object/from16 v0, v35

    iget-boolean v0, v0, Landroid/net/wifi/ScanResult;->untrusted:Z

    move/from16 v43, v0

    if-eqz v43, :cond_24

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->isOpenNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v43

    if-eqz v43, :cond_24

    .line 1741
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "\""

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\""

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 1742
    .local v34, "quotedSSID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_24

    .line 1746
    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v44, v0

    sub-long v44, v32, v44

    sget v43, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultAutoJoinAge:I

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v46, v0

    cmp-long v43, v44, v46

    if-gez v43, :cond_24

    .line 1748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const/16 v45, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v34

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiConnectionStatistics;->incrementOrAddUntrusted(Ljava/lang/String;II)V

    .line 1750
    if-eqz v14, :cond_25

    iget-object v0, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_25

    const/16 v20, 0x1

    .line 1752
    .local v20, "isActiveNetwork":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v35

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)I

    move-result v40

    .line 1753
    .local v40, "score":I
    sget v43, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    move/from16 v0, v40

    move/from16 v1, v43

    if-eq v0, v1, :cond_24

    move/from16 v0, v40

    move/from16 v1, v16

    if-le v0, v1, :cond_24

    .line 1756
    move/from16 v16, v40

    .line 1757
    move-object/from16 v42, v39

    .line 1758
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v43, :cond_24

    .line 1759
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "AutoJoinController: found untrusted candidate "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " RSSI="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v35

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " freq="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v35

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " score="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1750
    .end local v20    # "isActiveNetwork":Z
    .end local v40    # "score":I
    :cond_25
    const/16 v20, 0x0

    goto :goto_6

    .line 1769
    .end local v34    # "quotedSSID":Ljava/lang/String;
    .end local v35    # "result":Landroid/net/wifi/ScanResult;
    .end local v39    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_26
    if-eqz v42, :cond_27

    .line 1772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigurationFromScanResult(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 1774
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Ljava/util/BitSet;->set(I)V

    .line 1775
    const/16 v43, 0x1

    move/from16 v0, v43

    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 1776
    const/16 v43, 0x1

    move/from16 v0, v43

    iput-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 1780
    .end local v16    # "currentScore":I
    .end local v32    # "nowMs":J
    .end local v37    # "rssi24":I
    .end local v38    # "rssi5":I
    .end local v42    # "untrustedCandidate":Lcom/android/server/wifi/ScanDetail;
    :cond_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    move-wide/from16 v46, v0

    sub-long v24, v44, v46

    .line 1783
    .local v24, "lastUnwanted":J
    if-nez v8, :cond_38

    if-nez v23, :cond_38

    if-nez v14, :cond_38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->didBailDueToWeakRssi:Z

    move/from16 v43, v0

    if-eqz v43, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmp-long v43, v44, v46

    if-eqz v43, :cond_28

    const-wide/32 v44, 0x240c8400

    cmp-long v43, v24, v44

    if-lez v43, :cond_38

    .line 1798
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    move/from16 v43, v0

    const/16 v44, 0xa

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_29

    .line 1799
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    .line 1809
    :cond_29
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v8, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->compareNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I

    move-result v27

    .line 1810
    .local v27, "networkDelta":I
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v43, :cond_2c

    if-eqz v8, :cond_2c

    .line 1811
    const-string v17, ""

    .line 1812
    .local v17, "doSwitch":Ljava/lang/String;
    const-string v12, ""

    .line 1813
    .local v12, "current":Ljava/lang/String;
    if-gez v27, :cond_2a

    .line 1814
    const-string v17, " -> not switching"

    .line 1816
    :cond_2a
    if-eqz v14, :cond_2b

    .line 1817
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, " with current "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1819
    :cond_2b
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "attemptAutoJoin networkSwitching candidate "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " linked="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    if-eqz v14, :cond_39

    invoke-virtual {v14, v8}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v43

    if-eqz v43, :cond_39

    const/16 v43, 0x1

    :goto_8
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " : delta="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1834
    .end local v12    # "current":Ljava/lang/String;
    .end local v17    # "doSwitch":Ljava/lang/String;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->shouldSwitchNetwork(I)Z

    move-result v43

    if-eqz v43, :cond_33

    .line 1838
    if-eqz v14, :cond_3a

    invoke-virtual {v14, v8}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v43

    if-eqz v43, :cond_3a

    .line 1839
    const/16 v28, 0x2

    .line 1843
    :goto_9
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v43, :cond_2d

    .line 1844
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "AutoJoin auto connect with netId "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " to "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1848
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->didOverride:Z

    move/from16 v43, v0

    if-eqz v43, :cond_2e

    .line 1849
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v43

    iput v0, v8, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    .line 1851
    :cond_2e
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v43

    iput v0, v8, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    .line 1852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numAutoJoinAttempt:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v43

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numAutoJoinAttempt:I

    .line 1854
    iget-boolean v0, v8, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move/from16 v43, v0

    if-eqz v43, :cond_2f

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    move-object/from16 v43, v0

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    const/16 v46, 0x0

    invoke-virtual/range {v43 .. v46}, Landroid/net/wifi/WifiConnectionStatistics;->incrementOrAddUntrusted(Ljava/lang/String;II)V

    .line 1861
    :cond_2f
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v43, v0

    if-eqz v43, :cond_30

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v43, v0

    const-string v44, "any"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_32

    .line 1865
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentBSSID()Ljava/lang/String;

    move-result-object v13

    .line 1866
    .local v13, "currentBSSID":Ljava/lang/String;
    const/16 v43, 0x0

    sget v44, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultAutoJoinAge:I

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptRoam(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v36

    .line 1868
    .local v36, "roamCandidate":Landroid/net/wifi/ScanResult;
    if-eqz v36, :cond_31

    if-eqz v13, :cond_31

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_31

    .line 1871
    const/16 v36, 0x0

    .line 1873
    :cond_31
    if-eqz v36, :cond_3b

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v43

    if-eqz v43, :cond_3b

    .line 1877
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    .line 1878
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v43, :cond_32

    .line 1879
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "AutoJoinController: lock to 5GHz "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " RSSI="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v36

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " freq="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v36

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1889
    .end local v13    # "currentBSSID":Ljava/lang/String;
    .end local v36    # "roamCandidate":Landroid/net/wifi/ScanResult;
    :cond_32
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x2008f

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v45, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1891
    const/16 v18, 0x1

    .line 1895
    :cond_33
    if-nez v28, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v43

    if-nez v43, :cond_36

    .line 1896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentBSSID()Ljava/lang/String;

    move-result-object v13

    .line 1898
    .restart local v13    # "currentBSSID":Ljava/lang/String;
    const/16 v43, 0x0

    sget v44, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultAutoJoinAge:I

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v14, v2, v13}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptRoam(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v36

    .line 1900
    .restart local v36    # "roamCandidate":Landroid/net/wifi/ScanResult;
    if-eqz v36, :cond_34

    if-eqz v13, :cond_34

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_34

    .line 1902
    const/16 v36, 0x0

    .line 1904
    :cond_34
    if-eqz v36, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const/16 v44, 0x3e7

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/wifi/WifiStateMachine;->shouldSwitchNetwork(I)Z

    move-result v43

    if-eqz v43, :cond_36

    .line 1905
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v43, :cond_35

    .line 1906
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "AutoJoin auto roam with netId "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v14, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " to BSSID="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " freq="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v36

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " RSSI="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v36

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1912
    :cond_35
    const/16 v28, 0x1

    .line 1913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numAutoRoamAttempt:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v43

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numAutoRoamAttempt:I

    .line 1915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v43, v0

    const v44, 0x20091

    iget v0, v14, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v45, v0

    const/16 v46, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move-object/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1917
    const/16 v18, 0x1

    .line 1920
    .end local v13    # "currentBSSID":Ljava/lang/String;
    .end local v36    # "roamCandidate":Landroid/net/wifi/ScanResult;
    :cond_36
    sget-boolean v43, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v43, :cond_37

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Done attemptAutoJoin status="

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_37
    move/from16 v43, v18

    .line 1921
    goto/16 :goto_0

    .line 1801
    .end local v27    # "networkDelta":I
    :cond_38
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    move/from16 v43, v0

    if-lez v43, :cond_29

    .line 1802
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiAutoJoinController;->weakRssiBailCount:I

    goto/16 :goto_7

    .line 1819
    .restart local v12    # "current":Ljava/lang/String;
    .restart local v17    # "doSwitch":Ljava/lang/String;
    .restart local v27    # "networkDelta":I
    :cond_39
    const/16 v43, 0x0

    goto/16 :goto_8

    .line 1841
    .end local v12    # "current":Ljava/lang/String;
    .end local v17    # "doSwitch":Ljava/lang/String;
    :cond_3a
    const/16 v28, 0x3

    goto/16 :goto_9

    .line 1886
    .restart local v13    # "currentBSSID":Ljava/lang/String;
    .restart local v36    # "roamCandidate":Landroid/net/wifi/ScanResult;
    :cond_3b
    const-string v43, "any"

    move-object/from16 v0, v43

    iput-object v0, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    goto/16 :goto_a
.end method

.method public attemptRoam(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 20
    .param p1, "a"    # Landroid/net/wifi/ScanResult;
    .param p2, "current"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "age"    # I
    .param p4, "currentBSSID"    # Ljava/lang/String;

    .prologue
    .line 1012
    if-nez p2, :cond_1

    .line 1013
    sget-boolean v15, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v15, :cond_0

    .line 1014
    const-string v15, "attemptRoam not associated"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v2, p1

    .line 1148
    .end local p1    # "a":Landroid/net/wifi/ScanResult;
    .local v2, "a":Landroid/net/wifi/ScanResult;
    :goto_0
    return-object v2

    .line 1019
    .end local v2    # "a":Landroid/net/wifi/ScanResult;
    .restart local p1    # "a":Landroid/net/wifi/ScanResult;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v13

    .line 1022
    .local v13, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v13, :cond_3

    .line 1023
    sget-boolean v15, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v15, :cond_2

    .line 1024
    const-string v15, "attemptRoam no scan cache"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v2, p1

    .line 1026
    .end local p1    # "a":Landroid/net/wifi/ScanResult;
    .restart local v2    # "a":Landroid/net/wifi/ScanResult;
    goto :goto_0

    .line 1028
    .end local v2    # "a":Landroid/net/wifi/ScanResult;
    .restart local p1    # "a":Landroid/net/wifi/ScanResult;
    :cond_3
    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v15

    const/16 v16, 0x6

    move/from16 v0, v16

    if-le v15, v0, :cond_5

    .line 1029
    sget-boolean v15, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v15, :cond_4

    .line 1030
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "attemptRoam scan cache size "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " --> bail"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_4
    move-object/from16 v2, p1

    .line 1035
    .end local p1    # "a":Landroid/net/wifi/ScanResult;
    .restart local v2    # "a":Landroid/net/wifi/ScanResult;
    goto :goto_0

    .line 1038
    .end local v2    # "a":Landroid/net/wifi/ScanResult;
    .restart local p1    # "a":Landroid/net/wifi/ScanResult;
    :cond_5
    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v15, :cond_7

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string v16, "any"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 1039
    sget-boolean v15, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v15, :cond_6

    .line 1040
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "attemptRoam() BSSID is set "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " -> bail"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_6
    move-object/from16 v2, p1

    .line 1043
    .end local p1    # "a":Landroid/net/wifi/ScanResult;
    .restart local v2    # "a":Landroid/net/wifi/ScanResult;
    goto/16 :goto_0

    .line 1048
    .end local v2    # "a":Landroid/net/wifi/ScanResult;
    .restart local p1    # "a":Landroid/net/wifi/ScanResult;
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1050
    .local v10, "nowMs":J
    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wifi/ScanDetail;

    .line 1051
    .local v14, "sd":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v5

    .line 1052
    .local v5, "b":Landroid/net/wifi/ScanResult;
    const/4 v7, 0x0

    .line 1053
    .local v7, "bRssiBoost5":I
    const/4 v4, 0x0

    .line 1054
    .local v4, "aRssiBoost5":I
    const/4 v6, 0x0

    .line 1055
    .local v6, "bRssiBoost":I
    const/4 v3, 0x0

    .line 1056
    .local v3, "aRssiBoost":I
    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-eqz v15, :cond_8

    iget-object v15, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v15, :cond_8

    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v16

    sub-long v16, v10, v16

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v15, v16, v18

    if-gtz v15, :cond_8

    iget v15, v5, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    if-nez v15, :cond_8

    iget v15, v5, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-gt v15, v0, :cond_8

    .line 1064
    if-nez p1, :cond_9

    .line 1065
    move-object/from16 p1, v5

    .line 1066
    goto :goto_1

    .line 1069
    :cond_9
    iget v15, v5, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ge v15, v0, :cond_a

    .line 1071
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "attemptRoam: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " rssi="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v5, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ipfail="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v5, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " freq="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v5, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " > "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " rssi="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ipfail="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " freq="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1077
    move-object/from16 p1, v5

    .line 1078
    goto/16 :goto_1

    .line 1082
    :cond_a
    if-eqz p4, :cond_b

    iget-object v15, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1084
    iget v15, v5, Landroid/net/wifi/ScanResult;->level:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v16

    move/from16 v0, v16

    if-gt v15, v0, :cond_11

    .line 1085
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v6, v15, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    .line 1090
    :cond_b
    :goto_2
    if-eqz p4, :cond_c

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 1091
    move-object/from16 v0, p1

    iget v15, v0, Landroid/net/wifi/ScanResult;->level:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v16

    move/from16 v0, v16

    if-gt v15, v0, :cond_12

    .line 1093
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v3, v15, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    .line 1109
    :cond_c
    :goto_3
    invoke-virtual {v5}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 1110
    iget v15, v5, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v15, v6

    iget-object v0, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->rssiBoostFrom5GHzRssi(ILjava/lang/String;)I

    move-result v7

    .line 1112
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 1113
    move-object/from16 v0, p1

    iget v15, v0, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v15, v3

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->rssiBoostFrom5GHzRssi(ILjava/lang/String;)I

    move-result v4

    .line 1116
    :cond_e
    sget-boolean v15, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v15, :cond_10

    .line 1117
    const-string v8, " < "

    .line 1118
    .local v8, "comp":Ljava/lang/String;
    iget v15, v5, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v15, v6

    add-int/2addr v15, v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v16, v0

    add-int v16, v16, v3

    add-int v16, v16, v4

    move/from16 v0, v16

    if-le v15, v0, :cond_f

    .line 1119
    const-string v8, " > "

    .line 1121
    :cond_f
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "attemptRoam: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " rssi="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v5, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " boost="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " freq="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v5, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " rssi="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " boost="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " freq="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1131
    .end local v8    # "comp":Ljava/lang/String;
    :cond_10
    iget v15, v5, Landroid/net/wifi/ScanResult;->level:I

    add-int/2addr v15, v6

    add-int/2addr v15, v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v16, v0

    add-int v16, v16, v3

    add-int v16, v16, v4

    move/from16 v0, v16

    if-le v15, v0, :cond_8

    .line 1133
    move-object/from16 p1, v5

    goto/16 :goto_1

    .line 1087
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v6, v15, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    goto/16 :goto_2

    .line 1095
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v3, v15, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    goto/16 :goto_3

    .line 1136
    .end local v3    # "aRssiBoost":I
    .end local v4    # "aRssiBoost5":I
    .end local v5    # "b":Landroid/net/wifi/ScanResult;
    .end local v6    # "bRssiBoost":I
    .end local v7    # "bRssiBoost5":I
    .end local v14    # "sd":Lcom/android/server/wifi/ScanDetail;
    :cond_13
    if-eqz p1, :cond_15

    .line 1137
    sget-boolean v15, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v15, :cond_15

    .line 1138
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1139
    .local v12, "sb":Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "attemptRoam: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Found "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " rssi="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " freq="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    if-eqz p4, :cond_14

    .line 1142
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " Current: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    :cond_14
    const-string v15, "\n"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_15
    move-object/from16 v2, p1

    .line 1148
    .end local p1    # "a":Landroid/net/wifi/ScanResult;
    .restart local v2    # "a":Landroid/net/wifi/ScanResult;
    goto/16 :goto_0
.end method

.method averageRssiAndRemoveFromCache(Landroid/net/wifi/ScanResult;)V
    .locals 6
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 176
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/ScanDetail;

    .line 177
    .local v0, "sd":Lcom/android/server/wifi/ScanDetail;
    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {v0}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 179
    .local v1, "sr":Landroid/net/wifi/ScanResult;
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/net/wifi/ScanResult;->level:I

    if-nez v2, :cond_0

    iget v2, v1, Landroid/net/wifi/ScanResult;->level:I

    const/16 v3, -0x14

    if-ge v2, v3, :cond_0

    .line 184
    iget v2, v1, Landroid/net/wifi/ScanResult;->level:I

    iput v2, p1, Landroid/net/wifi/ScanResult;->level:I

    .line 188
    :cond_0
    iget v2, v1, Landroid/net/wifi/ScanResult;->level:I

    iget-wide v4, v1, Landroid/net/wifi/ScanResult;->seen:J

    sget v3, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    invoke-virtual {p1, v2, v4, v5, v3}, Landroid/net/wifi/ScanResult;->averageRssi(IJI)V

    .line 191
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .end local v1    # "sr":Landroid/net/wifi/ScanResult;
    :cond_1
    :goto_0
    return-void

    .line 192
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    if-eqz v2, :cond_1

    iget v2, p1, Landroid/net/wifi/ScanResult;->level:I

    if-nez v2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v2, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    iput v2, p1, Landroid/net/wifi/ScanResult;->level:I

    goto :goto_0
.end method

.method compareWifiConfigurations(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 8
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 837
    const/4 v2, 0x0

    .line 838
    .local v2, "order":I
    const/4 v1, 0x0

    .line 840
    .local v1, "linked":Z
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-nez v5, :cond_0

    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-nez v5, :cond_0

    .line 843
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p2, v4}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 845
    const/4 v1, 0x1

    .line 849
    :cond_0
    iget-boolean v5, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v5, :cond_2

    .line 850
    sget-boolean v5, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v5, :cond_1

    .line 851
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    compareWifiConfigurations ephemeral and prefers "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " over "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 938
    :cond_1
    :goto_0
    return v4

    .line 856
    :cond_2
    iget-boolean v4, p2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v4, :cond_4

    .line 857
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_3

    .line 858
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    compareWifiConfigurations ephemeral and prefers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " over "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 861
    :cond_3
    const/4 v4, -0x1

    goto :goto_0

    .line 866
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mCurrentConfigurationKey:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurationsRSSI(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 870
    if-nez v1, :cond_8

    .line 873
    invoke-virtual {p0, p1, p2, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->getConnectChoice(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Z)I

    move-result v0

    .line 874
    .local v0, "choice":I
    if-lez v0, :cond_6

    .line 876
    sub-int/2addr v2, v0

    .line 877
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_5

    .line 878
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    compareWifiConfigurations prefers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " over "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " due to user choice of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " order -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 883
    :cond_5
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    if-eqz v4, :cond_6

    .line 884
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iput v0, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceBoost:I

    .line 885
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceConfig:Ljava/lang/String;

    .line 889
    :cond_6
    invoke-virtual {p0, p2, p1, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->getConnectChoice(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Z)I

    move-result v0

    .line 890
    if-lez v0, :cond_8

    .line 892
    add-int/2addr v2, v0

    .line 893
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_7

    .line 894
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    compareWifiConfigurations prefers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " over "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " due to user choice of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " order ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 898
    :cond_7
    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    if-eqz v4, :cond_8

    .line 899
    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iput v0, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceBoost:I

    .line 900
    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceConfig:Ljava/lang/String;

    .line 905
    .end local v0    # "choice":I
    :cond_8
    if-nez v2, :cond_a

    .line 908
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v4, v5, :cond_d

    .line 910
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_9

    .line 911
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    compareWifiConfigurations prefers -1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " over "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " due to priority"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 915
    :cond_9
    const/4 v2, -0x1

    .line 926
    :cond_a
    :goto_1
    const-string v3, " == "

    .line 927
    .local v3, "sorder":Ljava/lang/String;
    if-lez v2, :cond_f

    .line 928
    const-string v3, " < "

    .line 933
    :cond_b
    :goto_2
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_c

    .line 934
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compareWifiConfigurations: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " order "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    :cond_c
    move v4, v2

    .line 938
    goto/16 :goto_0

    .line 916
    .end local v3    # "sorder":Ljava/lang/String;
    :cond_d
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v4, v5, :cond_a

    .line 918
    sget-boolean v4, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v4, :cond_e

    .line 919
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    compareWifiConfigurations prefers +1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " over "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " due to priority"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 922
    :cond_e
    const/4 v2, 0x1

    goto :goto_1

    .line 929
    .restart local v3    # "sorder":Ljava/lang/String;
    :cond_f
    if-gez v2, :cond_b

    .line 930
    const-string v3, " > "

    goto :goto_2
.end method

.method compareWifiConfigurationsFromVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;ILjava/lang/String;Landroid/net/wifi/WifiConfiguration$Visibility;ILjava/lang/String;)I
    .locals 9
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration$Visibility;
    .param p2, "aRssiBoost"    # I
    .param p3, "dbgA"    # Ljava/lang/String;
    .param p4, "b"    # Landroid/net/wifi/WifiConfiguration$Visibility;
    .param p5, "bRssiBoost"    # I
    .param p6, "dbgB"    # Ljava/lang/String;

    .prologue
    .line 597
    const/4 v1, 0x0

    .line 598
    .local v1, "aRssiBoost5":I
    const/4 v4, 0x0

    .line 600
    .local v4, "bRssiBoost5":I
    const/4 v2, 0x0

    .line 601
    .local v2, "aScore":I
    const/4 v5, 0x0

    .line 603
    .local v5, "bScore":I
    const/4 v0, 0x0

    .line 604
    .local v0, "aPrefers5GHz":Z
    const/4 v3, 0x0

    .line 613
    .local v3, "bPrefers5GHz":Z
    iget v6, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->rssiBoostFrom5GHzRssi(ILjava/lang/String;)I

    move-result v1

    .line 614
    iget v6, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->rssiBoostFrom5GHzRssi(ILjava/lang/String;)I

    move-result v4

    .line 617
    iget v6, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    add-int/2addr v6, v1

    iget v7, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    if-le v6, v7, :cond_0

    .line 619
    const/4 v0, 0x1

    .line 623
    :cond_0
    iget v6, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    add-int/2addr v6, v4

    iget v7, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    if-le v6, v7, :cond_1

    .line 625
    const/4 v3, 0x1

    .line 628
    :cond_1
    if-eqz v0, :cond_6

    .line 629
    if-eqz v3, :cond_5

    .line 633
    iget v6, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    add-int v2, v6, p2

    .line 642
    :goto_0
    if-eqz v3, :cond_8

    .line 643
    if-eqz v0, :cond_7

    .line 647
    iget v6, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    add-int v5, v6, p5

    .line 656
    :goto_1
    sget-boolean v6, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v6, :cond_2

    .line 657
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "        "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is5="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " score="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is5="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " score="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 662
    :cond_2
    if-eqz p1, :cond_3

    .line 663
    iput v2, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->score:I

    .line 664
    iput p2, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->currentNetworkBoost:I

    .line 665
    iput v1, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->bandPreferenceBoost:I

    .line 667
    :cond_3
    if-eqz p4, :cond_4

    .line 668
    iput v5, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->score:I

    .line 669
    iput p5, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->currentNetworkBoost:I

    .line 670
    iput v4, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->bandPreferenceBoost:I

    .line 676
    :cond_4
    sub-int v6, v5, v2

    return v6

    .line 636
    :cond_5
    iget v6, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    add-int/2addr v6, p2

    add-int v2, v6, v1

    goto :goto_0

    .line 639
    :cond_6
    iget v6, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    add-int v2, v6, p2

    goto :goto_0

    .line 650
    :cond_7
    iget v6, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    add-int/2addr v6, p5

    add-int v5, v6, v4

    goto :goto_1

    .line 653
    :cond_8
    iget v6, p4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    add-int v5, v6, p5

    goto :goto_1
.end method

.method compareWifiConfigurationsRSSI(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I
    .locals 11
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "currentConfiguration"    # Ljava/lang/String;

    .prologue
    .line 688
    const/4 v9, 0x0

    .line 691
    .local v9, "order":I
    const/4 v2, 0x0

    .line 692
    .local v2, "aRssiBoost":I
    const/4 v5, 0x0

    .line 695
    .local v5, "bRssiBoost":I
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    .line 696
    .local v7, "astatus":Landroid/net/wifi/WifiConfiguration$Visibility;
    iget-object v8, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    .line 697
    .local v8, "bstatus":Landroid/net/wifi/WifiConfiguration$Visibility;
    if-eqz v7, :cond_0

    if-nez v8, :cond_1

    .line 699
    :cond_0
    const-string v0, "    compareWifiConfigurations NULL band status!"

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 700
    const/4 v0, 0x0

    .line 752
    :goto_0
    return v0

    .line 704
    :cond_1
    if-eqz p3, :cond_2

    .line 705
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 706
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v2, v0, Lcom/android/server/wifi/WifiConfigStore;->currentNetworkBoost:I

    .line 712
    :cond_2
    :goto_1
    sget-boolean v0, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v0, :cond_3

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    compareWifiConfigurationsRSSI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " boost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " boost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 724
    :cond_3
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/WifiAutoJoinController;->compareWifiConfigurationsFromVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;ILjava/lang/String;Landroid/net/wifi/WifiConfiguration$Visibility;ILjava/lang/String;)I

    move-result v9

    .line 729
    const/16 v0, 0x32

    if-le v9, v0, :cond_8

    const/16 v9, 0x32

    .line 732
    :cond_4
    :goto_2
    sget-boolean v0, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v0, :cond_6

    .line 733
    const-string v10, " = "

    .line 734
    .local v10, "prefer":Ljava/lang/String;
    if-lez v9, :cond_9

    .line 735
    const-string v10, " < "

    .line 739
    :cond_5
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    compareWifiConfigurationsRSSI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rssi=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") num=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rssi=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") num=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .end local v10    # "prefer":Ljava/lang/String;
    :cond_6
    move v0, v9

    .line 752
    goto/16 :goto_0

    .line 707
    :cond_7
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 708
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v5, v0, Lcom/android/server/wifi/WifiConfigStore;->currentNetworkBoost:I

    goto/16 :goto_1

    .line 730
    :cond_8
    const/16 v0, -0x32

    if-ge v9, v0, :cond_4

    const/16 v9, -0x32

    goto/16 :goto_2

    .line 736
    .restart local v10    # "prefer":Ljava/lang/String;
    :cond_9
    if-gez v9, :cond_5

    .line 737
    const-string v10, " > "

    goto/16 :goto_3
.end method

.method enableVerboseLogging(I)V
    .locals 3
    .param p1, "verbose"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 137
    if-lez p1, :cond_1

    .line 138
    sput-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    .line 139
    sput-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    .line 144
    :goto_0
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 145
    sput-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    .line 146
    sput-boolean v1, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    .line 148
    :cond_0
    return-void

    .line 141
    :cond_1
    sput-boolean v1, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    .line 142
    sput-boolean v1, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    goto :goto_0
.end method

.method getConfigNetworkScore(Landroid/net/wifi/WifiConfiguration;IZ)I
    .locals 12
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "age"    # I
    .param p3, "isActive"    # Z

    .prologue
    .line 1163
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    if-nez v7, :cond_2

    .line 1164
    sget-boolean v7, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v7, :cond_0

    .line 1165
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "       getConfigNetworkScore for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  -> no scorer, hence no scores"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1168
    :cond_0
    sget v6, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    .line 1208
    :cond_1
    :goto_0
    return v6

    .line 1171
    :cond_2
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v7, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v7

    if-nez v7, :cond_4

    .line 1172
    sget-boolean v7, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v7, :cond_3

    .line 1173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "       getConfigNetworkScore for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> no scan cache"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 1176
    :cond_3
    sget v6, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    goto :goto_0

    .line 1180
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1182
    .local v2, "nowMs":J
    const/16 v6, -0x2710

    .line 1185
    .local v6, "startScore":I
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v7, p1}, Lcom/android/server/wifi/WifiConfigStore;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/ScanDetail;

    .line 1186
    .local v5, "sd":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .line 1187
    .local v1, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    move-result-wide v8

    sub-long v8, v2, v8

    int-to-long v10, p2

    cmp-long v7, v8, v10

    if-gez v7, :cond_5

    .line 1188
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    invoke-virtual {v7, v1, p3}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)I

    move-result v4

    .line 1189
    .local v4, "sc":I
    if-le v4, v6, :cond_5

    .line 1190
    move v6, v4

    goto :goto_1

    .line 1194
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    .end local v4    # "sc":I
    .end local v5    # "sd":Lcom/android/server/wifi/ScanDetail;
    :cond_6
    const/16 v7, -0x2710

    if-ne v6, v7, :cond_7

    .line 1195
    sget v6, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    .line 1197
    :cond_7
    sget-boolean v7, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v7, :cond_1

    .line 1198
    sget v7, Lcom/android/server/wifi/WifiNetworkScoreCache;->INVALID_NETWORK_SCORE:I

    if-ne v6, v7, :cond_8

    .line 1199
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    getConfigNetworkScore for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> no available score"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1202
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    getConfigNetworkScore for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isActive="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " score = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method getConnectChoice(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Z)I
    .locals 10
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "target"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "strict"    # Z

    .prologue
    const/4 v9, 0x1

    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, "choice":I
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 561
    :cond_0
    const/4 v7, 0x0

    .line 591
    :goto_0
    return v7

    .line 564
    :cond_1
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v7, :cond_4

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {p2, v9}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 566
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {p2, v9}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 567
    .local v6, "val":Ljava/lang/Integer;
    if-eqz v6, :cond_2

    .line 568
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 584
    .end local v6    # "val":Ljava/lang/Integer;
    :cond_2
    if-nez p3, :cond_3

    if-nez v0, :cond_3

    .line 586
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiAutoJoinController;->getSecurityScore(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    .line 587
    .local v4, "sourceScore":I
    invoke-virtual {p0, p2}, Lcom/android/server/wifi/WifiAutoJoinController;->getSecurityScore(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    .line 588
    .local v5, "targetScore":I
    sub-int v0, v4, v5

    .end local v4    # "sourceScore":I
    .end local v5    # "targetScore":I
    :cond_3
    move v7, v0

    .line 591
    goto :goto_0

    .line 570
    :cond_4
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v7, :cond_2

    .line 571
    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 572
    .local v3, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v7, v3}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 573
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_5

    .line 574
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v7, :cond_5

    .line 575
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {p2, v9}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 576
    .restart local v6    # "val":Ljava/lang/Integer;
    if-eqz v6, :cond_5

    .line 577
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
.end method

.method getPnoList(Landroid/net/wifi/WifiConfiguration;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "current"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0xa0

    .line 1939
    const/4 v7, -0x1

    .line 1940
    .local v7, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1942
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;>;"
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 1943
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1946
    :cond_0
    sget-boolean v8, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v8, :cond_2

    .line 1947
    const-string v6, ""

    .line 1948
    .local v6, "s":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1949
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1951
    :cond_1
    const-string v8, "WifiAutoJoinController "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " get Pno List total size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    .end local v6    # "s":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_5

    .line 1954
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    .line 1959
    .local v2, "configKey":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;

    .line 1960
    .local v5, "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiAutoJoinController;->getWifiConfiguration(Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1961
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_3

    .line 1964
    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-ge v8, v11, :cond_3

    .line 1969
    iget-object v8, v5, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->configKey:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1970
    const/4 v8, 0x1

    invoke-virtual {p0, v1, p1, v8}, Lcom/android/server/wifi/WifiAutoJoinController;->getConnectChoice(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Z)I

    move-result v0

    .line 1971
    .local v0, "choice":I
    if-lez v0, :cond_3

    .line 1973
    sget-boolean v8, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v8, :cond_4

    .line 1974
    const-string v8, "WifiAutoJoinController "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Pno List adding:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->configKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " choice "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :cond_4
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1978
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    iput v8, v5, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->rssi_threshold:I

    goto :goto_0

    .line 1983
    .end local v0    # "choice":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "configKey":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    :cond_5
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->mCachedPnoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;

    .line 1984
    .restart local v5    # "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiAutoJoinController;->getWifiConfiguration(Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1985
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_6

    .line 1988
    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-ge v8, v11, :cond_6

    .line 1992
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1993
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    iput v8, v5, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->rssi_threshold:I

    goto :goto_1

    .line 1996
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "network":Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    :cond_7
    return-object v4
.end method

.method getSecurityScore(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, 0x0

    .line 817
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 818
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 822
    :cond_0
    const/16 v0, 0x64

    .line 833
    :cond_1
    :goto_0
    return v0

    .line 823
    :cond_2
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    const/16 v0, 0x21

    goto :goto_0

    .line 827
    :cond_3
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 829
    const/16 v0, 0x42

    goto :goto_0
.end method

.method getWifiConfiguration(Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "network"    # Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;

    .prologue
    .line 1932
    iget-object v0, p1, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->configKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1933
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->configKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1935
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isBadCandidate(II)Z
    .locals 1
    .param p1, "rssi5"    # I
    .param p2, "rssi24"    # I

    .prologue
    .line 942
    const/16 v0, -0x50

    if-ge p1, v0, :cond_0

    const/16 v0, -0x5a

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method linkQualitySignificantChange()V
    .locals 0

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    .line 351
    return-void
.end method

.method logDbg(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;Z)V

    .line 295
    return-void
.end method

.method logDbg(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Z

    .prologue
    .line 298
    if-eqz p2, :cond_0

    .line 299
    const-string v0, "WifiAutoJoinController "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    const-string v0, "WifiAutoJoinController "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method newHalScanResults()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 336
    const/4 v1, 0x0

    .line 337
    .local v1, "scanList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-static {v2, v2}, Lcom/android/server/wifi/WifiParser;->parse_akm([Lcom/android/server/wifi/WifiParser$IE;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "akm":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->addToScanCache(Ljava/util/List;)I

    .line 340
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->ageScanResultsOut(I)V

    .line 341
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    .line 342
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 343
    return-void
.end method

.method newSupplicantResults(Z)I
    .locals 4
    .param p1, "doAutoJoin"    # Z

    .prologue
    .line 312
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getScanResultsListNoCopyUnsync()Ljava/util/List;

    move-result-object v1

    .line 313
    .local v1, "scanList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->addToScanCache(Ljava/util/List;)I

    move-result v0

    .line 314
    .local v0, "numScanResultsKnown":I
    sget v2, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->ageScanResultsOut(I)V

    .line 315
    sget-boolean v2, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v2, :cond_0

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newSupplicantResults size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiAutoJoinController;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " known="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 320
    :cond_0
    if-eqz p1, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    .line 323
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 324
    return v0
.end method

.method public rssiBoostFrom5GHzRssi(ILjava/lang/String;)I
    .locals 3
    .param p1, "rssi"    # I
    .param p2, "dbg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 972
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-boolean v1, v1, Lcom/android/server/wifi/WifiConfigStore;->enable5GHzPreference:Z

    if-nez v1, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return v0

    .line 975
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-le p1, v1, :cond_3

    .line 981
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostFactor5:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sub-int v2, p1, v2

    mul-int v0, v1, v2

    .line 983
    .local v0, "boost":I
    const/16 v1, 0x32

    if-le v0, v1, :cond_2

    .line 986
    const/16 v0, 0x32

    .line 988
    :cond_2
    sget-boolean v1, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":    rssi5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 5GHz-boost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_0

    .line 994
    .end local v0    # "boost":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 997
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, v1, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyFactor5:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sub-int v2, p1, v2

    mul-int v0, v1, v2

    .line 999
    .restart local v0    # "boost":I
    goto :goto_0
.end method

.method setAllowUntrustedConnections(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 1215
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 1216
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mAllowUntrustedConnections:Z

    .line 1217
    if-eqz v0, :cond_0

    .line 1219
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->startScanForUntrustedSettingChange()V

    .line 1221
    :cond_0
    return-void

    .line 1215
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method underHardThreshold(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1428
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Hard:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method underSoftThreshold(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1423
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Soft:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method underThreshold(Landroid/net/wifi/WifiConfiguration;II)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "rssi24"    # I
    .param p3, "rssi5"    # I

    .prologue
    .line 1433
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    if-ge v0, p2, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    if-ge v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateConfigurationHistory(IZZ)V
    .locals 12
    .param p1, "netId"    # I
    .param p2, "userTriggered"    # Z
    .param p3, "connect"    # Z

    .prologue
    .line 431
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v9, p1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 432
    .local v7, "selected":Landroid/net/wifi/WifiConfiguration;
    if-nez v7, :cond_1

    .line 433
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateConfigurationHistory nid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " no selected configuration!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 438
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateConfigurationHistory nid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " no SSID in selected configuration!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_2
    if-eqz p2, :cond_3

    .line 446
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 447
    const/4 v9, 0x0

    iput-boolean v9, v7, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 448
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 451
    :cond_3
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v9, :cond_4

    if-eqz p2, :cond_4

    .line 452
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v9, :cond_8

    .line 453
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateConfigurationHistory will update "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " now: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;Z)V

    .line 464
    :cond_4
    :goto_1
    if-eqz p3, :cond_f

    if-eqz p2, :cond_f

    .line 465
    const/4 v2, 0x0

    .line 466
    .local v2, "found":Z
    const/4 v0, 0x0

    .line 467
    .local v0, "choice":I
    const/4 v8, 0x0

    .line 471
    .local v8, "size":I
    const/4 v9, 0x0

    iput v9, v7, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    .line 472
    const/4 v9, 0x0

    iput v9, v7, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    .line 473
    const/4 v9, 0x0

    iput v9, v7, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    .line 474
    iget v9, v7, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v7, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    .line 476
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    const/16 v10, 0x2ee0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wifi/WifiConfigStore;->getRecentConfiguredNetworks(IZ)Ljava/util/List;

    move-result-object v6

    .line 478
    .local v6, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 479
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateConfigurationHistory found "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " networks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 480
    if-eqz v6, :cond_f

    .line 481
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 482
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->DBG:Z

    if-eqz v9, :cond_7

    .line 483
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateConfigurationHistory got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " nid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 487
    :cond_7
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 488
    const/4 v2, 0x1

    .line 489
    goto :goto_2

    .line 458
    .end local v0    # "choice":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "found":Z
    .end local v6    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v8    # "size":I
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateConfigurationHistory will update "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 494
    .restart local v0    # "choice":I
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "found":Z
    .restart local v6    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v8    # "size":I
    :cond_9
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    if-eqz v9, :cond_6

    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    iget-object v10, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v10, v10, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    if-ge v9, v10, :cond_a

    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    iget-object v10, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v10, v10, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    if-lt v9, v10, :cond_6

    .line 501
    :cond_a
    const/16 v0, 0x3c

    .line 507
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-nez v9, :cond_b

    .line 508
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    .line 511
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateConfigurationHistory add a choice "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " over "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " choice "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 516
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v9, :cond_6

    .line 519
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v9, :cond_c

    .line 520
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateConfigurationHistory will remove "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 524
    :cond_c
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v9, :cond_6

    .line 529
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 530
    .local v5, "key":Ljava/lang/String;
    iget-object v9, v1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 535
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    :cond_d
    if-nez v2, :cond_e

    .line 540
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateConfigurationHistory try to connect to an old network!! : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 544
    :cond_e
    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v9, :cond_f

    .line 545
    sget-boolean v9, Lcom/android/server/wifi/WifiAutoJoinController;->VDBG:Z

    if-eqz v9, :cond_f

    .line 546
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateConfigurationHistory "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " now: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiAutoJoinController;->logDbg(Ljava/lang/String;)V

    .line 553
    .end local v0    # "choice":I
    .end local v2    # "found":Z
    .end local v6    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v8    # "size":I
    :cond_f
    if-nez p2, :cond_10

    if-eqz p3, :cond_0

    .line 554
    :cond_10
    iget-object v9, p0, Lcom/android/server/wifi/WifiAutoJoinController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    goto/16 :goto_0
.end method
