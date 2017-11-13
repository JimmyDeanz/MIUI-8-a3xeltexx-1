.class Lcom/samsung/android/server/wifi/SensorMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "SensorMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SensorMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SensorMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SensorMonitor;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SensorMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SensorMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SensorMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SensorMonitor;

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/server/wifi/SensorMonitor;->updateConnection(IZ)V

    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SensorMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SensorMonitor;

    invoke-virtual {v4, v6, v6}, Lcom/samsung/android/server/wifi/SensorMonitor;->updateConnection(IZ)V

    goto :goto_0

    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_2
    const-string v4, "com.samsung.android.net.wifi.NETWORK_OXYGEN_STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .restart local v1    # "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SensorMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SensorMonitor;

    invoke-virtual {v4, v5, v7}, Lcom/samsung/android/server/wifi/SensorMonitor;->updateConnection(IZ)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SensorMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SensorMonitor;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/server/wifi/SensorMonitor;->updateConnection(IZ)V

    goto :goto_0

    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_4
    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SensorMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SensorMonitor;

    invoke-virtual {v4, v7, v7}, Lcom/samsung/android/server/wifi/SensorMonitor;->updateConnection(IZ)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SensorMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SensorMonitor;

    invoke-virtual {v4, v7, v6}, Lcom/samsung/android/server/wifi/SensorMonitor;->updateConnection(IZ)V

    goto :goto_0

    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_6
    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "wifi_state"

    const/16 v5, 0xe

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, "wifiApState":I
    const/16 v4, 0xd

    if-ne v3, v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SensorMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SensorMonitor;

    invoke-virtual {v4, v8, v7}, Lcom/samsung/android/server/wifi/SensorMonitor;->updateConnection(IZ)V

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SensorMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SensorMonitor;

    invoke-virtual {v4, v8, v6}, Lcom/samsung/android/server/wifi/SensorMonitor;->updateConnection(IZ)V

    goto :goto_0
.end method
