.class Lcom/samsung/android/server/wifi/SoftApStateMachine$4;
.super Landroid/content/BroadcastReceiver;
.source "SoftApStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SoftApStateMachine;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    iput-object v2, v3, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->isMobileApOn()Z
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$200(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const-string v3, "Wifi Connected, Check for Mobile Ap and Wifi Channel and Ip Subnet"

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$300(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->checkMobileApWifiIp()Z
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$400(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const-string v3, "IP Subnet of MobileAp needs to be modified. So Reset Mobile Ap"

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$500(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.intent.action.WIFIAP_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "resetIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$600(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v1    # "resetIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/SoftApStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const-string v3, "Wifi got Disconnected, Send provisioning intent"

    # invokes: Lcom/samsung/android/server/wifi/SoftApStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$700(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.START_PROVISIONING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "provisionIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$4;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/SoftApStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->access$600(Lcom/samsung/android/server/wifi/SoftApStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
