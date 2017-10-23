.class final Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;
.super Ljava/lang/Object;
.source "SmartWifiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiSignalStrengthHistory"
.end annotation


# static fields
.field private static final MAX_READINGS:I = 0x14


# instance fields
.field private mDefaultWifiBadDbValue:I

.field private mDefaultWifiGoodDbValue:I

.field private mDefaultWifiLevel:I

.field private mIndex:I

.field private mPingThread:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSignalStrengthHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthReading;",
            ">;"
        }
    .end annotation
.end field

.field private mWeakWifiLevel:I

.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 972
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 975
    iput v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mIndex:I

    .line 976
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    .line 979
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mPingThread:Ljava/util/concurrent/Future;

    .line 980
    iput v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mWeakWifiLevel:I

    .line 981
    iput v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mDefaultWifiLevel:I

    .line 982
    iput v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mDefaultWifiGoodDbValue:I

    .line 983
    iput v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mDefaultWifiBadDbValue:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Lcom/sec/epdg/smartwifi/SmartWifiAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .param p2, "x1"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter$1;

    .prologue
    .line 972
    invoke-direct {p0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    .prologue
    .line 972
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->getLastKnownReadingLevel()I

    move-result v0

    return v0
.end method

.method private declared-synchronized getLastKnownReading()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 1192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthReading;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthReading;->getSignalStrength()Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getLastKnownReadingLevel()I
    .locals 1

    .prologue
    .line 1185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1186
    const/4 v0, 0x0

    .line 1188
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->getLastKnownReading()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isWifiSignalDegraded(II)Z
    .locals 5
    .param p1, "lastStrength"    # I
    .param p2, "currentStrength"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1122
    const-string v2, "[SMARTWIFI]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWifiSignalDegraded: lastStrength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentStrength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1126
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2500()I

    move-result v2

    if-ge p2, v2, :cond_1

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2400()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 1143
    :cond_0
    :goto_0
    return v0

    .line 1129
    :cond_1
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiHandoverDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3300()I

    move-result v2

    if-gt p2, v2, :cond_2

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiHandoverDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3300()I

    move-result v2

    if-le p1, v2, :cond_2

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2500()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 1132
    const-string v1, "[SMARTWIFI]"

    const-string/jumbo v2, "isWifiSignalDegraded: Wifi rssi further dropped till handover DB value"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1136
    goto :goto_0

    .line 1139
    :cond_3
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2500()I

    move-result v2

    if-ge p2, v2, :cond_4

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2400()I

    move-result v2

    if-ge p1, v2, :cond_0

    :cond_4
    move v0, v1

    .line 1143
    goto :goto_0
.end method

.method private isWifiSignalUpgraded(II)Z
    .locals 3
    .param p1, "lastStrength"    # I
    .param p2, "currentStrength"    # I

    .prologue
    .line 1097
    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isWifiSignalUpgraded: lastStrength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentStrength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2400()I

    move-result v0

    if-lt p2, v0, :cond_1

    if-eqz p2, :cond_1

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2500()I

    move-result v0

    if-lt p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiSignalUpgradedToL2WHandoverThreshold(I)Z
    .locals 4
    .param p1, "currentStrength"    # I

    .prologue
    .line 1105
    const/4 v0, 0x0

    .line 1106
    .local v0, "result":Z
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v1, :cond_1

    .line 1107
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isL2WHandoverProfilingRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mL2WHandoverRssi:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3200()I

    move-result v1

    if-lt p1, v1, :cond_0

    if-eqz p1, :cond_0

    .line 1109
    const-string v1, "[SMARTWIFI]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "L2WHandoverProfiling is running and wifi is now better then handover RSSI currentStrength: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mL2WHandoverRssi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mL2WHandoverRssi:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3200()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const/4 v0, 0x1

    .line 1118
    :goto_0
    return v0

    .line 1113
    :cond_0
    const-string v1, "[SMARTWIFI]"

    const-string v2, "No need to send L2WHandoverProfiling runnable"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1116
    :cond_1
    const-string v1, "[SMARTWIFI]"

    const-string v2, "Wifi threshold based handovers are disabled"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized runPingIfNeeded()V
    .locals 3

    .prologue
    .line 1015
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mPingThread:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    .line 1017
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread;

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mAddrToReach:Ljava/net/InetAddress;
    invoke-static {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$900(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/net/InetAddress;)V

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread;->run()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mPingThread:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    :goto_0
    monitor-exit p0

    return-void

    .line 1019
    :cond_0
    :try_start_1
    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ping already running : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1015
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addInitialReading(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "sigstr"    # Ljava/lang/Integer;

    .prologue
    .line 1039
    monitor-enter p0

    :try_start_0
    const-string v0, "[SMARTWIFI]"

    const-string v1, "Initial wifi entry added"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthReading;

    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthReading;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Integer;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    monitor-exit p0

    return-void

    .line 1039
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addReading(Ljava/lang/Integer;)V
    .locals 7
    .param p1, "sigstr"    # Ljava/lang/Integer;

    .prologue
    .line 1045
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->getLastKnownReadingLevel()I

    move-result v1

    .line 1046
    .local v1, "lastStrength":I
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1047
    .local v2, "size":I
    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    .line 1049
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1050
    const-string v3, "[SMARTWIFI]"

    const-string/jumbo v4, "wifi oldest entry removed"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    :cond_0
    const-string v3, "[SMARTWIFI]"

    const-string/jumbo v4, "wifi entry added"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthReading;

    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v6, 0x0

    invoke-direct {v4, v5, p1, v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthReading;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Integer;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1056
    .local v0, "currentStrength":I
    invoke-direct {p0, v1, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->isWifiSignalUpgraded(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1057
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v4, 0x0

    # setter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mMetHoThreshold:Z
    invoke-static {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2302(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Z)Z

    .line 1059
    const-string v3, "[SMARTWIFI]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wifi signal is upgraded : (lastStrength"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : mWeakWifiLevel"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mWeakWifiLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : mWifiGoodDbValue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2400()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : mWifiBadDbValue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2500()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : currentStrength)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOn:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2600(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOff:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2700(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;

    move-result-object v5

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startProfilingTask(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    invoke-static {v3, v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2800(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1067
    :cond_2
    :try_start_1
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->isWifiSignalUpgradedToL2WHandoverThreshold(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1068
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableL2WHandoverOn:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2900(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;

    move-result-object v4

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postRunnableToEpdg(Ljava/lang/Runnable;)V
    invoke-static {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1045
    .end local v0    # "currentStrength":I
    .end local v1    # "lastStrength":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1070
    .restart local v0    # "currentStrength":I
    .restart local v1    # "lastStrength":I
    .restart local v2    # "size":I
    :cond_3
    :try_start_2
    const-string v3, "[SMARTWIFI]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No need to run ping : (lastStrength"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : mWeakWifiLevel"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mWeakWifiLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : mWifiGoodDbValue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2400()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : mWifiBadDbValue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2500()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : currentStrength)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    invoke-direct {p0, v1, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->isWifiSignalDegraded(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1077
    const-string v3, "[SMARTWIFI]"

    const-string v4, "Wifi entered into weak zone again"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isVoLTEHandoverReady()Z
    invoke-static {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3100(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1080
    const-string v3, "[SMARTWIFI]"

    const-string v4, "But ignore W2L HO in non-LTE NW"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setHandoverThresholdMet(Z)V

    .line 1082
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v4, 0x1

    # setter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mMetHoThreshold:Z
    invoke-static {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2302(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Z)Z

    goto/16 :goto_0

    .line 1084
    :cond_5
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v4, 0x0

    # setter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mMetHoThreshold:Z
    invoke-static {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2302(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Z)Z

    .line 1085
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOff:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2700(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;

    move-result-object v4

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postRunnableToEpdg(Ljava/lang/Runnable;)V
    invoke-static {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$3000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1088
    :cond_6
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getHandoverThresholdMet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1089
    const-string v3, "[SMARTWIFI]"

    const-string v4, "Need to clear handover threshold"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setHandoverThresholdMet(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized clearReadings()V
    .locals 2

    .prologue
    .line 1149
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1150
    const-string v0, "[SMARTWIFI]"

    const-string/jumbo v1, "wifi history cleared"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mPingThread:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 1155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mPingThread:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    :cond_1
    monitor-exit p0

    return-void

    .line 1149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultWeakWifiLevel()I
    .locals 1

    .prologue
    .line 994
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mDefaultWifiLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultWifiBadDbValue()I
    .locals 1

    .prologue
    .line 1011
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mDefaultWifiBadDbValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultWifiGoodDbValue()I
    .locals 1

    .prologue
    .line 1007
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mDefaultWifiGoodDbValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPingResult()Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 1024
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->runPingIfNeeded()V

    .line 1025
    new-instance v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    .local v2, "ret":Ljava/lang/Boolean;
    :try_start_1
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mPingThread:Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1033
    :goto_0
    :try_start_2
    const-string v3, "[SMARTWIFI]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wifi Ping thread returned : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mPingThread:Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1035
    monitor-exit p0

    return-object v2

    .line 1028
    :catch_0
    move-exception v1

    .line 1029
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "[SMARTWIFI]"

    const-string v4, "InterruptedException Wifi getPingResult"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1024
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "ret":Ljava/lang/Boolean;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1030
    .restart local v2    # "ret":Ljava/lang/Boolean;
    :catch_1
    move-exception v1

    .line 1031
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_4
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized getWeakWifiLevel()I
    .locals 1

    .prologue
    .line 986
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mWeakWifiLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isWifiSignalGoodEnough()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1160
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mSignalStrengthHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1162
    const-string v3, "[SMARTWIFI]"

    const-string/jumbo v4, "not enough wifi history"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    const/4 v3, 0x1

    .line 1181
    :goto_0
    monitor-exit p0

    return v3

    .line 1165
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->getLastKnownReading()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1166
    .local v2, "wifiSignal":I
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2500()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 1167
    .local v0, "badWifiValue":I
    # getter for: Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I
    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->access$2400()I

    move-result v1

    .line 1169
    .local v1, "goodWifiValue":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1170
    if-gt v2, v0, :cond_2

    .line 1171
    const-string v4, "[SMARTWIFI]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wifi too weak to handover"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1160
    .end local v0    # "badWifiValue":I
    .end local v1    # "goodWifiValue":I
    .end local v2    # "wifiSignal":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1175
    .restart local v0    # "badWifiValue":I
    .restart local v1    # "goodWifiValue":I
    .restart local v2    # "wifiSignal":I
    :cond_1
    if-ge v2, v1, :cond_2

    .line 1176
    :try_start_2
    const-string v4, "[SMARTWIFI]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wifi too weak to handover"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1180
    :cond_2
    const-string v3, "[SMARTWIFI]"

    const-string/jumbo v4, "wifi strong enough"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->getPingResult()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    goto :goto_0
.end method

.method public declared-synchronized setDefaultWeakWifiLevel(I)V
    .locals 1
    .param p1, "wifiLevel"    # I

    .prologue
    .line 998
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mDefaultWifiLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    monitor-exit p0

    return-void

    .line 998
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultWifiDbValue(II)V
    .locals 1
    .param p1, "goodValue"    # I
    .param p2, "badValue"    # I

    .prologue
    .line 1002
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mDefaultWifiGoodDbValue:I

    .line 1003
    iput p2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mDefaultWifiBadDbValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    monitor-exit p0

    return-void

    .line 1002
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWeakWifiLevel(I)V
    .locals 1
    .param p1, "wifiLevel"    # I

    .prologue
    .line 990
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->mWeakWifiLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    monitor-exit p0

    return-void

    .line 990
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
