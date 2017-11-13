.class Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;
.super Landroid/content/BroadcastReceiver;
.source "KiesUsbObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KiesConnectivity/KiesUsbObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;


# direct methods
.method constructor <init>(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v11, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "connected"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .local v3, "bConnected":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "configured"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .local v2, "bConfigured":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "mtp"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .local v7, "bEnabled_MTP":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "mass_storage"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .local v1, "bCDFS":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "ptp"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .local v4, "bEnable_PTP":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "vzw_charging"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .local v5, "bEnable_VZW_charging":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "midi"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .local v6, "bEnable_midi":Z
    const/4 v9, -0x1

    .local v9, "usbMode":I
    const-string v11, "sys.usb.config"

    const-string v12, "none"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "config":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Common_EnableSUA"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$100()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getUsbMode() -> sys.usb.config : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$100()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getUsbMode() -> bCDFS: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    if-nez v11, :cond_1

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    if-eqz v11, :cond_1

    const-string v11, "mass_storage"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "mass_storage,adb"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    const/4 v10, 0x1

    .local v10, "usbState":I
    const/16 v9, 0x7d0

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->sendMsg(II)V
    invoke-static {v11, v10, v9}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$000(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;
    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;
    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->startCDFSEjectTimer()V

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string v12, "startCDFSEjectTimer"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "bCDFS":Z
    .end local v2    # "bConfigured":Z
    .end local v3    # "bConnected":Z
    .end local v4    # "bEnable_PTP":Z
    .end local v5    # "bEnable_VZW_charging":Z
    .end local v6    # "bEnable_midi":Z
    .end local v7    # "bEnabled_MTP":Z
    .end local v8    # "config":Ljava/lang/String;
    .end local v9    # "usbMode":I
    .end local v10    # "usbState":I
    :cond_1
    :goto_0
    return-void

    .restart local v1    # "bCDFS":Z
    .restart local v2    # "bConfigured":Z
    .restart local v3    # "bConnected":Z
    .restart local v4    # "bEnable_PTP":Z
    .restart local v5    # "bEnable_VZW_charging":Z
    .restart local v6    # "bEnable_midi":Z
    .restart local v7    # "bEnabled_MTP":Z
    .restart local v8    # "config":Ljava/lang/String;
    .restart local v9    # "usbMode":I
    :cond_2
    if-nez v3, :cond_3

    if-nez v2, :cond_3

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;
    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    const/4 v10, 0x0

    .restart local v10    # "usbState":I
    const/16 v9, 0x7d0

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->sendMsg(II)V
    invoke-static {v11, v10, v9}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$000(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;
    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string v12, "stopCDFSEjectTimer"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v10    # "usbState":I
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    if-eqz v7, :cond_4

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    if-eqz v11, :cond_1

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    const/4 v10, 0x0

    .restart local v10    # "usbState":I
    const/16 v9, 0x7d0

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->sendMsg(II)V
    invoke-static {v11, v10, v9}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$000(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;
    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;
    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string v12, "stopCDFSEjectTimer"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v10    # "usbState":I
    :cond_4
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    if-eqz v11, :cond_1

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    const/4 v10, 0x0

    .restart local v10    # "usbState":I
    const/16 v9, 0x7d0

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->sendMsg(II)V
    invoke-static {v11, v10, v9}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$000(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;
    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;
    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string v12, "stopCDFSEjectTimer"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v10    # "usbState":I
    :cond_5
    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    if-eqz v5, :cond_6

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    if-eqz v11, :cond_1

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    const/4 v10, 0x0

    .restart local v10    # "usbState":I
    const/16 v9, 0x7d0

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->sendMsg(II)V
    invoke-static {v11, v10, v9}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$000(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;
    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;
    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string v12, "stopCDFSEjectTimer"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v10    # "usbState":I
    :cond_6
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    if-eqz v6, :cond_1

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    if-eqz v11, :cond_1

    sget-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    const/4 v10, 0x0

    .restart local v10    # "usbState":I
    const/16 v9, 0x7d0

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->sendMsg(II)V
    invoke-static {v11, v10, v9}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$000(Lcom/android/server/KiesConnectivity/KiesUsbObserver;II)V

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;
    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$3;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->mKiesUsbManager:Lcom/android/server/KiesConnectivity/KiesUsbManager;
    invoke-static {v11}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)Lcom/android/server/KiesConnectivity/KiesUsbManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string v12, "stopCDFSEjectTimer"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
