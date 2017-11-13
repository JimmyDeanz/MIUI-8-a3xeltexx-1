.class Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;
.super Lcom/android/internal/util/State;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectingOSUSP"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 0

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1274
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    .line 1275
    const-string v1, "HS20StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    const-string v1, "HS20StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMD_START_OSU try to connect to network with config "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v4, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1278
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1279
    .local v0, "netid":I
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 1280
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0x1b65

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1284
    const/4 v1, 0x0

    .line 1285
    .local v1, "bRetVal":Z
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1328
    :goto_0
    return v1

    .line 1287
    :sswitch_0
    const-string v2, "HS20StateMachine"

    const-string v3, "CMD_START_REMEDIATION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V

    .line 1289
    const/4 v1, 0x1

    .line 1290
    goto :goto_0

    .line 1292
    :sswitch_1
    const-string v2, "HS20StateMachine"

    const-string v3, "CMD_START_POLICY_REMEDIATION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V

    .line 1294
    const/4 v1, 0x1

    .line 1295
    goto :goto_0

    .line 1297
    :sswitch_2
    const-string v2, "HS20StateMachine"

    const-string v3, "CMD_START_SUBSCRIPTION_REMEDIATION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V

    .line 1299
    const/4 v1, 0x1

    .line 1300
    goto :goto_0

    .line 1302
    :sswitch_3
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v5, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    .line 1303
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->selectedSP:Landroid/net/wifi/hs20/WifiHs20OsuProvider;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->getMethodType()Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    move-result-object v0

    .line 1304
    .local v0, "accessProtocol":Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;
    const-string v2, "HS20StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_START_PROVISIONING access Protocol "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    sget-object v2, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;->OMADM:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;->OMADM_SOAP:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    if-ne v0, v2, :cond_1

    .line 1307
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v5, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    .line 1313
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mEstablishingTLSState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1314
    const/4 v1, 0x1

    .line 1315
    goto :goto_0

    .line 1308
    :cond_1
    sget-object v2, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;->SOAP:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    if-eq v0, v2, :cond_2

    sget-object v2, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;->SOAP_OMADM:Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    if-ne v0, v2, :cond_3

    .line 1310
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v6, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    goto :goto_1

    .line 1312
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v2, v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1317
    .end local v0    # "accessProtocol":Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;
    :sswitch_4
    const-string v2, "HS20StateMachine"

    const-string v3, "CMD_HOTSPOT20_DISABLE "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v2, v7}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    .line 1319
    const/4 v1, 0x1

    .line 1320
    goto/16 :goto_0

    .line 1322
    :sswitch_5
    const-string v2, "HS20StateMachine"

    const-string v3, "CMD_ABORT_PROVISIONING "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v6, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    .line 1324
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ConnectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1325
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1285
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b59 -> :sswitch_3
        0x1b5a -> :sswitch_0
        0x1b65 -> :sswitch_5
        0x1b72 -> :sswitch_4
        0x1b75 -> :sswitch_1
        0x1b76 -> :sswitch_2
    .end sparse-switch
.end method
