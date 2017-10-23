.class Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;
.super Ljava/lang/Object;
.source "WifiMaliciousHotspotDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArpSpoofingDetector"
.end annotation


# static fields
.field public static final DEFAULT_ARP_CHECK_PERIOD_SEC:I = 0x1e

.field public static final DEFAULT_ARP_TABLE_CHECK_DELAY_SEC:I = 0x5

.field private static final TAG:Ljava/lang/String; = "WifiMHD::a"


# instance fields
.field private final ARP_LENGTH:I

.field private final DEFAULT_STATE:I

.field private final ETHERNET_TYPE:I

.field private final IPV4_LENGTH:I

.field private L2_BROADCAST:[B

.field private final MAC_ADDR_LENGTH:I

.field private final MAC_COMPARE_BYTES:I

.field private final MAX_LENGTH:I

.field private mArpCheckPeriod_sec:I

.field private mArpSpoofingDetectionEnabled:I

.field private mArpTableCheckDelay_sec:I

.field private mGwIp:Ljava/lang/String;

.field private mGwMac:Ljava/lang/String;

.field private mSocket:Llibcore/net/RawSocket;

.field final synthetic this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/4 v0, 0x0

    .line 1371
    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1348
    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->DEFAULT_STATE:I

    .line 1349
    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpSpoofingDetectionEnabled:I

    .line 1360
    iput-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    .line 1361
    iput-object v2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    .line 1364
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->MAX_LENGTH:I

    .line 1365
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->ETHERNET_TYPE:I

    .line 1366
    const/16 v0, 0x1c

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->ARP_LENGTH:I

    .line 1367
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->MAC_ADDR_LENGTH:I

    .line 1368
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->IPV4_LENGTH:I

    .line 1369
    iput v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->MAC_COMPARE_BYTES:I

    .line 1372
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpCheckPeriod_sec:I

    .line 1373
    iput v1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpTableCheckDelay_sec:I

    .line 1374
    return-void
.end method

.method private getComparedResult(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "origMac"    # Ljava/lang/String;
    .param p2, "changedMac"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x6

    .line 1530
    const/4 v3, 0x0

    .line 1531
    .local v3, "sameCnt":I
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v4, v3

    .line 1550
    .end local v3    # "sameCnt":I
    .local v4, "sameCnt":I
    :goto_0
    return v4

    .line 1535
    .end local v4    # "sameCnt":I
    .restart local v3    # "sameCnt":I
    :cond_1
    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1536
    .local v2, "oldMac":[Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1538
    .local v1, "newMac":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingEnabled:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$900(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    array-length v5, v2

    if-ne v5, v7, :cond_3

    if-eqz v1, :cond_3

    array-length v5, v1

    if-ne v5, v7, :cond_3

    .line 1539
    const/4 v0, 0x1

    .local v0, "macIdx":I
    :goto_1
    if-ge v0, v7, :cond_3

    .line 1540
    aget-object v5, v2, v0

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1541
    add-int/lit8 v3, v3, 0x1

    .line 1542
    const/4 v5, 0x5

    if-ne v0, v5, :cond_2

    aget-object v5, v2, v8

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1543
    add-int/lit8 v3, v3, 0x1

    .line 1539
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "macIdx":I
    :cond_3
    move v4, v3

    .line 1550
    .end local v3    # "sameCnt":I
    .restart local v4    # "sameCnt":I
    goto :goto_0
.end method


# virtual methods
.method public ArpCheckRequest(Ljava/lang/String;)V
    .locals 2
    .param p1, "GwIp"    # Ljava/lang/String;

    .prologue
    .line 1396
    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpSpoofingDetectionEnabled:I

    if-nez v0, :cond_0

    .line 1397
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V

    .line 1409
    :goto_0
    return-void

    .line 1400
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V

    .line 1401
    if-eqz p1, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1402
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1406
    :cond_1
    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    .line 1407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    .line 1408
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public ArpTableCheck()V
    .locals 24

    .prologue
    .line 1412
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpSpoofingDetectionEnabled:I

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 1413
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V

    .line 1527
    :cond_0
    :goto_0
    return-void

    .line 1416
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1419
    const-string v20, "0.0.0.0"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v8

    .line 1421
    .local v8, "dhcpInfo":Landroid/net/DhcpInfo;
    if-eqz v8, :cond_3

    .line 1422
    iget v0, v8, Landroid/net/DhcpInfo;->gateway:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    .line 1426
    :cond_2
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    .line 1427
    const-string v20, "0.0.0.0"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1428
    const-string v20, "WifiMHD::a"

    const-string v21, "Check - f to get GW"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V

    goto/16 :goto_0

    .line 1434
    .end local v8    # "dhcpInfo":Landroid/net/DhcpInfo;
    :cond_3
    const/4 v4, 0x0

    .line 1436
    .local v4, "buffer":Ljava/io/BufferedReader;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v19

    .line 1437
    .local v19, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_4

    const-string v20, "00:00:00:00:00:00"

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1438
    :cond_4
    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$400()Z

    move-result v20

    if-eqz v20, :cond_5

    const-string v20, "WifiMHD::a"

    const-string v21, "no conn"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1520
    if-eqz v4, :cond_6

    .line 1521
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1523
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1443
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->isRegistered(Ljava/lang/String;)Z
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1900(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1444
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1520
    if-eqz v4, :cond_8

    .line 1521
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 1523
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1447
    :cond_9
    :try_start_4
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/FileReader;

    const-string v21, "/proc/net/arp"

    invoke-direct/range {v20 .. v21}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1448
    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .local v5, "buffer":Ljava/io/BufferedReader;
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 1449
    .local v13, "line":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1450
    .local v11, "ip":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1451
    .local v16, "mac":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1452
    .local v12, "isWlan0":Z
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1453
    .local v15, "mArpTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    .line 1455
    .local v3, "bssid":Ljava/lang/String;
    :cond_a
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_17

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_17

    .line 1456
    const/16 v17, 0x0

    .line 1457
    .local v17, "parse":[Ljava/lang/String;
    const-string v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1458
    const/4 v6, 0x0

    .line 1459
    .local v6, "cnt":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_e

    .line 1460
    aget-object v20, v17, v10

    if-eqz v20, :cond_d

    aget-object v20, v17, v10

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_d

    .line 1461
    add-int/lit8 v6, v6, 0x1

    .line 1462
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_b

    aget-object v20, v17, v10

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1463
    :cond_b
    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v6, v0, :cond_c

    aget-object v20, v17, v10

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 1464
    :cond_c
    const/16 v20, 0x6

    move/from16 v0, v20

    if-ne v6, v0, :cond_d

    const-string v20, "wlan0"

    aget-object v21, v17, v10

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 1459
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1468
    :cond_e
    if-eqz v16, :cond_f

    const-string v20, "00:00:00:00:00:00"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_f

    .line 1469
    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    if-eqz v12, :cond_a

    .line 1474
    const-string v20, "00:00:00:00:00:00"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 1475
    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$400()Z

    move-result v20

    if-eqz v20, :cond_a

    const-string v20, "WifiMHD::a"

    const-string v21, "ign wrong gmac"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .line 1508
    .end local v3    # "bssid":Ljava/lang/String;
    .end local v6    # "cnt":I
    .end local v10    # "i":I
    .end local v11    # "ip":Ljava/lang/String;
    .end local v12    # "isWlan0":Z
    .end local v13    # "line":Ljava/lang/String;
    .end local v15    # "mArpTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "mac":Ljava/lang/String;
    .end local v17    # "parse":[Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v4, v5

    .line 1509
    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .end local v19    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    .local v9, "e":Ljava/net/SocketException;
    :goto_3
    :try_start_6
    const-string v20, "WifiMHD::a"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SocketException "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v22

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1520
    if-eqz v4, :cond_10

    .line 1521
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 1523
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1479
    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .end local v9    # "e":Ljava/net/SocketException;
    .restart local v3    # "bssid":Ljava/lang/String;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v6    # "cnt":I
    .restart local v10    # "i":I
    .restart local v11    # "ip":Ljava/lang/String;
    .restart local v12    # "isWlan0":Z
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v15    # "mArpTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "mac":Ljava/lang/String;
    .restart local v17    # "parse":[Ljava/lang/String;
    .restart local v19    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_11
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 1480
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "gmc1 / "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    move-object/from16 v22, v0

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getConvertedBssid(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$2300(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " / "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getConvertedBssid(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$2300(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " / "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1481
    .local v14, "log":Ljava/lang/String;
    const-string v20, "WifiMHD::a"

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v22, v0

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getTimeString()Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$2400(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->addMaliciousApLogs(Ljava/lang/String;)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$2500(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)V

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0xf

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0xf

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 1485
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1

    .line 1510
    .end local v3    # "bssid":Ljava/lang/String;
    .end local v6    # "cnt":I
    .end local v10    # "i":I
    .end local v11    # "ip":Ljava/lang/String;
    .end local v12    # "isWlan0":Z
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "log":Ljava/lang/String;
    .end local v15    # "mArpTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "mac":Ljava/lang/String;
    .end local v17    # "parse":[Ljava/lang/String;
    :catch_1
    move-exception v9

    move-object v4, v5

    .line 1511
    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .end local v19    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :goto_4
    :try_start_9
    const-string v20, "WifiMHD::a"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "IllegalArgumentException"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v22

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1520
    if-eqz v4, :cond_12

    .line 1521
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 1523
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1487
    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "bssid":Ljava/lang/String;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v6    # "cnt":I
    .restart local v10    # "i":I
    .restart local v11    # "ip":Ljava/lang/String;
    .restart local v12    # "isWlan0":Z
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "log":Ljava/lang/String;
    .restart local v15    # "mArpTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "mac":Ljava/lang/String;
    .restart local v17    # "parse":[Ljava/lang/String;
    .restart local v19    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_13
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpSpoofingDetectionEnabled:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->handleMaliciousHotspotDetection(Ljava/lang/String;II)V

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->getComparedResult(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 1489
    .local v18, "sameCnt":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCachedGsimLog:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1000(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v20

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 1491
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_a

    .line 1492
    iget-object v0, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v20, v0

    const-string v21, "MHDA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "O"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendGsimData(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v20 .. v22}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCachedGsimLog:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1000(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MHDA - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "O"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_e
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_1

    .line 1512
    .end local v3    # "bssid":Ljava/lang/String;
    .end local v6    # "cnt":I
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "i":I
    .end local v11    # "ip":Ljava/lang/String;
    .end local v12    # "isWlan0":Z
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "log":Ljava/lang/String;
    .end local v15    # "mArpTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "mac":Ljava/lang/String;
    .end local v17    # "parse":[Ljava/lang/String;
    .end local v18    # "sameCnt":I
    :catch_2
    move-exception v9

    move-object v4, v5

    .line 1513
    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .end local v19    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    .local v9, "e":Ljava/io/IOException;
    :goto_5
    :try_start_c
    const-string v20, "WifiMHD::a"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "IOException"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v22

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1520
    if-eqz v4, :cond_14

    .line 1521
    :try_start_d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 1523
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1497
    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v3    # "bssid":Ljava/lang/String;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v6    # "cnt":I
    .restart local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v10    # "i":I
    .restart local v11    # "ip":Ljava/lang/String;
    .restart local v12    # "isWlan0":Z
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "log":Ljava/lang/String;
    .restart local v15    # "mArpTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "mac":Ljava/lang/String;
    .restart local v17    # "parse":[Ljava/lang/String;
    .restart local v18    # "sameCnt":I
    .restart local v19    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_15
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v20, v0

    const-string v21, "MHDA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "S"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendGsimData(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v20 .. v22}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCachedGsimLog:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1000(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MHDA - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "S"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_1

    .line 1514
    .end local v3    # "bssid":Ljava/lang/String;
    .end local v6    # "cnt":I
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v10    # "i":I
    .end local v11    # "ip":Ljava/lang/String;
    .end local v12    # "isWlan0":Z
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "log":Ljava/lang/String;
    .end local v15    # "mArpTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "mac":Ljava/lang/String;
    .end local v17    # "parse":[Ljava/lang/String;
    .end local v18    # "sameCnt":I
    :catch_3
    move-exception v9

    move-object v4, v5

    .line 1515
    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .end local v19    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    .local v9, "e":Ljava/lang/RuntimeException;
    :goto_6
    :try_start_f
    const-string v20, "WifiMHD::a"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RuntimeException"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v22

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1520
    if-eqz v4, :cond_16

    .line 1521
    :try_start_10
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 1523
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1520
    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .restart local v3    # "bssid":Ljava/lang/String;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v11    # "ip":Ljava/lang/String;
    .restart local v12    # "isWlan0":Z
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v15    # "mArpTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "mac":Ljava/lang/String;
    .restart local v19    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_17
    if-eqz v5, :cond_18

    .line 1521
    :try_start_11
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4

    .line 1523
    :cond_18
    const/4 v4, 0x0

    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 1524
    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    :catch_4
    move-exception v20

    move-object v4, v5

    .line 1526
    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 1516
    .end local v3    # "bssid":Ljava/lang/String;
    .end local v11    # "ip":Ljava/lang/String;
    .end local v12    # "isWlan0":Z
    .end local v13    # "line":Ljava/lang/String;
    .end local v15    # "mArpTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "mac":Ljava/lang/String;
    .end local v19    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :catch_5
    move-exception v9

    .line 1517
    .local v9, "e":Ljava/lang/OutOfMemoryError;
    :goto_7
    :try_start_12
    const-string v20, "WifiMHD::a"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "OutOfMemoryError"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v22

    const/16 v23, 0x2

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1520
    if-eqz v4, :cond_19

    .line 1521
    :try_start_13
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    .line 1523
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1519
    .end local v9    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v20

    .line 1520
    :goto_8
    if-eqz v4, :cond_1a

    .line 1521
    :try_start_14
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    .line 1523
    :cond_1a
    const/4 v4, 0x0

    .line 1525
    :goto_9
    throw v20

    .line 1524
    .restart local v19    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :catch_6
    move-exception v20

    goto/16 :goto_0

    :catch_7
    move-exception v20

    goto/16 :goto_0

    .end local v19    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .local v9, "e":Ljava/net/SocketException;
    :catch_8
    move-exception v20

    goto/16 :goto_0

    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :catch_9
    move-exception v20

    goto/16 :goto_0

    .local v9, "e":Ljava/io/IOException;
    :catch_a
    move-exception v20

    goto/16 :goto_0

    .local v9, "e":Ljava/lang/RuntimeException;
    :catch_b
    move-exception v20

    goto/16 :goto_0

    .local v9, "e":Ljava/lang/OutOfMemoryError;
    :catch_c
    move-exception v20

    goto/16 :goto_0

    .end local v9    # "e":Ljava/lang/OutOfMemoryError;
    :catch_d
    move-exception v21

    goto :goto_9

    .line 1519
    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v19    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :catchall_1
    move-exception v20

    move-object v4, v5

    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    goto :goto_8

    .line 1516
    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    :catch_e
    move-exception v9

    move-object v4, v5

    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    goto :goto_7

    .line 1514
    .end local v19    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :catch_f
    move-exception v9

    goto/16 :goto_6

    .line 1512
    :catch_10
    move-exception v9

    goto/16 :goto_5

    .line 1510
    :catch_11
    move-exception v9

    goto/16 :goto_4

    .line 1508
    :catch_12
    move-exception v9

    goto/16 :goto_3
.end method

.method public getEnabled()I
    .locals 1

    .prologue
    .line 1381
    iget v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpSpoofingDetectionEnabled:I

    return v0
.end method

.method public macToString([B)Ljava/lang/String;
    .locals 5
    .param p1, "mac"    # [B

    .prologue
    .line 1735
    const-string v2, ""

    .line 1736
    .local v2, "macAddr":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1737
    const/4 v3, 0x0

    .line 1751
    :goto_0
    return-object v3

    .line 1739
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 1740
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1744
    .local v0, "hexString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1746
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_1

    .line 1747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1739
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "hexString":Ljava/lang/String;
    :cond_2
    move-object v3, v2

    .line 1751
    goto :goto_0
.end method

.method public sendArp(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)[B
    .locals 18
    .param p1, "timeoutMillis"    # I
    .param p2, "gateway"    # Ljava/net/InetAddress;
    .param p3, "mMyAddr"    # Ljava/net/InetAddress;
    .param p4, "myMac"    # Ljava/lang/String;

    .prologue
    .line 1675
    const/16 v2, 0x5dc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 1676
    .local v8, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p2 .. p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    .line 1677
    .local v9, "desiredIp":[B
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move/from16 v0, p1

    int-to-long v6, v0

    add-long v16, v4, v6

    .line 1678
    .local v16, "timeout":J
    const/4 v2, 0x6

    new-array v13, v2, [B

    .line 1679
    .local v13, "mMyMac":[B
    if-eqz p4, :cond_0

    .line 1680
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v12, v2, :cond_0

    .line 1681
    mul-int/lit8 v2, v12, 0x3

    mul-int/lit8 v4, v12, 0x3

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v13, v12

    .line 1680
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1688
    .end local v12    # "i":I
    :cond_0
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1689
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1691
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1692
    const/16 v2, 0x800

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1693
    const/4 v2, 0x6

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1694
    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1695
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1696
    invoke-virtual {v8, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1697
    invoke-virtual/range {p3 .. p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1698
    const/4 v2, 0x6

    new-array v2, v2, [B

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1699
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1700
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->L2_BROADCAST:[B

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Llibcore/net/RawSocket;->write([B[BII)I

    .line 1703
    const/16 v2, 0x5dc

    new-array v3, v2, [B

    .line 1705
    .local v3, "recvBuf":[B
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v2, v4, v16

    if-gez v2, :cond_2

    .line 1706
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v10, v16, v4

    .line 1707
    .local v10, "duration":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    const/4 v4, 0x0

    array-length v5, v3

    const/4 v6, -0x1

    long-to-int v7, v10

    invoke-virtual/range {v2 .. v7}, Llibcore/net/RawSocket;->read([BIIII)I

    move-result v14

    .line 1711
    .local v14, "readLen":I
    const/16 v2, 0x1c

    if-lt v14, v2, :cond_1

    const/4 v2, 0x0

    aget-byte v2, v3, v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    aget-byte v2, v3, v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const/4 v2, 0x2

    aget-byte v2, v3, v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    const/4 v2, 0x3

    aget-byte v2, v3, v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    aget-byte v2, v3, v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_1

    const/4 v2, 0x5

    aget-byte v2, v3, v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    const/4 v2, 0x6

    aget-byte v2, v3, v2

    if-nez v2, :cond_1

    const/4 v2, 0x7

    aget-byte v2, v3, v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const/16 v2, 0xe

    aget-byte v2, v3, v2

    const/4 v4, 0x0

    aget-byte v4, v9, v4

    if-ne v2, v4, :cond_1

    const/16 v2, 0xf

    aget-byte v2, v3, v2

    const/4 v4, 0x1

    aget-byte v4, v9, v4

    if-ne v2, v4, :cond_1

    const/16 v2, 0x10

    aget-byte v2, v3, v2

    const/4 v4, 0x2

    aget-byte v4, v9, v4

    if-ne v2, v4, :cond_1

    const/16 v2, 0x11

    aget-byte v2, v3, v2

    const/4 v4, 0x3

    aget-byte v4, v9, v4

    if-ne v2, v4, :cond_1

    .line 1722
    const/4 v2, 0x6

    new-array v15, v2, [B

    .line 1723
    .local v15, "result":[B
    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v3, v2, v15, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1728
    .end local v10    # "duration":J
    .end local v14    # "readLen":I
    .end local v15    # "result":[B
    :goto_1
    return-object v15

    :cond_2
    const/4 v15, 0x0

    goto :goto_1
.end method

.method public sendArpQueryToGateway()V
    .locals 18

    .prologue
    .line 1554
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpSpoofingDetectionEnabled:I

    if-nez v14, :cond_0

    .line 1555
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V

    .line 1668
    :goto_0
    return-void

    .line 1559
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v14}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v13

    .line 1560
    .local v13, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    const-string v14, "00:00:00:00:00:00"

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1561
    :cond_1
    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$400()Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "WifiMHD::a"

    const-string v15, "no conn"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1659
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v14, :cond_3

    .line 1660
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v14}, Llibcore/net/RawSocket;->close()V

    .line 1662
    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1663
    :catch_0
    move-exception v14

    goto :goto_0

    .line 1566
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->isRegistered(Ljava/lang/String;)Z
    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1900(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1567
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1659
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v14, :cond_5

    .line 1660
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v14}, Llibcore/net/RawSocket;->close()V

    .line 1662
    :cond_5
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1663
    :catch_1
    move-exception v14

    goto :goto_0

    .line 1571
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v14}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v5

    .line 1572
    .local v5, "dhcpInfo":Landroid/net/DhcpInfo;
    if-nez v5, :cond_8

    .line 1573
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1659
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v14, :cond_7

    .line 1660
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v14}, Llibcore/net/RawSocket;->close()V

    .line 1662
    :cond_7
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 1663
    :catch_2
    move-exception v14

    goto/16 :goto_0

    .line 1576
    :cond_8
    :try_start_6
    iget v14, v5, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v14}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v9

    .line 1577
    .local v9, "inetAddress":Ljava/net/InetAddress;
    iget v14, v5, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v14}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v7

    .line 1579
    .local v7, "gateway":Ljava/net/InetAddress;
    invoke-virtual {v7}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1580
    .local v11, "sGateway":Ljava/lang/String;
    if-eqz v11, :cond_9

    const-string v14, "/"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1581
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 1583
    :cond_9
    const-string v14, "0.0.0.0"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "0.0.0.0"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 1585
    :cond_a
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    .line 1586
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    .line 1587
    const-string v14, "0.0.0.0"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1588
    const-string v14, "WifiMHD::a"

    const-string v15, "send - f to get GW"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V

    .line 1590
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$2600(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpCheckPeriod_sec:I

    move/from16 v16, v0

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendEmptyMessageDelayed(IJ)Z
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1659
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v14, :cond_b

    .line 1660
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v14}, Llibcore/net/RawSocket;->close()V

    .line 1662
    :cond_b
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 1663
    :catch_3
    move-exception v14

    goto/16 :goto_0

    .line 1595
    :cond_c
    :try_start_8
    const-string v14, "/0.0.0.0"

    invoke-virtual {v9}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    const-string v14, "/0.0.0.0"

    invoke-virtual {v7}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v14}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$700(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/LinkProperties;
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v14

    if-nez v14, :cond_f

    .line 1659
    :cond_d
    :try_start_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v14, :cond_e

    .line 1660
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v14}, Llibcore/net/RawSocket;->close()V

    .line 1662
    :cond_e
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    .line 1663
    :catch_4
    move-exception v14

    goto/16 :goto_0

    .line 1600
    :cond_f
    :try_start_a
    new-instance v14, Llibcore/net/RawSocket;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v15}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$700(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/LinkProperties;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x806

    invoke-direct/range {v14 .. v16}, Llibcore/net/RawSocket;-><init>(Ljava/lang/String;S)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    .line 1601
    const/4 v14, 0x6

    new-array v14, v14, [B

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->L2_BROADCAST:[B

    .line 1602
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->L2_BROADCAST:[B

    const/4 v15, -0x1

    invoke-static {v14, v15}, Ljava/util/Arrays;->fill([BB)V

    .line 1603
    const/4 v3, 0x0

    .line 1605
    .local v3, "bssid":Ljava/lang/String;
    if-eqz v13, :cond_10

    const-string v14, "00:00:00:00:00:00"

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    .line 1606
    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    .line 1608
    :cond_10
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_1
    const/4 v14, 0x3

    if-gt v8, v14, :cond_11

    .line 1609
    mul-int/lit8 v14, v8, 0x64

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7, v9, v15}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->sendArp(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)[B

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->macToString([B)Ljava/lang/String;

    move-result-object v2

    .line 1610
    .local v2, "arpResult":Ljava/lang/String;
    if-eqz v2, :cond_1a

    const-string v14, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    .line 1612
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    if-nez v14, :cond_13

    .line 1613
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    .line 1614
    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$400()Z

    move-result v14

    if-eqz v14, :cond_11

    const-string v14, "WifiMHD::a"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "set gmac "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1659
    .end local v2    # "arpResult":Ljava/lang/String;
    :cond_11
    :goto_2
    :try_start_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v14, :cond_12

    .line 1660
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v14}, Llibcore/net/RawSocket;->close()V

    .line 1662
    :cond_12
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_10

    .line 1666
    .end local v3    # "bssid":Ljava/lang/String;
    .end local v5    # "dhcpInfo":Landroid/net/DhcpInfo;
    .end local v7    # "gateway":Ljava/net/InetAddress;
    .end local v8    # "i":I
    .end local v9    # "inetAddress":Ljava/net/InetAddress;
    .end local v11    # "sGateway":Ljava/lang/String;
    .end local v13    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v15, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$2600(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpTableCheckDelay_sec:I

    move/from16 v16, v0

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendEmptyMessageDelayed(IJ)Z

    .line 1667
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mArpSpoofingDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$2600(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpCheckPeriod_sec:I

    move/from16 v16, v0

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1615
    .restart local v2    # "arpResult":Ljava/lang/String;
    .restart local v3    # "bssid":Ljava/lang/String;
    .restart local v5    # "dhcpInfo":Landroid/net/DhcpInfo;
    .restart local v7    # "gateway":Ljava/net/InetAddress;
    .restart local v8    # "i":I
    .restart local v9    # "inetAddress":Ljava/net/InetAddress;
    .restart local v11    # "sGateway":Ljava/lang/String;
    .restart local v13    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_13
    :try_start_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_11

    .line 1616
    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$400()Z

    move-result v14

    if-eqz v14, :cond_14

    const-string v14, "WifiMHD::a"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[if]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$700(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/LinkProperties;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " [ip]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " [mac]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " [gip]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :cond_14
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "gmc2 / "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    move-object/from16 v16, v0

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getConvertedBssid(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$2300(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " / "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getConvertedBssid(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v15, v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$2300(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " / "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwIp:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1619
    .local v10, "log":Ljava/lang/String;
    const-string v14, "WifiMHD::a"

    invoke-static {v14, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    move-object/from16 v16, v0

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getTimeString()Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$2400(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->addMaliciousApLogs(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$2500(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;)V

    .line 1621
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0xf

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0xf

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 1623
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;
    :try_end_c
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    .line 1647
    .end local v2    # "arpResult":Ljava/lang/String;
    .end local v3    # "bssid":Ljava/lang/String;
    .end local v5    # "dhcpInfo":Landroid/net/DhcpInfo;
    .end local v7    # "gateway":Ljava/net/InetAddress;
    .end local v8    # "i":I
    .end local v9    # "inetAddress":Ljava/net/InetAddress;
    .end local v10    # "log":Ljava/lang/String;
    .end local v11    # "sGateway":Ljava/lang/String;
    .end local v13    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :catch_5
    move-exception v6

    .line 1648
    .local v6, "e":Ljava/net/SocketException;
    :try_start_d
    const-string v14, "WifiMHD::a"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SocketException "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v16

    const/16 v17, 0x2

    aget-object v16, v16, v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1659
    :try_start_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v14, :cond_15

    .line 1660
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v14}, Llibcore/net/RawSocket;->close()V

    .line 1662
    :cond_15
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_3

    .line 1663
    :catch_6
    move-exception v14

    goto/16 :goto_3

    .line 1625
    .end local v6    # "e":Ljava/net/SocketException;
    .restart local v2    # "arpResult":Ljava/lang/String;
    .restart local v3    # "bssid":Ljava/lang/String;
    .restart local v5    # "dhcpInfo":Landroid/net/DhcpInfo;
    .restart local v7    # "gateway":Ljava/net/InetAddress;
    .restart local v8    # "i":I
    .restart local v9    # "inetAddress":Ljava/net/InetAddress;
    .restart local v10    # "log":Ljava/lang/String;
    .restart local v11    # "sGateway":Ljava/lang/String;
    .restart local v13    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_16
    :try_start_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpSpoofingDetectionEnabled:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v3, v15, v0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->handleMaliciousHotspotDetection(Ljava/lang/String;II)V

    .line 1626
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mGwMac:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->getComparedResult(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 1627
    .local v12, "sameCnt":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCachedGsimLog:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1000(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    .line 1628
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v14}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v14

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 1629
    .local v4, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_11

    .line 1630
    iget-object v14, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 1631
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string v15, "MHDA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "O"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendGsimData(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v14 .. v16}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCachedGsimLog:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1000(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MHDA - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "O"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_d
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    .line 1649
    .end local v2    # "arpResult":Ljava/lang/String;
    .end local v3    # "bssid":Ljava/lang/String;
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "dhcpInfo":Landroid/net/DhcpInfo;
    .end local v7    # "gateway":Ljava/net/InetAddress;
    .end local v8    # "i":I
    .end local v9    # "inetAddress":Ljava/net/InetAddress;
    .end local v10    # "log":Ljava/lang/String;
    .end local v11    # "sGateway":Ljava/lang/String;
    .end local v12    # "sameCnt":I
    .end local v13    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :catch_7
    move-exception v6

    .line 1650
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_10
    const-string v14, "WifiMHD::a"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IllegalArgumentException"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v16

    const/16 v17, 0x2

    aget-object v16, v16, v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1659
    :try_start_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v14, :cond_17

    .line 1660
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v14}, Llibcore/net/RawSocket;->close()V

    .line 1662
    :cond_17
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_3

    .line 1663
    :catch_8
    move-exception v14

    goto/16 :goto_3

    .line 1635
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "arpResult":Ljava/lang/String;
    .restart local v3    # "bssid":Ljava/lang/String;
    .restart local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v5    # "dhcpInfo":Landroid/net/DhcpInfo;
    .restart local v7    # "gateway":Ljava/net/InetAddress;
    .restart local v8    # "i":I
    .restart local v9    # "inetAddress":Ljava/net/InetAddress;
    .restart local v10    # "log":Ljava/lang/String;
    .restart local v11    # "sGateway":Ljava/lang/String;
    .restart local v12    # "sameCnt":I
    .restart local v13    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_18
    :try_start_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string v15, "MHDA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "S"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendGsimData(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v14 .. v16}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCachedGsimLog:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1000(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MHDA - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "S"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_2

    .line 1651
    .end local v2    # "arpResult":Ljava/lang/String;
    .end local v3    # "bssid":Ljava/lang/String;
    .end local v4    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "dhcpInfo":Landroid/net/DhcpInfo;
    .end local v7    # "gateway":Ljava/net/InetAddress;
    .end local v8    # "i":I
    .end local v9    # "inetAddress":Ljava/net/InetAddress;
    .end local v10    # "log":Ljava/lang/String;
    .end local v11    # "sGateway":Ljava/lang/String;
    .end local v12    # "sameCnt":I
    .end local v13    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :catch_9
    move-exception v6

    .line 1652
    .local v6, "e":Ljava/io/IOException;
    :try_start_13
    const-string v14, "WifiMHD::a"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IOException"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v16

    const/16 v17, 0x2

    aget-object v16, v16, v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 1659
    :try_start_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v14, :cond_19

    .line 1660
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v14}, Llibcore/net/RawSocket;->close()V

    .line 1662
    :cond_19
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    goto/16 :goto_3

    .line 1663
    :catch_a
    move-exception v14

    goto/16 :goto_3

    .line 1608
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "arpResult":Ljava/lang/String;
    .restart local v3    # "bssid":Ljava/lang/String;
    .restart local v5    # "dhcpInfo":Landroid/net/DhcpInfo;
    .restart local v7    # "gateway":Ljava/net/InetAddress;
    .restart local v8    # "i":I
    .restart local v9    # "inetAddress":Ljava/net/InetAddress;
    .restart local v11    # "sGateway":Ljava/lang/String;
    .restart local v13    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1653
    .end local v2    # "arpResult":Ljava/lang/String;
    .end local v3    # "bssid":Ljava/lang/String;
    .end local v5    # "dhcpInfo":Landroid/net/DhcpInfo;
    .end local v7    # "gateway":Ljava/net/InetAddress;
    .end local v8    # "i":I
    .end local v9    # "inetAddress":Ljava/net/InetAddress;
    .end local v11    # "sGateway":Ljava/lang/String;
    .end local v13    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :catch_b
    move-exception v6

    .line 1654
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_15
    const-string v14, "WifiMHD::a"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RuntimeException"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v16

    const/16 v17, 0x2

    aget-object v16, v16, v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 1659
    :try_start_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v14, :cond_1b

    .line 1660
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v14}, Llibcore/net/RawSocket;->close()V

    .line 1662
    :cond_1b
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c

    goto/16 :goto_3

    .line 1663
    :catch_c
    move-exception v14

    goto/16 :goto_3

    .line 1655
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_d
    move-exception v6

    .line 1656
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    :try_start_17
    const-string v14, "WifiMHD::a"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "OutOfMemoryError"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v16

    const/16 v17, 0x2

    aget-object v16, v16, v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 1659
    :try_start_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v14, :cond_1c

    .line 1660
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v14}, Llibcore/net/RawSocket;->close()V

    .line 1662
    :cond_1c
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_e

    goto/16 :goto_3

    .line 1663
    :catch_e
    move-exception v14

    goto/16 :goto_3

    .line 1658
    .end local v6    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v14

    .line 1659
    :try_start_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    if-eqz v15, :cond_1d

    .line 1660
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v15}, Llibcore/net/RawSocket;->close()V

    .line 1662
    :cond_1d
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mSocket:Llibcore/net/RawSocket;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_f

    .line 1664
    :goto_4
    throw v14

    .line 1663
    :catch_f
    move-exception v15

    goto :goto_4

    .restart local v3    # "bssid":Ljava/lang/String;
    .restart local v5    # "dhcpInfo":Landroid/net/DhcpInfo;
    .restart local v7    # "gateway":Ljava/net/InetAddress;
    .restart local v8    # "i":I
    .restart local v9    # "inetAddress":Ljava/net/InetAddress;
    .restart local v11    # "sGateway":Ljava/lang/String;
    .restart local v13    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :catch_10
    move-exception v14

    goto/16 :goto_3
.end method

.method public setEnabled(I)V
    .locals 0
    .param p1, "enable"    # I

    .prologue
    .line 1377
    iput p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpSpoofingDetectionEnabled:I

    .line 1378
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->removeMessages(I)V

    .line 1392
    iget-object v0, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->removeMessages(I)V

    .line 1393
    return-void
.end method

.method public updateVariables(II)V
    .locals 0
    .param p1, "arpCheckPeriod_sec"    # I
    .param p2, "arpTableCheckDelay_sec"    # I

    .prologue
    .line 1385
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->stop()V

    .line 1386
    iput p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpCheckPeriod_sec:I

    .line 1387
    iput p2, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$ArpSpoofingDetector;->mArpTableCheckDelay_sec:I

    .line 1388
    return-void
.end method
