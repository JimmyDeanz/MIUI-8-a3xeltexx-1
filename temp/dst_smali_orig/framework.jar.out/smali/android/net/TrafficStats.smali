.class public Landroid/net/TrafficStats;
.super Ljava/lang/Object;
.source "TrafficStats.java"


# static fields
.field public static final GB_IN_BYTES:J = 0x40000000L

.field public static final KB_IN_BYTES:J = 0x400L

.field public static final MB_IN_BYTES:J = 0x100000L

.field public static final PB_IN_BYTES:J = 0x4000000000000L

.field public static final TAG_SYSTEM_BACKUP:I = -0xfd

.field public static final TAG_SYSTEM_DOWNLOAD:I = -0xff

.field public static final TAG_SYSTEM_MEDIA:I = -0xfe

.field public static final TB_IN_BYTES:J = 0x10000000000L

.field private static final TYPE_RX_BYTES:I = 0x0

.field private static final TYPE_RX_PACKETS:I = 0x1

.field private static final TYPE_TCP_RX_PACKETS:I = 0x4

.field private static final TYPE_TCP_TX_PACKETS:I = 0x5

.field private static final TYPE_TX_BYTES:I = 0x2

.field private static final TYPE_TX_PACKETS:I = 0x3

.field public static final UID_REMOVED:I = -0x4

.field public static final UID_TETHERING:I = -0x5

.field public static final UID_VIDEOCALL:I = -0x64

.field public static final UNSUPPORTED:I = -0x1

.field private static mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private static sActiveProfilingStart:Landroid/net/NetworkStats;

.field private static sProfilingLock:Ljava/lang/Object;

.field private static sStatsService:Landroid/net/INetworkStatsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearThreadStatsTag()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)V

    return-void
.end method

.method public static clearThreadStatsUid()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsUid(I)V

    return-void
.end method

.method public static closeQuietly(Landroid/net/INetworkStatsSession;)V
    .locals 2
    .param p0, "session"    # Landroid/net/INetworkStatsSession;

    .prologue
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static getClatIfaces()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, "clatIface":Ljava/lang/String;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .local v3, "iface":Ljava/lang/String;
    const-string v5, "clat4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v3

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "v4-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v3

    goto :goto_1

    .end local v3    # "iface":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method private static getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .local v1, "uid":I
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/net/INetworkStatsService;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getMeteredIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getPolicyManager()Landroid/net/INetworkPolicyManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkPolicyManager;->getMeteredIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getMobileIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->getMobileIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getMobileMeteredRxPackets()J
    .locals 13

    .prologue
    const-wide/16 v8, 0x0

    .local v8, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMeteredIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v5, v0, v4

    .local v5, "iface":Ljava/lang/String;
    const-string v10, "rmnet"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v5}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    goto :goto_1

    .end local v5    # "iface":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v10

    invoke-interface {v10}, Landroid/net/INetworkStatsService;->isDuringVideoCall()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/net/INetworkStatsService;->getNetworkStatsVideoCall(II)Landroid/net/NetworkStats;

    move-result-object v7

    .local v7, "videoCallStats":Landroid/net/NetworkStats;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v7}, Landroid/net/NetworkStats;->size()I

    move-result v10

    if-ge v3, v10, :cond_2

    const/4 v10, 0x0

    invoke-virtual {v7, v3, v10}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v8, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v3    # "i":I
    .end local v7    # "videoCallStats":Landroid/net/NetworkStats;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    return-wide v8
.end method

.method public static getMobileMeteredTxPackets()J
    .locals 13

    .prologue
    const-wide/16 v8, 0x0

    .local v8, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMeteredIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v5, v0, v4

    .local v5, "iface":Ljava/lang/String;
    const-string v10, "rmnet"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v5}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    goto :goto_1

    .end local v5    # "iface":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v10

    invoke-interface {v10}, Landroid/net/INetworkStatsService;->isDuringVideoCall()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/net/INetworkStatsService;->getNetworkStatsVideoCall(II)Landroid/net/NetworkStats;

    move-result-object v7

    .local v7, "videoCallStats":Landroid/net/NetworkStats;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v7}, Landroid/net/NetworkStats;->size()I

    move-result v10

    if-ge v3, v10, :cond_2

    const/4 v10, 0x0

    invoke-virtual {v7, v3, v10}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->txPackets:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v8, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v3    # "i":I
    .end local v7    # "videoCallStats":Landroid/net/NetworkStats;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    return-wide v8
