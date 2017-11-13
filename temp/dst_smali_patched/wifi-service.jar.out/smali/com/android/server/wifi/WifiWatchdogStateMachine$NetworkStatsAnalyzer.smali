.class Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;
.super Landroid/os/Handler;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStatsAnalyzer"
.end annotation


# static fields
.field private static final ACTIVITY_CHECK_PERIOD:I = 0x2710

.field private static final ACTIVITY_POLLING_INTERVAL:I = 0x3e8

.field private static final GOOD_RX_VALID_DURATION:I = 0x493e0

.field private static final MIN_STAY_TIME_AFTER_RSSI_CHECK:I = 0x1388

.field private static final PERIODIC_DNS_CHECK_INTERVAL:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "WifiWatchdogStateMachine.NetworkStatsAnalyzer"


# instance fields
.field private mCumulativePoorRx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRxStats:I

.field private mDnsQueried:Z

.field private mGoodRxRate:I

.field private mGoodRxRssi:I

.field private mGoodRxTime:J

.field private mLastDnsCheckTime:J

.field private mMaybeUseStreaming:I

.field private mPollingStarted:Z

.field private mPublicDnsCheckProcess:Z

.field private mQCCancelledByScanOrDhcp:Z

.field private mRxBytes:J

.field private mRxHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRxPackets:J

.field private mSYNPacketOnly:Z

.field private mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

.field private mSkipRemainingDnsResults:Z

.field private mTxBytes:J

.field private mTxPackets:J

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Looper;)V
    .locals 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxPackets:J

    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxPackets:J

    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxBytes:J

    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxBytes:J

    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    const/16 v0, -0xc8

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCurrentRxStats:I

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    new-instance v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const-string v1, "WifiWatchdogStateMachine.SingDnsChecker"

    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;)Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    return-object v0
.end method


# virtual methods
.method checkPublicDns()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v0

    iput v1, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xbb8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    return-void
.end method

