.class Lcom/android/server/location/GpsLocationProvider_samsung$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "GpsLocationProvider_samsung.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider_samsung;->provideSuplFqdn(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider_samsung;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider_samsung;)V
    .locals 0

    .prologue
    .line 1584
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 9
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 1587
    const-string v6, "GpsLocationProvider_ex"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mNetworkCallback.onAvailable() network: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :try_start_0
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->suplFqdn:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$200(Lcom/android/server/location/GpsLocationProvider_samsung;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v7

    # setter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mResolveAddrs:[Ljava/net/InetAddress;
    invoke-static {v6, v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$102(Lcom/android/server/location/GpsLocationProvider_samsung;[Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    .line 1591
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/net/InetAddress;

    # setter for: Lcom/android/server/location/GpsLocationProvider_samsung;->retAddr:[Ljava/net/InetAddress;
    invoke-static {v6, v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$302(Lcom/android/server/location/GpsLocationProvider_samsung;[Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    .line 1592
    const/4 v2, 0x0

    .local v2, "flag_v4_set":Z
    const/4 v3, 0x0

    .line 1594
    .local v3, "flag_v6_set":Z
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mResolveAddrs:[Ljava/net/InetAddress;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$100(Lcom/android/server/location/GpsLocationProvider_samsung;)[Ljava/net/InetAddress;

    move-result-object v6

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 1595
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mResolveAddrs:[Ljava/net/InetAddress;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$100(Lcom/android/server/location/GpsLocationProvider_samsung;)[Ljava/net/InetAddress;

    move-result-object v6

    aget-object v6, v6, v0

    instance-of v6, v6, Ljava/net/Inet6Address;

    if-eqz v6, :cond_4

    .line 1596
    if-nez v3, :cond_0

    .line 1597
    const/4 v3, 0x1

    .line 1598
    const-string v6, "GpsLocationProvider_ex"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got IPv6 InetAddress : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mResolveAddrs:[Ljava/net/InetAddress;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$100(Lcom/android/server/location/GpsLocationProvider_samsung;)[Ljava/net/InetAddress;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->retAddr:[Ljava/net/InetAddress;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$300(Lcom/android/server/location/GpsLocationProvider_samsung;)[Ljava/net/InetAddress;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mResolveAddrs:[Ljava/net/InetAddress;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$100(Lcom/android/server/location/GpsLocationProvider_samsung;)[Ljava/net/InetAddress;

    move-result-object v8

    aget-object v8, v8, v0

    aput-object v8, v6, v7

    .line 1606
    :cond_0
    :goto_1
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 1610
    :cond_1
    const/4 v4, 0x0

    .line 1611
    .local v4, "resInetAddress":Ljava/net/InetAddress;
    if-eqz v2, :cond_6

    .line 1612
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->retAddr:[Ljava/net/InetAddress;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$300(Lcom/android/server/location/GpsLocationProvider_samsung;)[Ljava/net/InetAddress;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v4, v6, v7

    .line 1618
    :goto_2
    const-string v6, "GpsLocationProvider_ex"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DNS resolve result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    .line 1621
    :cond_2
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    iget-object v6, v6, Lcom/android/server/location/GpsLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v4}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v5

    .line 1625
    .local v5, "result":Z
    if-nez v5, :cond_8

    .line 1626
    const-string v6, "GpsLocationProvider_ex"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error requesting route to host: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :goto_3
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/location/GpsLocationProvider_samsung;->native_agps_set_supl_host_ip(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$400(Lcom/android/server/location/GpsLocationProvider_samsung;Ljava/lang/String;)V

    .line 1636
    .end local v0    # "count":I
    .end local v2    # "flag_v4_set":Z
    .end local v3    # "flag_v6_set":Z
    .end local v4    # "resInetAddress":Ljava/net/InetAddress;
    .end local v5    # "result":Z
    :cond_3
    :goto_4
    return-void

    .line 1601
    .restart local v0    # "count":I
    .restart local v2    # "flag_v4_set":Z
    .restart local v3    # "flag_v6_set":Z
    :cond_4
    if-nez v2, :cond_0

    .line 1602
    const/4 v2, 0x1

    .line 1603
    const-string v6, "GpsLocationProvider_ex"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got IPv4 InetAddress : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mResolveAddrs:[Ljava/net/InetAddress;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$100(Lcom/android/server/location/GpsLocationProvider_samsung;)[Ljava/net/InetAddress;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->retAddr:[Ljava/net/InetAddress;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$300(Lcom/android/server/location/GpsLocationProvider_samsung;)[Ljava/net/InetAddress;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->mResolveAddrs:[Ljava/net/InetAddress;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$100(Lcom/android/server/location/GpsLocationProvider_samsung;)[Ljava/net/InetAddress;

    move-result-object v8

    aget-object v8, v8, v0

    aput-object v8, v6, v7
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1632
    .end local v0    # "count":I
    .end local v2    # "flag_v4_set":Z
    .end local v3    # "flag_v6_set":Z
    :catch_0
    move-exception v1

    .line 1633
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, "UnknownHostException occured"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_4

    .line 1594
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "count":I
    .restart local v2    # "flag_v4_set":Z
    .restart local v3    # "flag_v6_set":Z
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1613
    .restart local v4    # "resInetAddress":Ljava/net/InetAddress;
    :cond_6
    if-eqz v3, :cond_7

    .line 1614
    :try_start_1
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider_samsung$2;->this$0:Lcom/android/server/location/GpsLocationProvider_samsung;

    # getter for: Lcom/android/server/location/GpsLocationProvider_samsung;->retAddr:[Ljava/net/InetAddress;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->access$300(Lcom/android/server/location/GpsLocationProvider_samsung;)[Ljava/net/InetAddress;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v4, v6, v7

    goto/16 :goto_2

    .line 1616
    :cond_7
    const-string v6, "GpsLocationProvider_ex"

    const-string v7, "DNS resolve failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1628
    .restart local v5    # "result":Z
    :cond_8
    const-string v6, "GpsLocationProvider_ex"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Successfully requested route to host: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method
