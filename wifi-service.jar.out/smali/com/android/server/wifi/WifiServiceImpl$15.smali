.class Lcom/android/server/wifi/WifiServiceImpl$15;
.super Landroid/telephony/PhoneStateListener;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .prologue
    .line 5610
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$15;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    const/16 v6, 0xd

    .line 5612
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDataConnectionStateChanged: state -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", networkType - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5614
    const-string v3, "VZW"

    sget-object v4, Lcom/android/server/wifi/WifiServiceImpl;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5615
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$15;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiApEnabledState()I

    move-result v2

    .line 5616
    .local v2, "wifiApState":I
    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    if-ne v2, v6, :cond_2

    .line 5619
    :cond_0
    const/4 v1, 0x5

    .line 5621
    .local v1, "maxClientNum":I
    if-ne p2, v6, :cond_1

    .line 5622
    const/16 v1, 0xa

    .line 5626
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$15;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImpl;->access$6200(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/os/INetworkManagementService;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/os/INetworkManagementService;->setMaxClient(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5639
    .end local v1    # "maxClientNum":I
    .end local v2    # "wifiApState":I
    :cond_2
    :goto_0
    return-void

    .line 5627
    .restart local v1    # "maxClientNum":I
    .restart local v2    # "wifiApState":I
    :catch_0
    move-exception v0

    .line 5628
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 5643
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 5644
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5645
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5655
    :cond_0
    :goto_0
    return-void

    .line 5647
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$15;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5648
    const-string v0, "WifiService"

    const-string v1, "[FCC]STATE_OUT_OF_SERVICE & Airplane off, setFccChannel(0)!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5649
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$15;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setFccChannel(I)V

    goto :goto_0

    .line 5645
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
