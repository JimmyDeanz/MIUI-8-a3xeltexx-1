.class Lcom/android/server/connectivity/Tethering$1;
.super Landroid/telephony/PhoneStateListener;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/IConnectivityManager;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    .local v3, "wifiApState":I
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .local v1, "mobileDataState":I
    const/16 v4, 0xb

    if-eq v3, v4, :cond_0

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDataBlockedDuringCall : TelephonyManager DataState - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CallState - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    if-ne p1, v7, :cond_3

    :cond_2
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->isApSuspended:Z
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    # setter for: Lcom/android/server/connectivity/Tethering;->isApSuspended:Z
    invoke-static {v4, v7}, Lcom/android/server/connectivity/Tethering;->access$202(Lcom/android/server/connectivity/Tethering;Z)Z

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->suspendWifiApIcon(Z)V
    invoke-static {v4, v7}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;Z)V

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->clearTetheredVendorNotification()V
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)V

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    const v5, 0x1080777

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;I)V

    :cond_3
    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->isApSuspended:Z
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    # setter for: Lcom/android/server/connectivity/Tethering;->isApSuspended:Z
    invoke-static {v4, v8}, Lcom/android/server/connectivity/Tethering;->access$202(Lcom/android/server/connectivity/Tethering;Z)Z

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->suspendWifiApIcon(Z)V
    invoke-static {v4, v8}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;Z)V

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->clearTetheredVendorNotification()V
    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)V

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    const v5, 0x10807df

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V
    invoke-static {v4, v5}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;I)V

    goto :goto_0
.end method
