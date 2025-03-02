.class public Landroid/net/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# static fields
.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final REFERENCE_TIME_OFFSET:I = 0x10

.field private static final SHIP_BUILD:Z

.field private static final TAG:Ljava/lang/String; = "SntpClient"

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private mNtpTime:J

.field private mNtpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v0, "true"

    const-string v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/net/SntpClient;->SHIP_BUILD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCHNOrHKTW()Z
    .locals 2

    .prologue
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CWT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TWM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private read32([BI)J
    .locals 13
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    const/16 v9, 0x80

    aget-byte v0, p1, p2

    .local v0, "b0":B
    add-int/lit8 v8, p2, 0x1

    aget-byte v1, p1, v8

    .local v1, "b1":B
    add-int/lit8 v8, p2, 0x2

    aget-byte v2, p1, v8

    .local v2, "b2":B
    add-int/lit8 v8, p2, 0x3

    aget-byte v3, p1, v8

    .local v3, "b3":B
    and-int/lit16 v8, v0, 0x80

    if-ne v8, v9, :cond_0

    and-int/lit8 v8, v0, 0x7f

    add-int/lit16 v4, v8, 0x80

    .local v4, "i0":I
    :goto_0
    and-int/lit16 v8, v1, 0x80

    if-ne v8, v9, :cond_1

    and-int/lit8 v8, v1, 0x7f

    add-int/lit16 v5, v8, 0x80

    .local v5, "i1":I
    :goto_1
    and-int/lit16 v8, v2, 0x80

    if-ne v8, v9, :cond_2

    and-int/lit8 v8, v2, 0x7f

    add-int/lit16 v6, v8, 0x80

    .local v6, "i2":I
    :goto_2
    and-int/lit16 v8, v3, 0x80

    if-ne v8, v9, :cond_3

    and-int/lit8 v8, v3, 0x7f

    add-int/lit16 v7, v8, 0x80

    .local v7, "i3":I
    :goto_3
    int-to-long v8, v4

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    int-to-long v10, v5

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v7

    add-long/2addr v8, v10

    return-wide v8

    .end local v4    # "i0":I
    .end local v5    # "i1":I
    .end local v6    # "i2":I
    .end local v7    # "i3":I
    :cond_0
    move v4, v0

    goto :goto_0

    .restart local v4    # "i0":I
    :cond_1
    move v5, v1

    goto :goto_1

    .restart local v5    # "i1":I
    :cond_2
    move v6, v2

    goto :goto_2

    .restart local v6    # "i2":I
    :cond_3
    move v7, v3

    goto :goto_3
.end method

.method private readTimeStamp([BI)J
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    const-wide/16 v6, 0x3e8

    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v2

    .local v2, "seconds":J
    add-int/lit8 v4, p2, 0x4

    invoke-direct {p0, p1, v4}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v0

    .local v0, "fraction":J
    const-wide v4, 0x83aa7e80L

    sub-long v4, v2, v4

    mul-long/2addr v4, v6

    mul-long/2addr v6, v0

    const-wide v8, 0x100000000L

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private writeTimeStamp([BIJ)V
    .locals 13
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "time"    # J

    .prologue
    const-wide/16 v8, 0x3e8

    div-long v6, p3, v8

    .local v6, "seconds":J
    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v6

    sub-long v2, p3, v8

    .local v2, "milliseconds":J
    const-wide v8, 0x83aa7e80L

    add-long/2addr v6, v8

    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .local v4, "offset":I
    const/16 v5, 0x18

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/16 v5, 0x10

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x8

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/4 v5, 0x0

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    const-wide v8, 0x100000000L

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .local v0, "fraction":J
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x18

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/16 v5, 0x10

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x8

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    double-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    return-void
.end method


# virtual methods
.method public getNtpTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public getNtpTimeReference()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .locals 34
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    const/16 v19, 0x0

    .local v19, "socket":Ljava/net/DatagramSocket;
    :try_start_0
    new-instance v26, Ljava/net/DatagramSocket;

    invoke-direct/range {v26 .. v26}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v19    # "socket":Ljava/net/DatagramSocket;
    .local v26, "socket":Ljava/net/DatagramSocket;
    :try_start_1
    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .local v4, "address":Ljava/net/InetAddress;
    invoke-static {}, Landroid/net/SntpClient;->isCHNOrHKTW()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v27

    const-string v30, "120.198.233.90"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    sget-boolean v27, Landroid/net/SntpClient;->SHIP_BUILD:Z

    if-nez v27, :cond_0

    const-string v27, "SntpClient"

    const-string v30, "China network resolved wrong dns. Return false."

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    const/16 v27, 0x0

    if-eqz v26, :cond_1

    invoke-virtual/range {v26 .. v26}, Ljava/net/DatagramSocket;->close()V

    :cond_1
    move-object/from16 v19, v26

    .end local v4    # "address":Ljava/net/InetAddress;
    .end local v26    # "socket":Ljava/net/DatagramSocket;
    .restart local v19    # "socket":Ljava/net/DatagramSocket;
    :cond_2
    :goto_0
    return v27

    .end local v19    # "socket":Ljava/net/DatagramSocket;
    .restart local v4    # "address":Ljava/net/InetAddress;
    .restart local v26    # "socket":Ljava/net/DatagramSocket;
    :cond_3
    const/16 v27, 0x30

    :try_start_2
    move/from16 v0, v27

    new-array v5, v0, [B

    .local v5, "buffer":[B
    new-instance v9, Ljava/net/DatagramPacket;

    array-length v0, v5

    move/from16 v27, v0

    const/16 v30, 0x7b

    move/from16 v0, v27

    move/from16 v1, v30

    invoke-direct {v9, v5, v0, v4, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .local v9, "request":Ljava/net/DatagramPacket;
    const/16 v27, 0x0

    const/16 v30, 0x1b

    aput-byte v30, v5, v27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .local v16, "requestTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .local v14, "requestTicks":J
    const/16 v27, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-wide/from16 v2, v16

    invoke-direct {v0, v5, v1, v2, v3}, Landroid/net/SntpClient;->writeTimeStamp([BIJ)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-instance v18, Ljava/net/DatagramPacket;

    array-length v0, v5

    move/from16 v27, v0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-direct {v0, v5, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .local v18, "response":Ljava/net/DatagramPacket;
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .local v20, "responseTicks":J
    sub-long v30, v20, v14

    add-long v22, v16, v30

    .local v22, "responseTime":J
    const/16 v27, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v5, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v10

    .local v10, "originateTime":J
    const/16 v27, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v5, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v12

    .local v12, "receiveTime":J
    const/16 v27, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v5, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v28

    .local v28, "transmitTime":J
    sub-long v30, v20, v14

    sub-long v32, v28, v12

    sub-long v24, v30, v32

    .local v24, "roundTripTime":J
    sub-long v30, v12, v10

    sub-long v32, v28, v22

    add-long v30, v30, v32

    const-wide/16 v32, 0x2

    div-long v6, v30, v32

    .local v6, "clockOffset":J
    const-wide/16 v30, 0x0

    cmp-long v27, v10, v30

    if-ltz v27, :cond_4

    const-wide/16 v30, 0x0

    cmp-long v27, v12, v30

    if-ltz v27, :cond_4

    const-wide/16 v30, 0x0

    cmp-long v27, v28, v30

    if-gez v27, :cond_7

    :cond_4
    invoke-static {}, Landroid/net/SntpClient;->isCHNOrHKTW()Z

    move-result v27

    if-eqz v27, :cond_7

    sget-boolean v27, Landroid/net/SntpClient;->SHIP_BUILD:Z

    if-nez v27, :cond_5

    const-string v27, "SntpClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "time value is wrong originateTime : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " receiveTime : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " transmitTime : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    const/16 v27, 0x0

    if-eqz v26, :cond_6

    invoke-virtual/range {v26 .. v26}, Ljava/net/DatagramSocket;->close()V

    :cond_6
    move-object/from16 v19, v26

    .end local v26    # "socket":Ljava/net/DatagramSocket;
    .restart local v19    # "socket":Ljava/net/DatagramSocket;
    goto/16 :goto_0

    .end local v19    # "socket":Ljava/net/DatagramSocket;
    .restart local v26    # "socket":Ljava/net/DatagramSocket;
    :cond_7
    add-long v30, v22, v6

    :try_start_3
    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTime:J

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTimeReference:J

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mRoundTripTime:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v26, :cond_8

    invoke-virtual/range {v26 .. v26}, Ljava/net/DatagramSocket;->close()V

    :cond_8
    const/16 v27, 0x1

    move-object/from16 v19, v26

    .end local v26    # "socket":Ljava/net/DatagramSocket;
    .restart local v19    # "socket":Ljava/net/DatagramSocket;
    goto/16 :goto_0

    .end local v4    # "address":Ljava/net/InetAddress;
    .end local v5    # "buffer":[B
    .end local v6    # "clockOffset":J
    .end local v9    # "request":Ljava/net/DatagramPacket;
    .end local v10    # "originateTime":J
    .end local v12    # "receiveTime":J
    .end local v14    # "requestTicks":J
    .end local v16    # "requestTime":J
    .end local v18    # "response":Ljava/net/DatagramPacket;
    .end local v20    # "responseTicks":J
    .end local v22    # "responseTime":J
    .end local v24    # "roundTripTime":J
    .end local v28    # "transmitTime":J
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    sget-boolean v27, Landroid/net/SntpClient;->SHIP_BUILD:Z

    if-nez v27, :cond_9

    invoke-static {}, Landroid/net/SntpClient;->isCHNOrHKTW()Z

    move-result v27

    if-eqz v27, :cond_9

    const-string v27, "SntpClient"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "request time failed server: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " with error : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    const/16 v27, 0x0

    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/net/DatagramSocket;->close()V

    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v27

    :goto_2
    if-eqz v19, :cond_a

    invoke-virtual/range {v19 .. v19}, Ljava/net/DatagramSocket;->close()V

    :cond_a
    throw v27

    .end local v19    # "socket":Ljava/net/DatagramSocket;
    .restart local v26    # "socket":Ljava/net/DatagramSocket;
    :catchall_1
    move-exception v27

    move-object/from16 v19, v26

    .end local v26    # "socket":Ljava/net/DatagramSocket;
    .restart local v19    # "socket":Ljava/net/DatagramSocket;
    goto :goto_2

    .end local v19    # "socket":Ljava/net/DatagramSocket;
    .restart local v26    # "socket":Ljava/net/DatagramSocket;
    :catch_1
    move-exception v8

    move-object/from16 v19, v26

    .end local v26    # "socket":Ljava/net/DatagramSocket;
    .restart local v19    # "socket":Ljava/net/DatagramSocket;
    goto :goto_1
.end method
