.class Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;
.super Ljava/lang/Object;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SntpClient"
.end annotation


# static fields
.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final REFERENCE_TIME_OFFSET:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SntpClient"

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private mNtpTime:J

.field private mNtpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private read32([BI)J
    .locals 13
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    const/16 v9, 0x80

    .line 4607
    aget-byte v0, p1, p2

    .line 4608
    .local v0, "b0":B
    add-int/lit8 v8, p2, 0x1

    aget-byte v1, p1, v8

    .line 4609
    .local v1, "b1":B
    add-int/lit8 v8, p2, 0x2

    aget-byte v2, p1, v8

    .line 4610
    .local v2, "b2":B
    add-int/lit8 v8, p2, 0x3

    aget-byte v3, p1, v8

    .line 4613
    .local v3, "b3":B
    and-int/lit16 v8, v0, 0x80

    if-ne v8, v9, :cond_0

    and-int/lit8 v8, v0, 0x7f

    add-int/lit16 v4, v8, 0x80

    .line 4614
    .local v4, "i0":I
    :goto_0
    and-int/lit16 v8, v1, 0x80

    if-ne v8, v9, :cond_1

    and-int/lit8 v8, v1, 0x7f

    add-int/lit16 v5, v8, 0x80

    .line 4615
    .local v5, "i1":I
    :goto_1
    and-int/lit16 v8, v2, 0x80

    if-ne v8, v9, :cond_2

    and-int/lit8 v8, v2, 0x7f

    add-int/lit16 v6, v8, 0x80

    .line 4616
    .local v6, "i2":I
    :goto_2
    and-int/lit16 v8, v3, 0x80

    if-ne v8, v9, :cond_3

    and-int/lit8 v8, v3, 0x7f

    add-int/lit16 v7, v8, 0x80

    .line 4618
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

    .line 4613
    goto :goto_0

    .restart local v4    # "i0":I
    :cond_1
    move v5, v1

    .line 4614
    goto :goto_1

    .restart local v5    # "i1":I
    :cond_2
    move v6, v2

    .line 4615
    goto :goto_2

    .restart local v6    # "i2":I
    :cond_3
    move v7, v3

    .line 4616
    goto :goto_3
.end method

.method private readTimeStamp([BI)J
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    const-wide/16 v6, 0x3e8

    .line 4627
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->read32([BI)J

    move-result-wide v2

    .line 4628
    .local v2, "seconds":J
    add-int/lit8 v4, p2, 0x4

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->read32([BI)J

    move-result-wide v0

    .line 4629
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
    .line 4638
    const-wide/16 v8, 0x3e8

    div-long v6, p3, v8

    .line 4639
    .local v6, "seconds":J
    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v6

    sub-long v2, p3, v8

    .line 4640
    .local v2, "milliseconds":J
    const-wide v8, 0x83aa7e80L

    add-long/2addr v6, v8

    .line 4643
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .local v4, "offset":I
    const/16 v5, 0x18

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 4644
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/16 v5, 0x10

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 4645
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x8

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 4646
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/4 v5, 0x0

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 4648
    const-wide v8, 0x100000000L

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 4650
    .local v0, "fraction":J
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x18

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 4651
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "offset":I
    .restart local p2    # "offset":I
    const/16 v5, 0x10

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 4652
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "offset":I
    .restart local v4    # "offset":I
    const/16 v5, 0x8

    shr-long v8, v0, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 4654
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

    .line 4655
    return-void
.end method


# virtual methods
.method public getNtpTime()J
    .locals 2

    .prologue
    .line 4580
    iget-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public getNtpTimeReference()J
    .locals 2

    .prologue
    .line 4590
    iget-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    .prologue
    .line 4599
    iget-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .locals 32
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    .line 4534
    :try_start_0
    new-instance v19, Ljava/net/DatagramSocket;

    invoke-direct/range {v19 .. v19}, Ljava/net/DatagramSocket;-><init>()V

    .line 4535
    .local v19, "socket":Ljava/net/DatagramSocket;
    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 4536
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 4537
    .local v4, "address":Ljava/net/InetAddress;
    const/16 v28, 0x30

    move/from16 v0, v28

    new-array v5, v0, [B

    .line 4538
    .local v5, "buffer":[B
    new-instance v9, Ljava/net/DatagramPacket;

    array-length v0, v5

    move/from16 v28, v0

    const/16 v29, 0x7b

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v9, v5, v0, v4, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 4540
    .local v9, "request":Ljava/net/DatagramPacket;
    const/16 v28, 0x0

    const/16 v29, 0x1b

    aput-byte v29, v5, v28

    .line 4541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 4542
    .local v16, "requestTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 4543
    .local v14, "requestTicks":J
    const/16 v28, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-wide/from16 v2, v16

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->writeTimeStamp([BIJ)V

    .line 4545
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 4546
    new-instance v18, Ljava/net/DatagramPacket;

    array-length v0, v5

    move/from16 v28, v0

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-direct {v0, v5, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 4548
    .local v18, "response":Ljava/net/DatagramPacket;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 4549
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 4550
    .local v20, "responseTicks":J
    sub-long v28, v20, v14

    add-long v22, v16, v28

    .line 4552
    .local v22, "responseTime":J
    invoke-virtual/range {v19 .. v19}, Ljava/net/DatagramSocket;->close()V

    .line 4555
    const/16 v28, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v5, v1}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->readTimeStamp([BI)J

    move-result-wide v10

    .line 4557
    .local v10, "originateTime":J
    const/16 v28, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v5, v1}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->readTimeStamp([BI)J

    move-result-wide v12

    .line 4558
    .local v12, "receiveTime":J
    const/16 v28, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v5, v1}, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->readTimeStamp([BI)J

    move-result-wide v26

    .line 4559
    .local v26, "transmitTime":J
    sub-long v28, v20, v14

    sub-long v30, v26, v12

    sub-long v24, v28, v30

    .line 4561
    .local v24, "roundTripTime":J
    sub-long v28, v12, v10

    sub-long v30, v26, v22

    add-long v28, v28, v30

    const-wide/16 v30, 0x2

    div-long v6, v28, v30

    .line 4562
    .local v6, "clockOffset":J
    add-long v28, v22, v6

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->mNtpTime:J

    .line 4563
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->mNtpTimeReference:J

    .line 4564
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;->mRoundTripTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4571
    const/16 v28, 0x1

    .end local v4    # "address":Ljava/net/InetAddress;
    .end local v5    # "buffer":[B
    .end local v6    # "clockOffset":J
    .end local v9    # "request":Ljava/net/DatagramPacket;
    .end local v10    # "originateTime":J
    .end local v12    # "receiveTime":J
    .end local v14    # "requestTicks":J
    .end local v16    # "requestTime":J
    .end local v18    # "response":Ljava/net/DatagramPacket;
    .end local v19    # "socket":Ljava/net/DatagramSocket;
    .end local v20    # "responseTicks":J
    .end local v22    # "responseTime":J
    .end local v24    # "roundTripTime":J
    .end local v26    # "transmitTime":J
    :goto_0
    return v28

    .line 4565
    :catch_0
    move-exception v8

    .line 4566
    .local v8, "e":Ljava/lang/Exception;
    sget-boolean v28, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v28, :cond_0

    .line 4567
    const-string v28, "SntpClient"

    const-string v29, "In requestTime: Exception"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4568
    :cond_0
    const/16 v28, 0x0

    goto :goto_0
.end method
