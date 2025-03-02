.class Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedOxygenState"
.end annotation


# instance fields
.field private mIbssRunning:Z

.field private mIntranetRunning:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 16355
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 16361
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$31000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 16363
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 16364
    .local v7, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$31000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    .line 16365
    .local v5, "la":Landroid/net/LinkAddress;
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 16366
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v8, v0, Ljava/net/Inet4Address;

    if-eqz v8, :cond_0

    .line 16367
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v8

    invoke-static {v0, v8}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v1

    .line 16368
    .local v1, "addrRoute":Ljava/net/InetAddress;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$300()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 16369
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 16370
    .local v4, "ipAddress":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adding route rule to local table "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 16372
    .end local v4    # "ipAddress":Ljava/lang/String;
    :cond_1
    new-instance v8, Landroid/net/RouteInfo;

    new-instance v9, Landroid/net/LinkAddress;

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v10

    invoke-direct {v9, v1, v10}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16377
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrRoute":Ljava/net/InetAddress;
    .end local v5    # "la":Landroid/net/LinkAddress;
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 16378
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/os/INetworkManagementService;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    .line 16379
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Landroid/os/INetworkManagementService;->appendInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16388
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :cond_3
    :goto_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$20400(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 16389
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 16390
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiConfigStore;->isIBSS(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 16391
    iput-boolean v12, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->mIbssRunning:Z

    .line 16392
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->showStatusBarOxygenIcon()V
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$41800(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 16393
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v8}, Lcom/android/server/wifi/WifiStateMachine;->startOxygenStateMachine()V

    .line 16396
    :cond_4
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v9

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->isUsingSamsungFlag(II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 16398
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$8300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 16399
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v8}, Lcom/android/server/wifi/WifiStateMachine;->access$8300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$16200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfoWithoutSwitch(Landroid/net/NetworkInfo;)V

    .line 16400
    iput-boolean v12, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->mIntranetRunning:Z

    .line 16402
    :cond_5
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;I)V
    invoke-static {v8, v9, v12}, Lcom/android/server/wifi/WifiStateMachine;->access$41900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;I)V

    .line 16406
    :goto_1
    return-void

    .line 16381
    :catch_0
    move-exception v6

    .line 16382
    .local v6, "re":Landroid/os/RemoteException;
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v9, "Fail to add routing info to local table"

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 16383
    .end local v6    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 16384
    .local v2, "e":Ljava/lang/IllegalStateException;
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v9, "Fail to add routing info to local table"

    invoke-virtual {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 16404
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_6
    iget-object v8, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendOxygenStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$42000(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public exit()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 16439
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->mIntranetRunning:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$8300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 16440
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$8300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$16200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfoWithoutSwitch(Landroid/net/NetworkInfo;)V

    .line 16441
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->mIntranetRunning:Z

    .line 16444
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16451
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$20400(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 16452
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->callResetTimer(Z)V
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$15400(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 16454
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$14900(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 16455
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->mIbssRunning:Z

    if-eqz v2, :cond_1

    .line 16456
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->stopOxygenStateMachine()V

    .line 16457
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->clearStatusBarOxygenIcon()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$42200(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 16458
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->mIbssRunning:Z

    .line 16461
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$5100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->isUsingSamsungFlag(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16463
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$29900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 16467
    :goto_1
    return-void

    .line 16445
    :catch_0
    move-exception v1

    .line 16446
    .local v1, "re":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Fail to remove routing info to local table"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 16447
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 16448
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Fail to remove routing info to local table"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 16465
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$14800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendOxygenStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$42000(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 16410
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 16432
    const/4 v0, 0x0

    .line 16434
    :goto_0
    return v0

    .line 16420
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$10800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$42100(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 16421
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x2000b

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    .line 16434
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 16410
    :sswitch_data_0
    .sparse-switch
        0x20056 -> :sswitch_1
        0x20160 -> :sswitch_1
        0x20161 -> :sswitch_1
        0x20162 -> :sswitch_1
        0x21015 -> :sswitch_1
        0x21016 -> :sswitch_1
        0x2400c -> :sswitch_0
    .end sparse-switch
.end method
