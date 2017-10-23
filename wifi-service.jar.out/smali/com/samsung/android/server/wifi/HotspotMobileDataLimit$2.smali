.class Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;
.super Landroid/telephony/PhoneStateListener;
.source "HotspotMobileDataLimit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "networktype"    # I

    .prologue
    const/4 v3, 0x1

    .line 65
    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "HotspotMobileDataLimit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", networktype : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # setter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isDataConnected:Z
    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$202(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Z)Z

    .line 69
    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isStarted:Z
    invoke-static {v0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$300(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # setter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isAgain:Z
    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$402(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Z)Z

    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$600(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_mobile_data_usage_value"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mResumeData:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$502(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->iface:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$800(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v2

    # setter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mBaseTxBytes:J
    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$702(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;J)J

    .line 73
    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->iface:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$800(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v2

    # setter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mBaseRxBytes:J
    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$902(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;J)J

    .line 74
    const-string v0, "HotspotMobileDataLimit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data change to ON, get current TxBytes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mBaseTxBytes:J
    invoke-static {v2}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$700(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RxBytes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mBaseRxBytes:J
    invoke-static {v2}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$900(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;
    invoke-static {v0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$1000(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;
    invoke-static {v0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$1000(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->resume()V

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    if-nez p1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->isDataConnected:Z
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$202(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Z)Z

    .line 81
    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;
    invoke-static {v0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$1000(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->isRunning()Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 82
    iget-object v0, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$2;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mApData:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;
    invoke-static {v0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$1000(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$CountApData;->pause()V

    goto :goto_0
.end method
