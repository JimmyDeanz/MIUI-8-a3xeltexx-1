.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 426
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "sec_plug_type"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 429
    .local v1, "chargeType":I
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    .line 431
    const-string v2, "UsbDeviceManager"

    const-string/jumbo v3, "received ACTION_SEC_BATTERY_EVENT : USB CHARGING ON"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnected:Z
    invoke-static {v2, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$502(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 433
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    .line 436
    const-string v2, "UsbDeviceManager"

    const-string/jumbo v3, "received ACTION_SEC_BATTERY_EVENT : USB CHARGING OFF"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerConnected:Z
    invoke-static {v2, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$502(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 438
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v2

    invoke-virtual {v2, v6, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    goto :goto_0
.end method
