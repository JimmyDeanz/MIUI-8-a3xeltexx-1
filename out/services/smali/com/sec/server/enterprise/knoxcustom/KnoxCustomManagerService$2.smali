.class Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "KnoxCustomManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->registerKnoxCustomReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;


# direct methods
.method constructor <init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 457
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    const-string/jumbo v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 460
    # getter for: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z
    invoke-static {}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    # getter for: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiEap:Z
    invoke-static {}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$500()Z

    move-result v1

    if-nez v1, :cond_2

    .line 462
    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    # getter for: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;
    invoke-static {}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$600()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;
    invoke-static {}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$700()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, p1, v2, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$800(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :goto_0
    const/4 v1, 0x0

    # setter for: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z
    invoke-static {v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$402(Z)Z

    .line 470
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 471
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "connected"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 472
    .local v0, "connected":Z
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-virtual {v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbNetState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    # invokes: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startStopUsbNet(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$1100(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;)V

    .line 476
    .end local v0    # "connected":Z
    :cond_1
    return-void

    .line 464
    :cond_2
    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    # getter for: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;
    invoke-static {}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$600()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiUsername:Ljava/lang/String;
    invoke-static {}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$900()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;
    invoke-static {}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$700()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, p1, v2, v3, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$1000(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
