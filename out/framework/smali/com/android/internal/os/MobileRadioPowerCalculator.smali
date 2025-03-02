.class public Lcom/android/internal/os/MobileRadioPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "MobileRadioPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MobileRadioPowerController"


# instance fields
.field private final mPowerBins:[D

.field private final mPowerRadioOn:D

.field private final mPowerScan:D

.field private mStats:Landroid/os/BatteryStats;

.field private mTotalAppMobileActiveMs:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;Landroid/os/BatteryStats;)V
    .locals 4
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;
    .param p2, "stats"    # Landroid/os/BatteryStats;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 26
    sget v1, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    new-array v1, v1, [D

    iput-object v1, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    .line 29
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    .line 53
    const-string/jumbo v1, "radio.active"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    const-string/jumbo v2, "radio.on"

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    const-string/jumbo v1, "radio.scanning"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerScan:D

    .line 58
    iput-object p2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    .line 59
    return-void
.end method

.method private getMobilePowerPerPacket(JI)D
    .locals 23
    .param p1, "rawRealtimeUs"    # J
    .param p3, "statsType"    # I

    .prologue
    .line 35
    const-wide/32 v4, 0x30d40

    .line 36
    .local v4, "MOBILE_BPS":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    move-wide/from16 v18, v0

    const-wide v20, 0x40ac200000000000L    # 3600.0

    div-double v6, v18, v20

    .line 38
    .local v6, "MOBILE_POWER":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v12

    .line 40
    .local v12, "mobileRx":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v14

    .line 42
    .local v14, "mobileTx":J
    add-long v8, v12, v14

    .line 44
    .local v8, "mobileData":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v16, v18, v20

    .line 46
    .local v16, "radioDataUptimeMs":J
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-eqz v18, :cond_0

    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-eqz v18, :cond_0

    long-to-double v0, v8

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v10, v18, v20

    .line 49
    .local v10, "mobilePps":D
    :goto_0
    div-double v18, v6, v10

    const-wide v20, 0x40ac200000000000L    # 3600.0

    div-double v18, v18, v20

    return-wide v18

    .line 46
    .end local v10    # "mobilePps":D
    :cond_0
    const-wide v10, 0x40286a0000000000L    # 12.20703125

    goto :goto_0
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 7
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    invoke-virtual {p2, v4, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    .line 67
    invoke-virtual {p2, v5, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    .line 69
    invoke-virtual {p2, p7}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 70
    invoke-virtual {p2, p7}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v0

    iput v0, p1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 71
    invoke-virtual {p2, v4, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    .line 73
    invoke-virtual {p2, v5, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    .line 76
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 79
    iget-wide v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    .line 80
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    mul-double/2addr v0, v2

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    .line 93
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr v0, v2

    long-to-double v0, v0

    invoke-direct {p0, p3, p4, p7}, Lcom/android/internal/os/MobileRadioPowerCalculator;->getMobilePowerPerPacket(JI)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    goto :goto_0
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 27
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    .line 98
    const-wide/16 v10, 0x0

    .line 99
    .local v10, "power":D
    const-wide/16 v18, 0x0

    .line 100
    .local v18, "signalTimeMs":J
    const-wide/16 v6, 0x0

    .line 101
    .local v6, "noCoverageTimeMs":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 102
    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    move/from16 v3, p7

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v20, v22, v24

    .line 104
    .local v20, "strengthTimeMs":J
    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    aget-wide v24, v5, v4

    mul-double v22, v22, v24

    const-wide v24, 0x414b774000000000L    # 3600000.0

    div-double v8, v22, v24

    .line 109
    .local v8, "p":D
    add-double/2addr v10, v8

    .line 110
    add-long v18, v18, v20

    .line 111
    if-nez v4, :cond_0

    .line 112
    move-wide/from16 v6, v20

    .line 101
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 116
    .end local v8    # "p":D
    .end local v20    # "strengthTimeMs":J
    :cond_1
    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    move/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v16, v22, v24

    .line 118
    .local v16, "scanningTimeMs":J
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerScan:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    const-wide v24, 0x414b774000000000L    # 3600000.0

    div-double v8, v22, v24

    .line 123
    .restart local v8    # "p":D
    add-double/2addr v10, v8

    .line 124
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    move-wide/from16 v0, p3

    move/from16 v2, p7

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v12, v22, v24

    .line 125
    .local v12, "radioActiveTimeMs":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    move-wide/from16 v22, v0

    sub-long v14, v12, v22

    .line 126
    .local v14, "remainingActiveTimeMs":J
    const-wide/16 v22, 0x0

    cmp-long v5, v14, v22

    if-lez v5, :cond_2

    .line 127
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    move-wide/from16 v22, v0

    long-to-double v0, v14

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    const-wide v24, 0x414b774000000000L    # 3600000.0

    div-double v22, v22, v24

    add-double v10, v10, v22

    .line 130
    :cond_2
    const-wide/16 v22, 0x0

    cmpl-double v5, v10, v22

    if-eqz v5, :cond_4

    .line 131
    const-wide/16 v22, 0x0

    cmp-long v5, v18, v22

    if-eqz v5, :cond_3

    .line 132
    long-to-double v0, v6

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    mul-double v22, v22, v24

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    .line 134
    :cond_3
    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 135
    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownCount(I)I

    move-result v5

    move-object/from16 v0, p1

    iput v5, v0, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 136
    move-object/from16 v0, p1

    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    .line 138
    :cond_4
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 142
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    .line 143
    return-void
.end method

.method public reset(Landroid/os/BatteryStats;)V
    .locals 0
    .param p1, "stats"    # Landroid/os/BatteryStats;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/internal/os/MobileRadioPowerCalculator;->reset()V

    .line 147
    iput-object p1, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    .line 148
    return-void
.end method
