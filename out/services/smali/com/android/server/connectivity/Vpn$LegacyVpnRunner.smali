.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.super Ljava/lang/Thread;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyVpnRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyVpnRunner"


# instance fields
.field private final mArguments:[[Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCredentialResetFilter:Landroid/content/BroadcastReceiver;

.field private final mDaemons:[Ljava/lang/String;

.field private final mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOuterInterface:Ljava/lang/String;

.field private mServerIP:Ljava/lang/String;

.field private final mSockets:[Landroid/net/LocalSocket;

.field private mTimer:J

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .param p2, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p3, "racoon"    # [Ljava/lang/String;
    .param p4, "mtpd"    # [Ljava/lang/String;

    .prologue
    .line 1472
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 1473
    const-string v11, "LegacyVpnRunner"

    invoke-direct {p0, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1423
    new-instance v11, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v12, -0x1

    invoke-direct {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v11, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1426
    const-wide/16 v12, -0x1

    iput-wide v12, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    .line 1432
    new-instance v11, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;

    invoke-direct {v11, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    iput-object v11, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1452
    new-instance v11, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

    invoke-direct {v11, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    iput-object v11, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mCredentialResetFilter:Landroid/content/BroadcastReceiver;

    .line 1474
    # setter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {p1 .. p2}, Lcom/android/server/connectivity/Vpn;->access$1102(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;

    .line 1476
    if-nez p4, :cond_1

    const/4 v11, 0x2

    aget-object v11, p3, v11

    const-string/jumbo v12, "hybridrsa"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1478
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "charon"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "mtpd"

    aput-object v13, v11, v12

    iput-object v11, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .line 1482
    :goto_0
    const-string v11, "LegacyVpnRunner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Daemon[0]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    const/4 v11, 0x2

    new-array v11, v11, [[Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    # invokes: Lcom/android/server/connectivity/Vpn;->copyStringArray([Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$1900(Lcom/android/server/connectivity/Vpn;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    # invokes: Lcom/android/server/connectivity/Vpn;->copyStringArray([Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$1900(Lcom/android/server/connectivity/Vpn;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    iput-object v11, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .line 1486
    iget-object v11, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v11, v11

    new-array v11, v11, [Landroid/net/LocalSocket;

    iput-object v11, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .line 1494
    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {p1 .. p1}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v11, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 1496
    iget-object v11, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1497
    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    .line 1498
    .local v3, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    .local v2, "arr$":[Landroid/net/Network;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v9, v2, v6

    .line 1499
    .local v9, "network":Landroid/net/Network;
    invoke-virtual {v3, v9}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v8

    .line 1500
    .local v8, "lp":Landroid/net/LinkProperties;
    if-eqz v8, :cond_0

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1501
    invoke-virtual {v3, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 1502
    .local v10, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v10, :cond_0

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1498
    .end local v10    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1480
    .end local v2    # "arr$":[Landroid/net/Network;
    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "lp":Landroid/net/LinkProperties;
    .end local v9    # "network":Landroid/net/Network;
    :cond_1
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "racoon"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "mtpd"

    aput-object v13, v11, v12

    iput-object v11, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    goto/16 :goto_0

    .line 1507
    :cond_2
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1508
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v11, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1509
    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v11, v12, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1510
    new-instance v4, Landroid/content/IntentFilter;

    const-string v11, "android.security.STORAGE_CHANGED"

    invoke-direct {v4, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1511
    .local v4, "credentialResetFilter":Landroid/content/IntentFilter;
    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mCredentialResetFilter:Landroid/content/BroadcastReceiver;

    invoke-virtual {v11, v12, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1512
    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)[Landroid/net/LocalSocket;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    return-object v0
.end method

.method private agentConnectForKnoxInterface()V
    .locals 20

    .prologue
    .line 1645
    new-instance v9, Landroid/net/LinkProperties;

    invoke-direct {v9}, Landroid/net/LinkProperties;-><init>()V

    .line 1646
    .local v9, "lp":Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2300(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1652
    .local v14, "dnsServer":Ljava/lang/String;
    invoke-static {v14}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    .line 1653
    .local v12, "address":Ljava/net/InetAddress;
    invoke-virtual {v9, v12}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_0

    .line 1657
    .end local v12    # "address":Ljava/net/InetAddress;
    .end local v14    # "dnsServer":Ljava/lang/String;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 1658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/LinkAddress;

    .line 1659
    .local v12, "address":Landroid/net/LinkAddress;
    invoke-virtual {v9, v12}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 1660
    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_2

    .line 1661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/server/connectivity/Vpn;->mAddress:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Vpn;->access$2402(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 1662
    const-string v2, "LegacyVpnRunner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The ipv4 address added to the knox vpn interface is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mAddress:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2400(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_2
    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_1

    .line 1665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/server/connectivity/Vpn;->mV6Address:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Vpn;->access$2502(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 1666
    const-string v2, "LegacyVpnRunner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The ipv6 address added to the knox vpn interface is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mV6Address:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1672
    .end local v12    # "address":Landroid/net/LinkAddress;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1673
    .local v13, "buffer":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 1674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1675
    .local v15, "domain":Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1678
    .end local v15    # "domain":Ljava/lang/String;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 1680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    new-instance v11, Landroid/net/NetworkMisc;

    invoke-direct {v11}, Landroid/net/NetworkMisc;-><init>()V

    .line 1684
    .local v11, "networkMisc":Landroid/net/NetworkMisc;
    const/4 v2, 0x0

    iput-boolean v2, v11, Landroid/net/NetworkMisc;->allowBypass:Z

    .line 1685
    const/4 v2, 0x1

    iput-boolean v2, v11, Landroid/net/NetworkMisc;->knoxProfile:Z

    .line 1687
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1689
    .local v18, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v17, v0

    new-instance v2, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$3;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mLooper:Landroid/os/Looper;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$2800(Lcom/android/server/connectivity/Vpn;)Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "VPN"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$2300(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkCapabilities;

    move-result-object v8

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$3;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    move-object/from16 v0, v17

    # setter for: Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v0, v2}, Lcom/android/server/connectivity/Vpn;->access$2702(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1697
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1699
    return-void

    .line 1697
    :catchall_0
    move-exception v2

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private checkpoint(Z)V
    .locals 8
    .param p1, "yield"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    .line 1596
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1597
    .local v0, "now":J
    iget-wide v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1598
    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    .line 1599
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1606
    :goto_0
    return-void

    .line 1600
    :cond_0
    iget-wide v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 1601
    if-eqz p1, :cond_1

    const-wide/16 v2, 0xc8

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 1603
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "checkpoint"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1604
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Time is up"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private clear_arguments()V
    .locals 8

    .prologue
    .line 1586
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .local v2, "arr$":[[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v2    # "arr$":[[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 1587
    .local v1, "arguments":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1588
    move-object v3, v1

    .local v3, "arr$":[Ljava/lang/String;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v0, v3, v4

    .line 1589
    .local v0, "argument":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 1588
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1586
    .end local v0    # "argument":Ljava/lang/String;
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    :cond_0
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .line 1593
    .end local v1    # "arguments":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private execute(Z)V
    .locals 32
    .param p1, "isKnoxProfile"    # Z

    .prologue
    .line 1770
    const/16 v24, 0x0

    .line 1773
    .local v24, "initFinished":Z
    const-string v31, ""

    .line 1774
    .local v31, "typeForAudit":Ljava/lang/String;
    const-string v11, ""

    .line 1775
    .local v11, "addressForAudit":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 1776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v14, v2, v3

    .line 1777
    .local v14, "argumentsForAudit":[Ljava/lang/String;
    array-length v2, v14

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 1778
    const/4 v2, 0x1

    aget-object v31, v14, v2

    .line 1779
    const/4 v2, 0x2

    aget-object v11, v14, v2

    .line 1785
    .end local v14    # "argumentsForAudit":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1788
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .local v15, "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v22, 0x0

    .local v22, "i$":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    aget-object v17, v15, v22

    .line 1789
    .local v17, "daemon":Ljava/lang/String;
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1790
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2015
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v17    # "daemon":Ljava/lang/String;
    .end local v22    # "i$":I
    .end local v25    # "len$":I
    :catch_0
    move-exception v19

    .line 2017
    .local v19, "e":Ljava/lang/Exception;
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connecting to VPN network to server address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2025
    const-string v2, "LegacyVpnRunner"

    const-string v3, "Aborting"

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2027
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2030
    if-nez v24, :cond_26

    .line 2031
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v15    # "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v25, v0

    .restart local v25    # "len$":I
    const/16 v22, 0x0

    .restart local v22    # "i$":I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_26

    aget-object v17, v15, v22

    .line 2032
    .restart local v17    # "daemon":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2031
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 1788
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 1795
    .end local v17    # "daemon":Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v30, Ljava/io/File;

    const-string v2, "/data/misc/vpn/state"

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1796
    .local v30, "state":Ljava/io/File;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    .line 1797
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1798
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot delete the state"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2030
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v22    # "i$":I
    .end local v25    # "len$":I
    .end local v30    # "state":Ljava/io/File;
    :catchall_0
    move-exception v2

    if-nez v24, :cond_28

    .line 2031
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v15    # "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v25, v0

    .restart local v25    # "len$":I
    const/16 v22, 0x0

    .restart local v22    # "i$":I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_28

    aget-object v17, v15, v22

    .line 2032
    .restart local v17    # "daemon":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2031
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 1800
    .end local v17    # "daemon":Ljava/lang/String;
    .restart local v30    # "state":Ljava/io/File;
    :cond_3
    :try_start_3
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/vpn/abort"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1801
    const/16 v24, 0x1

    .line 1804
    const/16 v28, 0x0

    .line 1805
    .local v28, "restart":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .local v15, "arr$":[[Ljava/lang/String;
    array-length v0, v15

    move/from16 v25, v0

    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    aget-object v13, v15, v22

    .line 1806
    .local v13, "arguments":[Ljava/lang/String;
    if-nez v28, :cond_4

    if-eqz v13, :cond_5

    :cond_4
    const/16 v28, 0x1

    .line 1805
    :goto_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 1806
    :cond_5
    const/16 v28, 0x0

    goto :goto_5

    .line 1808
    .end local v13    # "arguments":[Ljava/lang/String;
    :cond_6
    if-nez v28, :cond_b

    .line 1809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)V

    .line 1811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1812
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connecting to VPN network to server address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2030
    :cond_7
    if-nez v24, :cond_8

    .line 2031
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .local v15, "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v25, v0

    const/16 v22, 0x0

    :goto_6
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_8

    aget-object v17, v15, v22

    .line 2032
    .restart local v17    # "daemon":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2031
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 2037
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v17    # "daemon":Ljava/lang/String;
    :cond_8
    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_a

    .line 2038
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)V

    .line 2041
    .end local v22    # "i$":I
    .end local v25    # "len$":I
    .end local v28    # "restart":Z
    .end local v30    # "state":Ljava/io/File;
    :cond_a
    :goto_7
    return-void

    .line 1823
    .local v15, "arr$":[[Ljava/lang/String;
    .restart local v22    # "i$":I
    .restart local v25    # "len$":I
    .restart local v28    # "restart":Z
    .restart local v30    # "state":Ljava/io/File;
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v4, "execute"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1826
    const/16 v21, 0x0

    .end local v15    # "arr$":[[Ljava/lang/String;
    .local v21, "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_12

    .line 1827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v13, v2, v21

    .line 1828
    .restart local v13    # "arguments":[Ljava/lang/String;
    if-nez v13, :cond_d

    .line 1826
    :cond_c
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 1833
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v17, v2, v21

    .line 1834
    .restart local v17    # "daemon":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 1837
    :goto_9
    invoke-static/range {v17 .. v17}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1838
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_9

    .line 1842
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    aput-object v3, v2, v21

    .line 1843
    new-instance v10, Landroid/net/LocalSocketAddress;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object/from16 v0, v17

    invoke-direct {v10, v0, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1849
    .local v10, "address":Landroid/net/LocalSocketAddress;
    :goto_a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v21

    invoke-virtual {v2, v10}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1856
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v21

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 1859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v21

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v26

    .line 1860
    .local v26, "out":Ljava/io/OutputStream;
    move-object v15, v13

    .local v15, "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v25, v0

    const/16 v22, 0x0

    :goto_b
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_10

    aget-object v12, v15, v22

    .line 1861
    .local v12, "argument":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v16

    .line 1862
    .local v16, "bytes":[B
    move-object/from16 v0, v16

    array-length v2, v0

    const v3, 0xffff

    if-lt v2, v3, :cond_f

    .line 1863
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1851
    .end local v12    # "argument":Ljava/lang/String;
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v16    # "bytes":[B
    .end local v26    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 1854
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_a

    .line 1865
    .restart local v12    # "argument":Ljava/lang/String;
    .restart local v15    # "arr$":[Ljava/lang/String;
    .restart local v16    # "bytes":[B
    .restart local v26    # "out":Ljava/io/OutputStream;
    :cond_f
    move-object/from16 v0, v16

    array-length v2, v0

    shr-int/lit8 v2, v2, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1866
    move-object/from16 v0, v16

    array-length v2, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1867
    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1868
    invoke-virtual/range {v26 .. v26}, Ljava/io/OutputStream;->flush()V

    .line 1869
    # invokes: Lcom/android/server/connectivity/Vpn;->wipeByteArray([B)V
    invoke-static/range {v16 .. v16}, Lcom/android/server/connectivity/Vpn;->access$3100([B)V

    .line 1870
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1860
    add-int/lit8 v22, v22, 0x1

    goto :goto_b

    .line 1872
    .end local v12    # "argument":Ljava/lang/String;
    .end local v16    # "bytes":[B
    :cond_10
    const/16 v2, 0xff

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1873
    const/16 v2, 0xff

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1874
    invoke-virtual/range {v26 .. v26}, Ljava/io/OutputStream;->flush()V

    .line 1878
    const-string v2, "charon"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_c

    .line 1881
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v2, v2, v21

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v23

    .line 1884
    .local v23, "in":Ljava/io/InputStream;
    :goto_c
    :try_start_7
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    .line 1890
    :goto_d
    const/4 v2, 0x1

    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_c

    .line 1904
    .end local v10    # "address":Landroid/net/LocalSocketAddress;
    .end local v13    # "arguments":[Ljava/lang/String;
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v17    # "daemon":Ljava/lang/String;
    .end local v23    # "in":Ljava/io/InputStream;
    .end local v26    # "out":Ljava/io/OutputStream;
    :cond_11
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1896
    :cond_12
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1898
    const/16 v21, 0x0

    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_11

    .line 1899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v17, v2, v21

    .line 1900
    .restart local v17    # "daemon":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v2, v2, v21

    if-eqz v2, :cond_13

    invoke-static/range {v17 .. v17}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1901
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is dead"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1898
    :cond_13
    add-int/lit8 v21, v21, 0x1

    goto :goto_e

    .line 1908
    .end local v17    # "daemon":Ljava/lang/String;
    :cond_14
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-static {v0, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v27

    .line 1909
    .local v27, "parameters":[Ljava/lang/String;
    move-object/from16 v0, v27

    array-length v2, v0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_15

    .line 1910
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot parse the state"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1914
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v27, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v27, v3

    invoke-virtual {v2, v3}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    .line 1919
    if-eqz p1, :cond_1d

    .line 1920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 1931
    :cond_16
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_18

    .line 1932
    :cond_17
    const/4 v2, 0x3

    aget-object v2, v27, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 1933
    .local v18, "dnsServers":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    .line 1934
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const-string v3, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 1939
    .end local v18    # "dnsServers":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1a

    .line 1940
    :cond_19
    const/4 v2, 0x4

    aget-object v2, v27, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    .line 1941
    .local v29, "searchDomains":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const-string v3, " "

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 1947
    .end local v29    # "searchDomains":Ljava/lang/String;
    :cond_1a
    if-nez p1, :cond_1c

    .line 1949
    const/4 v2, 0x5

    aget-object v20, v27, v2

    .line 1950
    .local v20, "endpoint":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v2

    if-nez v2, :cond_1b

    .line 1952
    :try_start_9
    invoke-static/range {v20 .. v20}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 1953
    .local v9, "addr":Ljava/net/InetAddress;
    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    .line 1954
    instance-of v2, v9, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1f

    .line 1955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v3, Landroid/net/RouteInfo;

    new-instance v4, Landroid/net/IpPrefix;

    const/16 v5, 0x20

    invoke-direct {v4, v9, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1967
    .end local v9    # "addr":Ljava/net/InetAddress;
    :cond_1b
    :goto_10
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mEnableLockdownVpn:Z
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$3200(Lcom/android/server/connectivity/Vpn;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    const/4 v4, 0x1

    # invokes: Lcom/android/server/connectivity/Vpn;->SetFirewallForVPN_CCMode(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$3300(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    .line 1974
    .end local v20    # "endpoint":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1976
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 1979
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    # invokes: Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$600(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_21

    .line 1983
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v5}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is gone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2003
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v2

    .line 1925
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1926
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v27, v3

    invoke-virtual {v2, v3}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_f

    .line 1956
    .restart local v9    # "addr":Ljava/net/InetAddress;
    .restart local v20    # "endpoint":Ljava/lang/String;
    :cond_1f
    :try_start_d
    instance-of v2, v9, Ljava/net/Inet6Address;

    if-eqz v2, :cond_20

    .line 1957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v3, Landroid/net/RouteInfo;

    new-instance v4, Landroid/net/IpPrefix;

    const/16 v5, 0x80

    invoke-direct {v4, v9, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_10

    .line 1961
    .end local v9    # "addr":Ljava/net/InetAddress;
    :catch_2
    move-exception v19

    .line 1962
    .local v19, "e":Ljava/lang/IllegalArgumentException;
    :try_start_e
    const-string v2, "LegacyVpnRunner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception constructing throw route to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_10

    .line 1959
    .end local v19    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "addr":Ljava/net/InetAddress;
    :cond_20
    :try_start_f
    const-string v2, "LegacyVpnRunner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown IP address family for VPN endpoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_10

    .line 1987
    .end local v9    # "addr":Ljava/net/InetAddress;
    .end local v20    # "endpoint":Ljava/lang/String;
    :cond_21
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    # setter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$502(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 1988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$702(Lcom/android/server/connectivity/Vpn;Ljava/util/List;)Ljava/util/List;

    .line 1991
    if-eqz p1, :cond_23

    .line 1992
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->agentConnectForKnoxInterface()V

    .line 1993
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->sendStrongSwanInterfaceToKnoxVpn(I)V

    .line 1994
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->showNotificationForKnoxStrongSwan(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 1995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/server/connectivity/Vpn;->mKnoxOldInterface:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$2902(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 2002
    :goto_11
    const-string v2, "LegacyVpnRunner"

    const-string v4, "Connected!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 2005
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 2006
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "Vpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connecting to VPN network  to server address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " succeeded"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 2030
    :cond_22
    if-nez v24, :cond_24

    .line 2031
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v15    # "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v25, v0

    const/16 v22, 0x0

    :goto_12
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_24

    aget-object v17, v15, v22

    .line 2032
    .restart local v17    # "daemon":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2031
    add-int/lit8 v22, v22, 0x1

    goto :goto_12

    .line 1999
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v17    # "daemon":Ljava/lang/String;
    :cond_23
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentConnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$3400(Lcom/android/server/connectivity/Vpn;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_11

    .line 2037
    :cond_24
    if-eqz v24, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_a

    .line 2038
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)V

    goto/16 :goto_7

    .line 2037
    .end local v21    # "i":I
    .end local v22    # "i$":I
    .end local v25    # "len$":I
    .end local v27    # "parameters":[Ljava/lang/String;
    .end local v28    # "restart":Z
    .end local v30    # "state":Ljava/io/File;
    .local v19, "e":Ljava/lang/Exception;
    :cond_26
    if-eqz v24, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_a

    .line 2038
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)V

    goto/16 :goto_7

    .line 2037
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_28
    if-eqz v24, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_2a

    .line 2038
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)V

    :cond_2a
    throw v2

    .line 1887
    .restart local v10    # "address":Landroid/net/LocalSocketAddress;
    .restart local v13    # "arguments":[Ljava/lang/String;
    .restart local v15    # "arr$":[Ljava/lang/String;
    .restart local v17    # "daemon":Ljava/lang/String;
    .restart local v21    # "i":I
    .restart local v22    # "i$":I
    .restart local v23    # "in":Ljava/io/InputStream;
    .restart local v25    # "len$":I
    .restart local v26    # "out":Ljava/io/OutputStream;
    .restart local v28    # "restart":Z
    .restart local v30    # "state":Ljava/io/File;
    :catch_3
    move-exception v2

    goto/16 :goto_d
.end method

.method private getKnoxVpnFeature()I
    .locals 2

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x2

    # setter for: Lcom/android/server/connectivity/Vpn;->KNOXVPN_FEATURE:I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$3002(Lcom/android/server/connectivity/Vpn;I)I

    .line 1744
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->KNOXVPN_FEATURE:I
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$3000(Lcom/android/server/connectivity/Vpn;)I

    move-result v0

    return v0
.end method

.method private getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    .locals 2

    .prologue
    .line 1750
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->getKnoxVpnFeature()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 1751
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2200(Lcom/android/server/connectivity/Vpn;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1752
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    const-string/jumbo v1, "knox_vpn_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v1

    # setter for: Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$2202(Lcom/android/server/connectivity/Vpn;Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    .line 1758
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2200(Lcom/android/server/connectivity/Vpn;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v0

    return-object v0

    .line 1756
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$2202(Lcom/android/server/connectivity/Vpn;Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    goto :goto_0
.end method

.method private getknoxVpnTypeForStrongswanProfile()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 1610
    const/4 v3, 0x1

    .line 1611
    .local v3, "profileType":Z
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->getKnoxVpnFeature()I

    move-result v7

    if-lt v7, v10, :cond_5

    .line 1612
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1613
    .local v5, "user":I
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1615
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->getKnoxVpnService()Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 1616
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2100()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "LegacyVpnRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getknoxVpnTypeForStrongswanProfile: profile name is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v9}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1618
    .local v0, "callingUid":I
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2100()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "LegacyVpnRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getknoxVpnTypeForStrongswanProfile is called by uid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    :cond_1
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$2200(Lcom/android/server/connectivity/Vpn;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getVendorNameForProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1620
    .local v6, "vendorOwningProfile":Ljava/lang/String;
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2100()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "LegacyVpnRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getknoxVpnTypeForStrongswanProfile vendorOwningProfile value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_2
    if-eqz v6, :cond_5

    .line 1622
    invoke-virtual {v2, v6, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v0, :cond_3

    const-string v7, "com.android.vpndialogs"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v0, :cond_5

    .line 1623
    :cond_3
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2100()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "LegacyVpnRunner"

    const-string v8, "Caller is either the strongswan proxy or the vpn dialog app"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :cond_4
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mKnoxVpnService:Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;
    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->access$2200(Lcom/android/server/connectivity/Vpn;)Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/sec/enterprise/knox/vpn/IKnoxVpnPolicy;->getKnoxVpnProfileType(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1625
    .local v4, "type":I
    if-nez v4, :cond_7

    .line 1626
    const/4 v3, 0x1

    .line 1639
    .end local v0    # "callingUid":I
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "type":I
    .end local v5    # "user":I
    .end local v6    # "vendorOwningProfile":Ljava/lang/String;
    :cond_5
    :goto_0
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2100()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "LegacyVpnRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getknoxVpnTypeForStrongswanProfile profileType value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :cond_6
    return v3

    .line 1627
    .restart local v0    # "callingUid":I
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "type":I
    .restart local v5    # "user":I
    .restart local v6    # "vendorOwningProfile":Ljava/lang/String;
    :cond_7
    if-ne v4, v10, :cond_8

    .line 1628
    const/4 v3, 0x0

    goto :goto_0

    .line 1630
    :cond_8
    const/4 v3, 0x1

    goto :goto_0

    .line 1635
    .end local v0    # "callingUid":I
    .end local v4    # "type":I
    .end local v6    # "vendorOwningProfile":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1636
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2100()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "LegacyVpnRunner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at checkIfStrongswanProfileIsKnoxBased "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isCharonActivated()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 2120
    const/4 v2, 0x0

    .line 2121
    .local v2, "hasIpAddr":Z
    :try_start_0
    const-string/jumbo v7, "ipsec0"

    invoke-static {v7}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v5

    .line 2122
    .local v5, "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-static {v5}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 2123
    .local v4, "inetAddress":Ljava/net/InetAddress;
    const/4 v2, 0x1

    .line 2124
    goto :goto_0

    .line 2125
    .end local v4    # "inetAddress":Ljava/net/InetAddress;
    :cond_0
    if-nez v2, :cond_1

    .line 2126
    const-string v7, "charon"

    invoke-static {v7}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v0

    .line 2127
    .local v0, "charon_pid":I
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 2128
    const-string v7, "LegacyVpnRunner"

    const-string v8, "charon down (disconnected by remote)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2129
    const/4 v6, 0x0

    .line 2135
    .end local v0    # "charon_pid":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    :goto_1
    return v6

    .line 2133
    :catch_0
    move-exception v1

    .line 2135
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private isEgressActivated()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 2141
    const/4 v1, 0x0

    .line 2142
    .local v1, "hasIpAddr":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$3700(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 2143
    .local v4, "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-static {v4}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 2144
    .local v3, "inetAddress":Ljava/net/InetAddress;
    const/4 v1, 0x1

    .line 2145
    goto :goto_0

    .line 2146
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    :cond_0
    if-nez v1, :cond_1

    .line 2147
    const-string v6, "LegacyVpnRunner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Egress Iface ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$3700(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") deactivated"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2155
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_1
    return v5

    .line 2150
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    .line 2152
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :catch_0
    move-exception v0

    .line 2154
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "LegacyVpnRunner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Egress Iface ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mEgressIface:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$3700(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") doesn\'t exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private monitorDaemons()V
    .locals 15

    .prologue
    const/4 v0, 0x5

    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 2049
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2116
    :cond_0
    :goto_0
    return-void

    .line 2055
    :cond_1
    const-wide/16 v4, 0x7d0

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 2056
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->isCharonActivated()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->isEgressActivated()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_5

    .line 2069
    :cond_2
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    .line 2070
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "babysit"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v1, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2071
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)V

    .line 2074
    const-string v13, ""

    .line 2075
    .local v13, "typeForAudit":Ljava/lang/String;
    const-string v7, ""

    .line 2076
    .local v7, "addressForAudit":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_3

    .line 2077
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v8, v1, v2

    .line 2078
    .local v8, "argumentsForAudit":[Ljava/lang/String;
    array-length v1, v8

    if-le v1, v6, :cond_3

    .line 2079
    aget-object v13, v8, v2

    .line 2080
    aget-object v7, v8, v6

    .line 2084
    .end local v8    # "argumentsForAudit":[Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2085
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnecting from VPN network to server address "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " from type "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " succeeded"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2095
    :cond_4
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2096
    .local v11, "salesCode":Ljava/lang/String;
    const-string v0, "DCM"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2098
    new-instance v12, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2113
    .local v12, "stopDeamon":Ljava/lang/Thread;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 2060
    .end local v7    # "addressForAudit":Ljava/lang/String;
    .end local v11    # "salesCode":Ljava/lang/String;
    .end local v12    # "stopDeamon":Ljava/lang/Thread;
    .end local v13    # "typeForAudit":Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v1, v1

    if-ge v10, v1, :cond_1

    .line 2061
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v1, v1, v10

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v1, v1, v10

    invoke-static {v1}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_8

    .line 2069
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    .line 2070
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "babysit"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v1, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2071
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)V

    .line 2074
    const-string v13, ""

    .line 2075
    .restart local v13    # "typeForAudit":Ljava/lang/String;
    const-string v7, ""

    .line 2076
    .restart local v7    # "addressForAudit":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_6

    .line 2077
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v8, v1, v2

    .line 2078
    .restart local v8    # "argumentsForAudit":[Ljava/lang/String;
    array-length v1, v8

    if-le v1, v6, :cond_6

    .line 2079
    aget-object v13, v8, v2

    .line 2080
    aget-object v7, v8, v6

    .line 2084
    .end local v8    # "argumentsForAudit":[Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2085
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnecting from VPN network to server address "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " from type "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " succeeded"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2095
    :cond_7
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2096
    .restart local v11    # "salesCode":Ljava/lang/String;
    const-string v0, "DCM"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2098
    new-instance v12, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2113
    .restart local v12    # "stopDeamon":Ljava/lang/Thread;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 2060
    .end local v7    # "addressForAudit":Ljava/lang/String;
    .end local v11    # "salesCode":Ljava/lang/String;
    .end local v12    # "stopDeamon":Ljava/lang/Thread;
    .end local v13    # "typeForAudit":Ljava/lang/String;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 2066
    .end local v10    # "i":I
    :catch_0
    move-exception v9

    .line 2067
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "LegacyVpnRunner"

    const-string/jumbo v3, "interrupted during monitorDaemons(); stopping services"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2069
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    .line 2070
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "babysit"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v1, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2071
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)V

    .line 2074
    const-string v13, ""

    .line 2075
    .restart local v13    # "typeForAudit":Ljava/lang/String;
    const-string v7, ""

    .line 2076
    .restart local v7    # "addressForAudit":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_9

    .line 2077
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v8, v1, v2

    .line 2078
    .restart local v8    # "argumentsForAudit":[Ljava/lang/String;
    array-length v1, v8

    if-le v1, v6, :cond_9

    .line 2079
    aget-object v13, v8, v2

    .line 2080
    aget-object v7, v8, v6

    .line 2084
    .end local v8    # "argumentsForAudit":[Ljava/lang/String;
    :cond_9
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2085
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnecting from VPN network to server address "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " from type "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " succeeded"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2095
    :cond_a
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2096
    .restart local v11    # "salesCode":Ljava/lang/String;
    const-string v0, "DCM"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2098
    new-instance v12, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2113
    .restart local v12    # "stopDeamon":Ljava/lang/Thread;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 2069
    .end local v7    # "addressForAudit":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/InterruptedException;
    .end local v11    # "salesCode":Ljava/lang/String;
    .end local v12    # "stopDeamon":Ljava/lang/Thread;
    .end local v13    # "typeForAudit":Ljava/lang/String;
    :catchall_0
    move-exception v1

    move-object v14, v1

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    .line 2070
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "babysit"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v1, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2071
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)V

    .line 2074
    const-string v13, ""

    .line 2075
    .restart local v13    # "typeForAudit":Ljava/lang/String;
    const-string v7, ""

    .line 2076
    .restart local v7    # "addressForAudit":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_b

    .line 2077
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v8, v1, v2

    .line 2078
    .restart local v8    # "argumentsForAudit":[Ljava/lang/String;
    array-length v1, v8

    if-le v1, v6, :cond_b

    .line 2079
    aget-object v13, v8, v2

    .line 2080
    aget-object v7, v8, v6

    .line 2084
    .end local v8    # "argumentsForAudit":[Ljava/lang/String;
    :cond_b
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 2085
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnecting from VPN network to server address "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " from type "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " succeeded"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2095
    :cond_c
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2096
    .restart local v11    # "salesCode":Ljava/lang/String;
    const-string v0, "DCM"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2098
    new-instance v12, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2113
    .restart local v12    # "stopDeamon":Ljava/lang/Thread;
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 2115
    .end local v12    # "stopDeamon":Ljava/lang/Thread;
    :cond_d
    throw v14
.end method

.method private declared-synchronized sendStrongSwanInterfaceToKnoxVpn(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 1702
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->getKnoxVpnFeature()I

    move-result v1

    const/4 v4, 0x1

    if-lt v1, v4, :cond_3

    .line 1703
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 1706
    .local v2, "token":J
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1707
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1708
    const-string/jumbo v1, "extra_action"

    const-string/jumbo v4, "tun_info"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1709
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1710
    const-string/jumbo v1, "extra_profile_name"

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1712
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1713
    const-string/jumbo v1, "extra_tun_id"

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1718
    :cond_1
    :goto_0
    const-string/jumbo v1, "extra_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1719
    const-string/jumbo v1, "tun_address"

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mAddress:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2400(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1720
    const-string/jumbo v1, "tunv6_address"

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mV6Address:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1721
    # getter for: Lcom/android/server/connectivity/Vpn;->DBG:Z
    invoke-static {}, Lcom/android/server/connectivity/Vpn;->access$2100()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "LegacyVpnRunner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendStrongSwanInterfaceToKnoxVpn :  Sending broadcast. profileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v5}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1724
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1727
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "token":J
    :cond_3
    monitor-exit p0

    return-void

    .line 1714
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v2    # "token":J
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mKnoxOldInterface:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$2900(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1715
    const-string/jumbo v1, "extra_tun_id"

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mKnoxOldInterface:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2900(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1716
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/connectivity/Vpn;->mKnoxOldInterface:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/android/server/connectivity/Vpn;->access$2902(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1724
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1702
    .end local v2    # "token":J
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private showNotificationForKnoxStrongSwan(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 5
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "user"    # I

    .prologue
    .line 1730
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->getKnoxVpnFeature()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1731
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    # setter for: Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    invoke-static {v2, v3}, Lcom/android/server/connectivity/Vpn;->access$902(Lcom/android/server/connectivity/Vpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 1732
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1733
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 1734
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/connectivity/Vpn;->createNotification(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v1

    .line 1735
    .local v1, "notification":Landroid/app/Notification;
    const/4 v2, 0x0

    const v3, 0x1080a7f

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1738
    .end local v0    # "nm":Landroid/app/NotificationManager;
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_0
    return-void
.end method

.method private stopLegacyDaemons()V
    .locals 7

    .prologue
    .line 2160
    const-string v4, "LegacyVpnRunner"

    const-string/jumbo v5, "stopLegacyDaemons: begin"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 2162
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v0, v4, v1

    .line 2163
    .local v0, "daemon":Ljava/lang/String;
    const-string/jumbo v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2164
    .local v3, "salesCode":Ljava/lang/String;
    const-string v4, "charon"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "DCM"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "racoon"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 2168
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v4, v4, v1

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2170
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v4, 0x14

    if-ge v2, v4, :cond_2

    invoke-static {v0}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2172
    const-wide/16 v4, 0xc8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2170
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2177
    .end local v2    # "j":I
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v4, v4, v1

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2179
    :cond_2
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2181
    .end local v0    # "daemon":Ljava/lang/String;
    .end local v3    # "salesCode":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mEnableLockdownVpn:Z
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$3200(Lcom/android/server/connectivity/Vpn;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2182
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    const/4 v6, 0x0

    # invokes: Lcom/android/server/connectivity/Vpn;->SetFirewallForVPN_CCMode(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/server/connectivity/Vpn;->access$3300(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    .line 2184
    :cond_4
    return-void

    .line 2173
    .restart local v0    # "daemon":Ljava/lang/String;
    .restart local v2    # "j":I
    .restart local v3    # "salesCode":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_2
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .locals 3
    .param p1, "interfaze"    # Ljava/lang/String;

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1516
    const-string v0, "LegacyVpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Legacy VPN is going down with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1519
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1527
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupt()V

    .line 1528
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1529
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v4, v4, v1

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1530
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/16 v4, 0x14

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1532
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1530
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1533
    :catch_0
    move-exception v2

    .line 1534
    .local v2, "ignore":Ljava/lang/InterruptedException;
    const-string v4, "LegacyVpnRunner"

    const-string v5, "Ignore exception"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1528
    .end local v2    # "ignore":Ljava/lang/InterruptedException;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1538
    .end local v3    # "j":I
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)V

    .line 1540
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->getKnoxVpnFeature()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_3

    .line 1541
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->getknoxVpnTypeForStrongswanProfile()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1542
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->sendStrongSwanInterfaceToKnoxVpn(I)V

    .line 1543
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->hideNotification(I)V
    invoke-static {v4, v6}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;I)V

    .line 1546
    :cond_2
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1547
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1548
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->hideNotification(I)V
    invoke-static {v4, v6}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;I)V

    .line 1554
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1555
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mCredentialResetFilter:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1559
    :goto_3
    return-void

    .line 1556
    :catch_1
    move-exception v0

    .line 1557
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "LegacyVpnRunner"

    const-string v5, "Ignore IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1564
    const-string v1, "LegacyVpnRunner"

    const-string v2, "Waiting"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const-string v2, "LegacyVpnRunner"

    monitor-enter v2

    .line 1566
    :try_start_0
    const-string v1, "LegacyVpnRunner"

    const-string v3, "Executing"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    const/4 v0, 0x0

    .line 1569
    .local v0, "isKnoxVpnProfile":Z
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->getKnoxVpnFeature()I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_1

    .line 1570
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->getknoxVpnTypeForStrongswanProfile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1571
    const/4 v0, 0x1

    .line 1572
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->execute(Z)V

    .line 1580
    :goto_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->monitorDaemons()V

    .line 1581
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->clear_arguments()V

    .line 1582
    monitor-exit v2

    .line 1583
    return-void

    .line 1574
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->execute(Z)V

    goto :goto_0

    .line 1582
    .end local v0    # "isKnoxVpnProfile":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1578
    .restart local v0    # "isKnoxVpnProfile":Z
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->execute(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
