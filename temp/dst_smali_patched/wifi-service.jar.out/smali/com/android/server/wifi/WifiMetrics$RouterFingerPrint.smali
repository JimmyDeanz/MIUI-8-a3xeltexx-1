.class Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;
.super Ljava/lang/Object;
.source "WifiMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RouterFingerPrint"
.end annotation


# instance fields
.field private mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

.field final synthetic this$0:Lcom/android/server/wifi/WifiMetrics;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;)Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    return-object v0
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiMetrics;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiMetrics;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    invoke-direct {v0}, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->-get1(Lcom/android/server/wifi/WifiMetrics;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    const-string v1, "mConnectionEvent.roamType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    iget v3, v3, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->roamType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mChannelInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    iget v3, v3, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDtim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    iget v3, v3, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->dtim:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAuthentication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    iget v3, v3, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    iget-boolean v3, v3, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRouterTechnology="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    iget v3, v3, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportsIpv6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    iget-boolean v3, v3, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->-get1(Lcom/android/server/wifi/WifiMetrics;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    iget-boolean v3, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v3, v1, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    iput v3, v1, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->dtim:I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->-get0(Lcom/android/server/wifi/WifiMetrics;)Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    move-result-object v1

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->-set1(Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->-get0(Lcom/android/server/wifi/WifiMetrics;)Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    const/4 v3, 0x1

    iput v3, v1, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I

    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->-get0(Lcom/android/server/wifi/WifiMetrics;)Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    move-result-object v0

    .local v0, "candidate":Landroid/net/wifi/ScanResult;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiMetrics;->-wrap0(Lcom/android/server/wifi/WifiMetrics;Landroid/net/wifi/ScanResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "candidate":Landroid/net/wifi/ScanResult;
    :cond_1
    monitor-exit v2

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->-get0(Lcom/android/server/wifi/WifiMetrics;)Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    const/4 v3, 0x3

    iput v3, v1, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->this$0:Lcom/android/server/wifi/WifiMetrics;

    invoke-static {v1}, Lcom/android/server/wifi/WifiMetrics;->-get0(Lcom/android/server/wifi/WifiMetrics;)Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$ConnectionEvent;->mRouterFingerPrint:Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;

    iget-object v1, v1, Lcom/android/server/wifi/WifiMetrics$RouterFingerPrint;->mRouterFingerPrintProto:Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;

    const/4 v3, 0x2

    iput v3, v1, Lcom/android/server/wifi/WifiMetricsProto$RouterFingerPrint;->authentication:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
