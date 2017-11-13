.class Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiMaliciousHotspotDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiMaliciousHotspotDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    iget-object v7, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v7}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v7

    # setter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mScanResults:Ljava/util/List;
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$002(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/util/List;)Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$200(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$200(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->checkKarmaApInScanResult()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "DhcpSession"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "mDhcpSessionState":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v6, "complete"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->roamingStarted:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$300()Z

    move-result v6

    if-eqz v6, :cond_4

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$400()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "WifiMHD"

    const-string v7, "Roaming - DhcpSession is complete, restart detection."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->isEnterpriseAP()Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$500(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->startArpSpoofingDetection()V

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->startSslStripDetection()V

    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$200(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$200(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->sendDelayedPartialScan()V

    :cond_4
    # setter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->roamingStarted:Z
    invoke-static {v9}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$302(Z)Z

    goto :goto_0

    :cond_5
    const-string v6, "start"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$400()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "WifiMHD"

    const-string v7, "Roaming - DhcpSession begins, stop detection."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->stopArpSpoofingDetection()V

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->stopSslStripDetection()V

    const/4 v6, 0x1

    # setter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->roamingStarted:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$302(Z)Z

    goto :goto_0

    .end local v3    # "mDhcpSessionState":Ljava/lang/String;
    :cond_7
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v7, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string v6, "wifiInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiInfo;

    # setter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v7, v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$602(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    iget-object v7, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string v6, "linkProperties"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/LinkProperties;

    # setter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v7, v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$702(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->getWifiManager()Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$800(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$2;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$600(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$600(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    .local v1, "bssid":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mGsimLoggingEnabled:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$900(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$200(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$200(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->getEnabled()I

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCachedGsimLog:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1000(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCachedGsimLog:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1000(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "MHDK - DETECTED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v7}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$600(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_8

    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string v7, "MHDK"

    const-string v8, "CONNECTEDO"

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendGsimData(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mCachedGsimLog:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1000(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "MHDK - DETECTED/CONNECTED"

    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_8
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v6, v1}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->checkForMaliciousHotspotAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v6, v1, v9, v9}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->handleMaliciousHotspotDetection(Ljava/lang/String;II)V

    goto/16 :goto_0

    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_9
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const-string v7, "MHDK"

    const-string v8, "CONNECTEDS"

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->sendGsimData(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1100(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "bssid":Ljava/lang/String;
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_a
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$200(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$200(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->sendDelayedPartialScan()V

    :cond_b
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # invokes: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->isEnterpriseAP()Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$500(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->startSslStripDetection()V

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->startArpSpoofingDetection()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->stopSslStripDetection()V

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->stopArpSpoofingDetection()V

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v9}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->notifyMaliciousHotspotDetected(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_c
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "wifi_state"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .local v5, "state":I
    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    const/16 v7, 0x64

    new-array v7, v7, [Ljava/lang/String;

    # setter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApList:[Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1202(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # setter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mMaliciousApListIndex:I
    invoke-static {v6, v9}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1302(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;I)I

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$200(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$200(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->mKarmaApCandidate:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mKarmaApDetector:Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$200(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$KarmaApDetector;->setSpecialSsid()V

    goto/16 :goto_0

    .end local v5    # "state":I
    :cond_d
    const-string v6, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1400(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    iget-object v7, p0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector$1;->this$0:Lcom/android/server/wifi/WifiMaliciousHotspotDetector;

    # getter for: Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->access$1400(Lcom/android/server/wifi/WifiMaliciousHotspotDetector;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->setCountryIso(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