.end method

.method public static getMobileRxBytes()J
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    .local v6, "total":J
    const/4 v1, 0x0

    .local v1, "clatIface":Ljava/lang/String;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .local v3, "iface":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const-string v5, "clat4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v3

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "v4-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v3

    goto :goto_1

    .end local v3    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    :cond_3
    return-wide v6
.end method

.method public static getMobileRxPackets()J
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    .local v6, "total":J
    const/4 v1, 0x0

    .local v1, "clatIface":Ljava/lang/String;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .local v3, "iface":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const-string v5, "clat4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v3

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "v4-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v3

    goto :goto_1

    .end local v3    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    :cond_3
    return-wide v6
.end method

.method public static getMobileRxPackets(Ljava/lang/String;)J
    .locals 8
    .param p0, "interfacename"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .local v2, "iface":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v2}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "iface":Ljava/lang/String;
    :cond_1
    return-wide v4
.end method

.method public static getMobileRxPacketsExcept(Ljava/lang/String;)J
    .locals 8
    .param p0, "interfacename"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .local v2, "iface":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_1

    .end local v2    # "iface":Ljava/lang/String;
    :cond_1
    return-wide v4
.end method

.method public static getMobileTcpRxPackets()J
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    .local v6, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .local v2, "iface":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-static {v2, v8}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    .local v4, "stat":J
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_0

    add-long/2addr v6, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "iface":Ljava/lang/String;
    .end local v4    # "stat":J
    :cond_1
    return-wide v6
.end method

.method public static getMobileTcpTxPackets()J
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    .local v6, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .local v2, "iface":Ljava/lang/String;
    const/4 v8, 0x5

    invoke-static {v2, v8}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    .local v4, "stat":J
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_0

    add-long/2addr v6, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "iface":Ljava/lang/String;
    .end local v4    # "stat":J
    :cond_1
    return-wide v6
.end method

.method public static getMobileTxBytes()J
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    .local v6, "total":J
    const/4 v1, 0x0

    .local v1, "clatIface":Ljava/lang/String;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .local v3, "iface":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const-string v5, "clat4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v3

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "v4-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v3

    goto :goto_1

    .end local v3    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    :cond_3
    return-wide v6
.end method

.method public static getMobileTxPackets()J
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    .local v6, "total":J
    const/4 v1, 0x0

    .local v1, "clatIface":Ljava/lang/String;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .local v3, "iface":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    const-string v5, "clat4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v3

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "v4-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v3

    goto :goto_1

    .end local v3    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    :cond_3
    return-wide v6
.end method

.method public static getMobileTxPackets(Ljava/lang/String;)J
    .locals 8
    .param p0, "interfacename"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .local v2, "iface":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v2}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "iface":Ljava/lang/String;
    :cond_1
    return-wide v4
.end method

.method public static getMobileTxPacketsExcept(Ljava/lang/String;)J
    .locals 8
    .param p0, "interfacename"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .local v4, "total":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .local v2, "iface":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_1

    .end local v2    # "iface":Ljava/lang/String;
    :cond_1
    return-wide v4
.end method

