.class Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;
.super Landroid/os/Handler;
.source "KiesUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KiesConnectivity/KiesUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KiesUsbManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;


# direct methods
.method constructor <init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    .line 366
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 367
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 371
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 433
    const-string v2, "KiesUsbManager"

    const-string v3, "SCSI -> unknow"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 374
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbManager;->setCDFSInsert()V
    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$300(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    .line 375
    const-string v2, "KiesUsbManager"

    const-string v3, "KiesUsbManagerHandler -> UsbMode.online"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v1

    .line 439
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 380
    .end local v1    # "e":Ljava/lang/Exception;
    :sswitch_1
    :try_start_1
    const-string v2, "KiesUsbManager"

    const-string v3, "KiesUsbManagerHandler -> UsbMode.offline"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    :sswitch_2
    const-string v2, "KiesUsbManager"

    const-string v3, "KiesUsbManagerHandler -> UsbMode.time_stop"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-virtual {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    goto :goto_0

    .line 393
    :sswitch_3
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$400(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    const-string v3, "acm"

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 394
    .local v0, "bEnabled_ACM":Z
    if-nez v0, :cond_0

    .line 395
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-virtual {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    .line 396
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    invoke-virtual {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->startCDFSEjectTimer()V

    .line 397
    const-string v2, "KiesUsbManager"

    const-string v3, "KiesUsbManagerHandler -> UsbMode.time_reset"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 403
    .end local v0    # "bEnabled_ACM":Z
    :sswitch_4
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$400(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    const-string v3, "acm"

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 404
    .restart local v0    # "bEnabled_ACM":Z
    if-nez v0, :cond_0

    .line 405
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$400(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    const-string/jumbo v3, "mass_storage,acm"

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 406
    const-string v2, "KiesUsbManager"

    const-string v3, "Enabled_ACM -> mass_storage,acm"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    .end local v0    # "bEnabled_ACM":Z
    :sswitch_5
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbManager;->setUsbCurrentChargingMode()V
    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$500(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    goto :goto_0

    .line 418
    :sswitch_6
    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbManager;->kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$100()Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    sget-boolean v2, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    if-eqz v2, :cond_0

    .line 419
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbManager;->setUsbCurrentSettingMode()V
    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$600(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    goto :goto_0

    .line 425
    :sswitch_7
    iget-object v2, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbManager;->setsettingMode()V
    invoke-static {v2}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$700(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 371
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x1388 -> :sswitch_2
        0x1770 -> :sswitch_3
        0x1b58 -> :sswitch_4
        0x1f40 -> :sswitch_5
        0x2328 -> :sswitch_6
        0x2710 -> :sswitch_7
    .end sparse-switch
.end method
