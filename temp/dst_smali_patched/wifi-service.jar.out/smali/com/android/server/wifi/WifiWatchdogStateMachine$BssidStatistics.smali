.class Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BssidStatistics"
.end annotation


# instance fields
.field private final mBssid:Ljava/lang/String;

.field private mBssidAvoidTimeMax:J

.field public mEnhancedTargetRssi:I

.field private mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

.field private mEntriesSize:I

.field private mGoodLinkTargetCount:I

.field private mGoodLinkTargetIndex:I

.field private mGoodLinkTargetRssi:I

.field private mLastTimeGood:J

.field private mLastTimePoor:J

.field private mLastTimeSample:J

.field private mRssiBase:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 6
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEnhancedTargetRssi:I

    iput-object p2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    const/16 v1, -0x69

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    const/16 v1, 0x3d

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    new-array v1, v1, [Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    iput-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    new-instance v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    const-wide v4, 0x3fb999999999999aL    # 0.1

    invoke-direct {v2, p1, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;D)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$13400(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    return-wide v0
.end method

.method static synthetic access$13402(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    return-wide p1
.end method

.method static synthetic access$21000(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide v0
.end method

.method static synthetic access$21002(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide p1
.end method

.method static synthetic access$21100(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    return v0
.end method

.method static synthetic access$21120(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # I

    .prologue
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    return v0
.end method

.method static synthetic access$21500(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    return v0
.end method

.method static synthetic access$27102(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J

    return-wide p1
.end method

.method static synthetic access$27202(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    return-wide p1
.end method

.method static synthetic access$6000(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public findRssiTarget(IID)I
    .locals 17
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "threshold"    # D

    .prologue
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int p1, p1, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int p2, p2, v9

    const/4 v4, 0x0

    .local v4, "emptyCount":I
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    .local v2, "d":I
    :goto_0
    move/from16 v5, p1

    .local v5, "i":I
    :goto_1
    move/from16 v0, p2

    if-eq v5, v0, :cond_4

    if-ltz v5, :cond_2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v5, v9, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v9, v9, v5

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$13600(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v9, v9, v5

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$13500(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v10

    cmpg-double v9, v10, p3

    if-gez v9, :cond_3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v8, v9, v5

    .local v8, "rssi":I
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v9, "#.##"

    invoke-direct {v3, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .local v3, "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Scan target found: rssi="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " threshold="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double v12, v12, p3

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "% value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v11, v11, v5

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$13500(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v14

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "% volume="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v11, v11, v5

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$13600(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$28100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .end local v3    # "df":Ljava/text/DecimalFormat;
    .end local v8    # "rssi":I
    :cond_0
    :goto_2
    return v8

    .end local v2    # "d":I
    .end local v5    # "i":I
    :cond_1
    const/4 v2, -0x1

    goto/16 :goto_0

    .restart local v2    # "d":I
    .restart local v5    # "i":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x3

    if-lt v4, v9, :cond_3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v8, v9, v5

    .restart local v8    # "rssi":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->presetLoss(I)D

    move-result-wide v6

    .local v6, "lossPreset":D
    cmpg-double v9, v6, p3

    if-gez v9, :cond_3

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v9, "#.##"

    invoke-direct {v3, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .restart local v3    # "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Scan target found: rssi="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " threshold="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double v12, v12, p3

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "% value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v6

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "% volume=preset"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$28200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_2

    .end local v3    # "df":Ljava/text/DecimalFormat;
    .end local v6    # "lossPreset":D
    .end local v8    # "rssi":I
    :cond_3
    add-int/2addr v5, v2

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v8, v9, p2

    goto :goto_2
.end method

.method public newLinkDetected()V
    .locals 6

    .prologue
    iget-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous avoidance still in effect, rssi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$27800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, -0x69

    .local v0, "from":I
    const/16 v1, -0x2d

    .local v1, "to":I
    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->MAX_AVOID_TIME:[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$27900()[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New link verifying target set, rssi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$28000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public poorLinkDetected(I)Z
    .locals 13
    .param p1, "rssi"    # I

    .prologue
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Poor link detected, rssi="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$27600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .local v8, "now":J
    iget-wide v10, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J

    sub-long v4, v8, v10

    .local v4, "lastGood":J
    iget-wide v10, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    sub-long v6, v8, v10

    .local v6, "lastPoor":J
    add-int/lit8 v2, p1, 0x5

    .local v2, "from":I
    add-int/lit8 v3, p1, 0x14

    .local v3, "to":I
    const-wide/16 v0, 0x0

    .local v0, "avoidMax":J
    iget-object v10, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v10

    iput-wide v8, v10, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mLastPoorDetectedTime:J

    const-wide v10, 0x3fb999999999999aL    # 0.1

    invoke-virtual {p0, v2, v3, v10, v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    move-result v10

    iput v10, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    const/4 v10, 0x5

    iput v10, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    const-wide/16 v0, 0x7530

    add-long v10, v8, v0

    iput-wide v10, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    iget-object v10, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "goodRssi="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " goodCount="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " lastGood="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " lastPoor="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " avoidMax="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$27700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10
.end method

.method public poorLinkDetected(II)Z
    .locals 9
    .param p1, "rssi"    # I
    .param p2, "extraInfo"    # I

    .prologue
    const/16 v8, -0x52

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->poorLinkDetected(I)Z

    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I
    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4000(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .local v2, "now":J
    const-wide/32 v0, 0x927c0

    .local v0, "avoidMax":J
    add-long v4, v2, v0

    iput-wide v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Poor link detected enhanced recovery, avoidMax="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$27500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_0
    iget v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    if-ge v4, v8, :cond_1

    iput v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x5

    iput v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEnhancedTargetRssi:I

    iget v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEnhancedTargetRssi:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .end local v0    # "avoidMax":J
    .end local v2    # "now":J
    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_2
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEnhancedTargetRssi:I

    goto :goto_0
.end method

.method public presetLoss(I)D
    .locals 11
    .param p1, "rssi"    # I

    .prologue
    const/16 v10, 0x5a

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/16 v4, -0x5a

    if-gt p1, v4, :cond_0

    :goto_0
    return-wide v2

    :cond_0
    if-lez p1, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$27400()[D

    move-result-object v4

    if-nez v4, :cond_2

    const/16 v1, 0x5a

    .local v1, "size":I
    new-array v4, v10, [D

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$27402([D)[D

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v10, :cond_2

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$27400()[D

    move-result-object v4

    rsub-int/lit8 v5, v0, 0x5a

    int-to-double v6, v5

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double v6, v2, v6

    aput-wide v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sPresetLoss:[D
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$27400()[D

    move-result-object v2

    neg-int v3, p1

    aget-wide v2, v2, v3

    goto :goto_0
.end method

.method public updateLoss(IDI)V
    .locals 8
    .param p1, "rssi"    # I
    .param p2, "value"    # D
    .param p4, "volume"    # I

    .prologue
    if-gtz p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int v1, p1, v2

    .local v1, "index":I
    if-ltz v1, :cond_0

    iget v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v2, v2, v1

    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#.##"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .local v0, "df":Ljava/text/DecimalFormat;
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache updated: loss["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v4, v4, v1

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$13500(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "% volume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v4, v4, v1

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->access$13600(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$27300(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0
.end method