.method private static getMptcpState()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    .local v4, "mptcpState":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_SupportMptcp"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    move v5, v4

    .end local v4    # "mptcpState":Z
    .local v5, "mptcpState":I
    :goto_0
    return v5

    .end local v5    # "mptcpState":I
    .restart local v4    # "mptcpState":Z
    :cond_0
    const/4 v0, 0x0

    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v7, "/proc/sys/net/mptcp/mptcp_enabled"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v6, "socketFile":Ljava/io/File;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v7, "2"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_5

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "socketFile":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    move v5, v4

    .restart local v5    # "mptcpState":I
    goto :goto_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "mptcpState":I
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "socketFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "socketFile":Ljava/io/File;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_5
    throw v7

    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "socketFile":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_5
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private static declared-synchronized getPolicyManager()Landroid/net/INetworkPolicyManager;
    .locals 2

    .prologue
    const-class v1, Landroid/net/TrafficStats;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/net/TrafficStats;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    if-nez v0, :cond_0

    const-string v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    sput-object v0, Landroid/net/TrafficStats;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    :cond_0
    sget-object v0, Landroid/net/TrafficStats;->mPolicyManager:Landroid/net/INetworkPolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getRxBytes(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRxPackets(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static declared-synchronized getStatsService()Landroid/net/INetworkStatsService;
    .locals 2

    .prologue
    const-class v1, Landroid/net/TrafficStats;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    if-nez v0, :cond_0

    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    sput-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    :cond_0
    sget-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getThreadStatsTag()I
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/server/NetworkManagementSocketTagger;->getThreadSocketStatsTag()I

    move-result v0

    return v0
.end method

.method public static getTotalRxBytes()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x2

    const/4 v4, 0x0

    invoke-static {}, Landroid/net/TrafficStats;->getMptcpState()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/net/TrafficStats;->getClatIfaces()Ljava/lang/String;

    move-result-object v0

    .local v0, "clatIface":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v4}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    invoke-static {v0, v4}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    :goto_0
    return-wide v2

    :cond_0
    invoke-static {v4}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    div-long/2addr v2, v6

    goto :goto_0

    .end local v0    # "clatIface":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/net/TrafficStats;->getClatIfaces()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "clatIface":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-static {v4}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    invoke-static {v0, v4}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    goto :goto_0

    :cond_2
    invoke-static {v4}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getTotalRxPackets()J
    .locals 6

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Landroid/net/TrafficStats;->getClatIfaces()Ljava/lang/String;

    move-result-object v0

    .local v0, "clatIface":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    invoke-static {v0, v1}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    :goto_0
    return-wide v2

    :cond_0
    invoke-static {v1}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getTotalTxBytes()J
    .locals 6

    .prologue
    const/4 v1, 0x2

    invoke-static {}, Landroid/net/TrafficStats;->getClatIfaces()Ljava/lang/String;

    move-result-object v0

    .local v0, "clatIface":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    invoke-static {v0, v1}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    :goto_0
    return-wide v2

    :cond_0
    invoke-static {v1}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getTotalTxPackets()J
    .locals 6

    .prologue
    const/4 v1, 0x3

    invoke-static {}, Landroid/net/TrafficStats;->getClatIfaces()Ljava/lang/String;

    move-result-object v0

    .local v0, "clatIface":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    invoke-static {v0, v1}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    :goto_0
    return-wide v2

    :cond_0
    invoke-static {v1}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getTxBytes(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTxPackets(Ljava/lang/String;)J
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidRxBytes(I)J
    .locals 2
    .param p0, "uid"    # I

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidRxPackets(I)J
    .locals 2
    .param p0, "uid"    # I

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidTcpRxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpRxSegments(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpTxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpTxSegments(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTxBytes(I)J
    .locals 2
    .param p0, "uid"    # I

    .prologue
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidTxPackets(I)J
    .locals 2
    .param p0, "uid"    # I

    .prologue
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetUidStat(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidUdpRxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpRxPackets(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpTxBytes(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpTxPackets(I)J
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static incrementOperationCount(I)V
    .locals 1
    .param p0, "operationCount"    # I

    .prologue
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    .local v0, "tag":I
    invoke-static {v0, p0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    return-void
.end method

.method public static incrementOperationCount(II)V
    .locals 3
    .param p0, "tag"    # I
    .param p1, "operationCount"    # I

    .prologue
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .local v1, "uid":I
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-interface {v2, v1, p0, p1}, Landroid/net/INetworkStatsService;->incrementOperationCount(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static native nativeGetIfaceStat(Ljava/lang/String;I)J
.end method

.method private static native nativeGetTotalStat(I)J
.end method

.method private static native nativeGetUidStat(II)J
.end method

.method public static setThreadStatsTag(I)V
    .locals 0
    .param p0, "tag"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)V

    return-void
.end method

.method public static setThreadStatsTagBackup()V
    .locals 1

    .prologue
    const/16 v0, -0xfd

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return-void
.end method

.method public static setThreadStatsUid(I)V
    .locals 0
    .param p0, "uid"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsUid(I)V

    return-void
.end method

.method public static startDataProfiling(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v1, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "already profiling data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    move-result-object v0

    sput-object v0, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static stopDataProfiling(Landroid/content/Context;)Landroid/net/NetworkStats;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v3, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "not profiling data"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    move-result-object v1

    .local v1, "profilingStop":Landroid/net/NetworkStats;
    sget-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v5}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v0

    .local v0, "profilingDelta":Landroid/net/NetworkStats;
    const/4 v2, 0x0

    sput-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->tag(Ljava/net/Socket;)V

    return-void
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->untag(Ljava/net/Socket;)V

    return-void
.end method
