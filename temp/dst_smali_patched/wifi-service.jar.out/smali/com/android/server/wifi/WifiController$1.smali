.class Lcom/android/server/wifi/WifiController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0xe

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.samsung.android.net.wifi.WIFI_MHS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_0
    const-string v3, "com.samsung.android.net.wifi.softap_interface"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_1
    const-string v3, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x26005

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    iput-object v3, v4, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    goto :goto_0

    :cond_4
    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "wifi_state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, "state":I
    if-ne v2, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "WifiControllerSoftAP start failed"

    # invokes: Lcom/android/server/wifi/WifiController;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiController;->access$400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600d

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .end local v2    # "state":I
    :cond_5
    const-string v3, "android.net.wifi.ERROR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "errorCode"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, "errorCode":I
    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x26014

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .end local v1    # "errorCode":I
    :cond_6
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/wifi/WifiController;->isShutDown:Z
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiController;->access$502(Lcom/android/server/wifi/WifiController;Z)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v4, "KSR shutdown intent received!!"

    # invokes: Lcom/android/server/wifi/WifiController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiController;->access$600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto :goto_0
.end method