.method getCurrentRxStats()I
    .locals 3

    .prologue
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentRxStats : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCurrentRxStats:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCurrentRxStats:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 43
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    .local v26, "now":J
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore msg id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    if-nez v4, :cond_0

    const v4, 0x21035

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->sendEmptyMessage(I)Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->initNetworkStatHistory()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    goto :goto_0

    :sswitch_1
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPollingStarted : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    if-lez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    sub-long v4, v26, v4

    const-wide/32 v6, 0x493e0

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    if-lt v4, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    if-ne v4, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    add-int/lit8 v5, v5, -0x5

    if-ge v4, v5, :cond_3

    :cond_2
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->setGoodRxStateNow(J)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v4

    sub-long v4, v26, v4

    const-wide/32 v6, 0x1b7740

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static {v4, v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12702(Lcom/android/server/wifi/WifiWatchdogStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxPackets:J

    move-wide/from16 v34, v0

    .local v34, "preTxPkts":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxPackets:J

    move-wide/from16 v28, v0

    .local v28, "preRxPkts":J
    const-string v4, "wlan0"

    invoke-static {v4}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxPackets:J

    const-string v4, "wlan0"

    invoke-static {v4}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxPackets:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxPackets:J

    sub-long v10, v4, v28

    .local v10, "diffRx":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxPackets:J

    sub-long v14, v4, v34

    .local v14, "diffTx":J
    long-to-int v4, v10

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCurrentRxStats:I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "diffRx : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "diffTx : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxBytes:J

    move-wide/from16 v32, v0

    .local v32, "preTxBytes":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxBytes:J

    move-wide/from16 v30, v0

    .local v30, "preRxbyte":J
    const-string v4, "wlan0"

    invoke-static {v4}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxBytes:J

    const-string v4, "wlan0"

    invoke-static {v4}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxBytes:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxBytes:J

    sub-long v12, v4, v30

    .local v12, "diffRxBytes":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mTxBytes:J

    sub-long v16, v4, v32

    .local v16, "diffTxBytes":J
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "diffRxBytes : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "diffTxBytes : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-lez v4, :cond_14

    div-long v4, v12, v10

    :goto_1
    long-to-int v0, v4

    move/from16 v39, v0

    .local v39, "rxBytesPerPacket":I
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-lez v4, :cond_15

    div-long v4, v16, v14

    :goto_2
    long-to-int v0, v4

    move/from16 v41, v0

    .local v41, "txBytesPerPacket":I
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rxBytesPerPacket : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "txBytesPerPacket : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNetworkStatHistoryUpdate:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$15800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->addNetworkStatHistory(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_b
    const/16 v22, 0x0

    .local v22, "needCheckByNoRx":Z
    const/16 v23, 0x0

    .local v23, "needCheckByPoorRx":Z
    const/16 v24, 0x0

    .local v24, "needCheckInternetIsAlive":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Integer;

    long-to-int v6, v10

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "Start Rechecking Link Quality - Previous QC cancelled because (Scan / DHCP session) and QC overlapped."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    :cond_e
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMaybeUseStreaming : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v25

    .local v25, "ongoingId":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    if-nez v4, :cond_10

    if-lez v25, :cond_18

    :cond_10
    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "waiting dns responses or the quality result now!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mGoodRxPacketsBase:I

    int-to-long v4, v4

    cmp-long v4, v10, v4

    if-ltz v4, :cond_13

    const/16 v4, 0x1f4

    move/from16 v0, v39

    if-le v0, v4, :cond_13

    if-lez v25, :cond_17

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Good Rx!, don\'t need to keep evaluating quality! - id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytes:I

    int-to-long v4, v4

    cmp-long v4, v12, v4

    if-lez v4, :cond_16

    long-to-int v0, v12

    move/from16 v37, v0

    .local v37, "result":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    const v5, 0x21026

    const/4 v6, -0x1

    move/from16 v0, v37

    invoke-static {v4, v5, v0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .end local v25    # "ongoingId":I
    .end local v37    # "result":I
    :cond_13
    :goto_4
    const v4, 0x21035

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->removeMessages(I)V

    const v4, 0x21035

    const-wide/16 v6, 0x3e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .end local v22    # "needCheckByNoRx":Z
    .end local v23    # "needCheckByPoorRx":Z
    .end local v24    # "needCheckInternetIsAlive":Z
    .end local v39    # "rxBytesPerPacket":I
    .end local v41    # "txBytesPerPacket":I
    :cond_14
    const-wide/16 v4, 0x0

    goto/16 :goto_1

    .restart local v39    # "rxBytesPerPacket":I
    :cond_15
    const-wide/16 v4, 0x0

    goto/16 :goto_2

    .restart local v22    # "needCheckByNoRx":Z
    .restart local v23    # "needCheckByPoorRx":Z
    .restart local v24    # "needCheckInternetIsAlive":Z
    .restart local v25    # "ongoingId":I
    .restart local v41    # "txBytesPerPacket":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v0, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPassBytes:I

    move/from16 v37, v0

    goto :goto_3

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    goto :goto_4

    :cond_18
    if-nez v24, :cond_1c

    if-nez v22, :cond_1c

    if-nez v23, :cond_1c

    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-gtz v4, :cond_19

    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-lez v4, :cond_1c

    :cond_19
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    sub-long v4, v26, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1c

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PERIODIC DNS CHECK TRIGGER (SIMPLE CONNECTION TEST) - Last DNS check was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    sub-long v6, v26, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seconds ago."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17200(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x20

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    :cond_1b
    const/16 v24, 0x1

    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1d

    const v4, 0x21035

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->removeMessages(I)V

    const v4, 0x21035

    const-wide/16 v6, 0x3e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mNoRxPacketsLimit:I

    int-to-long v4, v4

    cmp-long v4, v10, v4

    if-lez v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x56f4

    int-to-long v4, v4

    cmp-long v4, v12, v4

    if-gez v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mGoodRxPacketsBase:I

    int-to-long v4, v4

    cmp-long v4, v10, v4

    if-gez v4, :cond_22

    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-lez v4, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    long-to-int v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    const/16 v4, 0x38

    move/from16 v0, v41

    if-ge v4, v0, :cond_20

    const/16 v4, 0x49

    move/from16 v0, v41

    if-ge v0, v4, :cond_20

    const-wide/16 v4, 0x64

    mul-long/2addr v4, v14

    div-long/2addr v4, v10

    long-to-int v0, v4

    move/from16 v42, v0

    .local v42, "txProportionToRx":I
    const/16 v4, 0x5a

    move/from16 v0, v42

    if-ge v4, v0, :cond_20

    const/16 v4, 0x6e

    move/from16 v0, v42

    if-ge v0, v4, :cond_20

    add-int/lit8 v4, v41, -0xa

    move/from16 v0, v39

    if-ge v4, v0, :cond_20

    move/from16 v0, v39

    move/from16 v1, v41

    if-gt v0, v1, :cond_20

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "DNS queries and abnormal responses"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x21

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    :cond_1f
    const/16 v24, 0x1

    .end local v42    # "txProportionToRx":I
    :cond_20
    :goto_6
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCumulativePoorRx.size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_34

    const/16 v40, 0x0

    .local v40, "sum":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v38

    .local v38, "rx":I
    add-int v40, v40, v38

    goto :goto_7

    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v38    # "rx":I
    .end local v40    # "sum":I
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_5

    :cond_23
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    if-eqz v4, :cond_2b

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_24

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "No [SYN,ACK] or No subsequent transaction"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_29

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "suspicious No Rx state but staying in good Rx state now"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x22

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    :cond_26
    const/16 v24, 0x1

    :goto_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    :goto_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_20

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_27

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "could be in No service state during streaming!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x23

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    :cond_28
    const/16 v24, 0x1

    goto/16 :goto_6

    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x1f

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    :cond_2a
    const/16 v22, 0x1

    goto :goto_8

    :cond_2b
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-lez v4, :cond_2d

    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-nez v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_9

    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    long-to-int v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_9

    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v40    # "sum":I
    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPoorRxPacketsLimit:I

    mul-int/lit8 v4, v4, 0x3

    move/from16 v0, v40

    if-ge v0, v4, :cond_42

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x26

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    :cond_2f
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_a
    const/4 v4, 0x3

    move/from16 v0, v20

    if-ge v0, v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mGoodRxPacketsBase:I

    if-lt v4, v5, :cond_3f

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_30

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "It\'s hard to say poor rx"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    const/16 v23, 0x0

    :cond_31
    if-eqz v23, :cond_41

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_40

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_32

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "suspicious Poor Rx state but staying in good Rx state now"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x24

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    :cond_33
    const/16 v24, 0x1

    const/16 v23, 0x0

    .end local v20    # "i":I
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v40    # "sum":I
    :cond_34
    :goto_b
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    sub-long v4, v26, v4

    const-wide/16 v6, 0x5dc

    cmp-long v4, v4, v6

    if-lez v4, :cond_43

    const-wide/16 v4, 0x2

    cmp-long v4, v14, v4

    if-ltz v4, :cond_43

    const/16 v4, 0x3b

    move/from16 v0, v41

    if-gt v4, v0, :cond_43

    const/16 v4, 0x3e

    move/from16 v0, v41

    if-gt v0, v4, :cond_43

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_35

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "SYN packets might be transmitted"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    move/from16 v36, v0

    .local v36, "prevStreaming":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mPoorRxPacketsLimit:I

    int-to-long v4, v4

    cmp-long v4, v10, v4

    if-lez v4, :cond_44

    const/16 v4, 0x514

    move/from16 v0, v39

    if-le v0, v4, :cond_44

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    add-int/lit8 v4, v4, 0x1

    :goto_d
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    const/4 v4, 0x5

    move/from16 v0, v36

    if-lt v0, v4, :cond_38

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    if-nez v4, :cond_38

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_36

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "need to check if there are problems on streaming service"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x23

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    :cond_37
    const/16 v24, 0x1

    :cond_38
    if-nez v23, :cond_39

    if-eqz v22, :cond_3b

    :cond_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-wide/from16 v0, v26

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastQualityCheckTimeByActivity:J
    invoke-static {v4, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17302(Lcom/android/server/wifi/WifiWatchdogStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastCheckTimeByRssi:J
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)J

    move-result-wide v4

    sub-long v4, v26, v4

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    if-lez v4, :cond_45

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_3a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x1e

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    :cond_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    :cond_3b
    :goto_e
    if-eqz v24, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->access$15700(Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/4 v5, 0x1

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0xbb8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3e

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_3c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v5, "DNS List is empty, need to check quality"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_3d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x1e

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    :cond_3e
    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    goto/16 :goto_4

    .end local v36    # "prevStreaming":I
    .restart local v20    # "i":I
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v40    # "sum":I
    :cond_3f
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_a

    :cond_40
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_34

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "Cumulative Rx is in poor status!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_41
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    goto/16 :goto_b

    .end local v20    # "i":I
    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    goto/16 :goto_b

    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v40    # "sum":I
    :cond_43
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    goto/16 :goto_c

    .restart local v36    # "prevStreaming":I
    :cond_44
    const/4 v4, 0x0

    goto/16 :goto_d

    :cond_45
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_46

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "The interval between evaluations is too short!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_47

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x25

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    :cond_47
    const/16 v24, 0x1

    goto/16 :goto_e

    .end local v10    # "diffRx":J
    .end local v12    # "diffRxBytes":J
    .end local v14    # "diffTx":J
    .end local v16    # "diffTxBytes":J
    .end local v22    # "needCheckByNoRx":Z
    .end local v23    # "needCheckByPoorRx":Z
    .end local v24    # "needCheckInternetIsAlive":Z
    .end local v25    # "ongoingId":I
    .end local v28    # "preRxPkts":J
    .end local v30    # "preRxbyte":J
    .end local v32    # "preTxBytes":J
    .end local v34    # "preTxPkts":J
    .end local v36    # "prevStreaming":I
    .end local v39    # "rxBytesPerPacket":I
    .end local v41    # "txBytesPerPacket":I
    :sswitch_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPollingStarted:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    const v4, 0x21035

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->removeMessages(I)V

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->setGoodRxStateNow(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mCumulativePoorRx:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mRxHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->quit()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->clear()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->access$15700(Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mMaybeUseStreaming:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSYNPacketOnly:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static {v4, v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12702(Lcom/android/server/wifi/WifiWatchdogStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$12802(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    goto/16 :goto_0

    :sswitch_3
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_48

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "[DNS_PING_RESULT_SPECIFIC]"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v18

    .local v18, "dns2Result":I
    const/4 v4, 0x2

    move/from16 v0, v18

    if-ne v0, v4, :cond_49

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v5, "wait until the responses about remained DNS Request arrive!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_49
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_4b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    :goto_f
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_4a

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPublicDnsAvailable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    goto/16 :goto_0

    :cond_4b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_f

    .end local v18    # "dns2Result":I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->checkDnsResult(III)I

    move-result v19

    .local v19, "dnsResult":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    if-eqz v4, :cond_4f

    const/4 v4, 0x2

    move/from16 v0, v19

    if-eq v0, v4, :cond_0

    const/4 v4, 0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_4d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    :goto_10
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_4c

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPublicDnsAvailable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mPublicDnsCheckProcess:Z

    goto/16 :goto_0

    :cond_4d
    const/4 v4, 0x4

    move/from16 v0, v19

    if-ne v0, v4, :cond_4e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/4 v5, 0x2

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcStep:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSingleDnsCheck:Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0xbb8

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->DEFAULT_URL_STRING:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$DnsCheck;->requestDnsQuerying(IIZLjava/lang/String;Z)Z

    goto/16 :goto_0

    :cond_4e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPublicDnsAvailable:Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_10

    :cond_4f
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v4

    if-eqz v4, :cond_50

    const-string v4, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DNS_PING_RESULT] skip : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    if-nez v4, :cond_0

    const/4 v4, 0x2

    move/from16 v0, v19

    if-eq v0, v4, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mDnsQueried:Z

    const/4 v4, 0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_51

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mSkipRemainingDnsResults:Z

    goto/16 :goto_0

    :cond_51
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v4

    if-eqz v4, :cond_52

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v5, "single DNS Checking FAILURE"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_52
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-wide/from16 v0, v26

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastQualityCheckTimeByActivity:J
    invoke-static {v4, v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$17302(Lcom/android/server/wifi/WifiWatchdogStateMachine;J)J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->readOngoingId()I

    move-result v4

    if-nez v4, :cond_53

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentQcFail:Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;
    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$9900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;

    move-result-object v4

    const/16 v5, 0x1e

    iput v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$QcFailHistory;->qcTriggerTemp:I

    :cond_53
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x21033 -> :sswitch_0
        0x21034 -> :sswitch_2
        0x21035 -> :sswitch_1
        0x50000 -> :sswitch_4
        0x50005 -> :sswitch_3
    .end sparse-switch
.end method

.method restartQCCancelledByScanOrDhcp()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mQCCancelledByScanOrDhcp:Z

    return-void
.end method

.method setGoodRxStateNow(J)V
    .locals 5
    .param p1, "now"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    const/16 v0, -0xc8

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    iput v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v1, "lose Good Rx status."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    if-le v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    :cond_3
    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxTime:J

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiWatchdogStateMachine.NetworkStatsAnalyzer"

    const-string v1, "obtain Good Rx status [rssi : %ddbm, rate : %dMbps]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRssi:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mGoodRxRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateLastDnsCheckTime()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$NetworkStatsAnalyzer;->mLastDnsCheckTime:J

    return-void
.end method
