.class Lcom/android/server/enterprise/wifi/WifiPolicy$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V
    .locals 0

    .prologue
    .line 3770
    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$3;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    .line 3773
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3774
    const-string/jumbo v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3776
    .local v1, "state":I
    const/4 v6, 0x3

    if-ne v1, v6, :cond_0

    .line 3781
    new-instance v3, Lcom/android/server/enterprise/wifi/WifiPolicy$3$1;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$3$1;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy$3;)V

    .line 3786
    .local v3, "taskToupdateConfiguredNetworks":Ljava/lang/Runnable;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3788
    .local v4, "threadToUpdateConfiguredNetworks":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 3807
    .end local v1    # "state":I
    .end local v3    # "taskToupdateConfiguredNetworks":Ljava/lang/Runnable;
    .end local v4    # "threadToUpdateConfiguredNetworks":Ljava/lang/Thread;
    :cond_0
    :goto_0
    return-void

    .line 3790
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3791
    const-string/jumbo v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 3793
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v8, :cond_0

    iget-object v6, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$3;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    # invokes: Lcom/android/server/enterprise/wifi/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$200(Lcom/android/server/enterprise/wifi/WifiPolicy;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->hasAnyActiveAdmin()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3796
    new-instance v2, Lcom/android/server/enterprise/wifi/WifiPolicy$3$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$3$2;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy$3;)V

    .line 3801
    .local v2, "taskToWpsBlockedNetworks":Ljava/lang/Runnable;
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3802
    .local v5, "threadToUpdateWpsBlockedNetworks":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 3804
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "taskToWpsBlockedNetworks":Ljava/lang/Runnable;
    .end local v5    # "threadToUpdateWpsBlockedNetworks":Ljava/lang/Thread;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3805
    # setter for: Lcom/android/server/enterprise/wifi/WifiPolicy;->isBootCompleted:Z
    invoke-static {v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->access$402(Z)Z

    goto :goto_0
.end method
