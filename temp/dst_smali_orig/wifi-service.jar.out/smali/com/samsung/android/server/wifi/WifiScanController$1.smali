.class Lcom/samsung/android/server/wifi/WifiScanController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiScanController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/WifiScanController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/WifiScanController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/WifiScanController;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiScanController$1;->this$0:Lcom/samsung/android/server/wifi/WifiScanController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$1;->this$0:Lcom/samsung/android/server/wifi/WifiScanController;

    # getter for: Lcom/samsung/android/server/wifi/WifiScanController;->mIsRegisteredSMDListener:Z
    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiScanController;->access$000(Lcom/samsung/android/server/wifi/WifiScanController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$1;->this$0:Lcom/samsung/android/server/wifi/WifiScanController;

    # invokes: Lcom/samsung/android/server/wifi/WifiScanController;->isLocationEnabled()Z
    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiScanController;->access$100(Lcom/samsung/android/server/wifi/WifiScanController;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$1;->this$0:Lcom/samsung/android/server/wifi/WifiScanController;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiScanController;->unregisterSensorMonitor()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$1;->this$0:Lcom/samsung/android/server/wifi/WifiScanController;

    # invokes: Lcom/samsung/android/server/wifi/WifiScanController;->getPersistedAirplaneModeOn()Z
    invoke-static {v0}, Lcom/samsung/android/server/wifi/WifiScanController;->access$200(Lcom/samsung/android/server/wifi/WifiScanController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$1;->this$0:Lcom/samsung/android/server/wifi/WifiScanController;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiScanController;->unregisterSensorMonitor()V

    goto :goto_0
.end method
