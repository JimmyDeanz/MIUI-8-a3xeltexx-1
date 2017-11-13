.class Lcom/android/server/wifi/WifiStateMachine$16;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$16;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x7

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$16;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$2700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$16;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$2800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$16;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$2900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$16;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$16;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$3100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$16;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    if-ne v4, v5, :cond_4

    :cond_0
    const-string v4, "networkType"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, "type":I
    if-eq v3, v7, :cond_1

    if-ne v3, v6, :cond_4

    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$16;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$3300(Lcom/android/server/wifi/WifiStateMachine;)V

    const/4 v2, 0x1

    .local v2, "restoreWifiConnection":Z
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$16;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .local v1, "ethernetInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$16;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .local v0, "bluetoothInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x0

    :cond_3
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$16;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$16;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiStateMachine;->reconnectCommand()V

    .end local v0    # "bluetoothInfo":Landroid/net/NetworkInfo;
    .end local v1    # "ethernetInfo":Landroid/net/NetworkInfo;
    .end local v2    # "restoreWifiConnection":Z
    .end local v3    # "type":I
    :cond_4
    return-void
.end method
