.class Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DesktopManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktop/DesktopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceConnectReceiver"
.end annotation


# instance fields
.field mBTKeyboardConnectedState:I

.field mBTMouseConnectedState:I

.field mUSBKeyboardConnectedstate:I

.field mUSBMouseConnectedstate:I

.field final synthetic this$0:Lcom/samsung/android/desktop/DesktopManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/desktop/DesktopManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 302
    iput-object p1, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 303
    iput v0, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->mUSBMouseConnectedstate:I

    .line 304
    iput v0, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->mUSBKeyboardConnectedstate:I

    .line 305
    iput v0, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->mBTMouseConnectedState:I

    .line 306
    iput v0, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->mBTKeyboardConnectedState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/desktop/DesktopManager;Lcom/samsung/android/desktop/DesktopManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/desktop/DesktopManager;
    .param p2, "x1"    # Lcom/samsung/android/desktop/DesktopManager$1;

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;-><init>(Lcom/samsung/android/desktop/DesktopManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 310
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "data":Ljava/lang/String;
    # getter for: Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/desktop/DesktopManager;->access$500()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DeviceConnectReceiver, action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v7, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 316
    const-string v7, "android.intent.extra.device_state"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 319
    .local v5, "mouseState":I
    # getter for: Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/desktop/DesktopManager;->access$500()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USB mouse connection event : mouseState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget v7, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->mUSBMouseConnectedstate:I

    if-eq v7, v5, :cond_0

    .line 322
    iput v5, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->mUSBMouseConnectedstate:I

    .line 323
    iget-object v8, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    const/4 v7, 0x1

    if-ne v7, v5, :cond_2

    const/4 v7, 0x1

    :goto_0
    # setter for: Lcom/samsung/android/desktop/DesktopManager;->mIsUSBMouseConnected:Z
    invoke-static {v8, v7}, Lcom/samsung/android/desktop/DesktopManager;->access$702(Lcom/samsung/android/desktop/DesktopManager;Z)Z

    .line 326
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    # invokes: Lcom/samsung/android/desktop/DesktopManager;->updateKnoxDesktopModeState()V
    invoke-static {v7}, Lcom/samsung/android/desktop/DesktopManager;->access$400(Lcom/samsung/android/desktop/DesktopManager;)V

    .line 383
    .end local v5    # "mouseState":I
    :cond_1
    :goto_1
    return-void

    .line 323
    .restart local v5    # "mouseState":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 327
    .end local v5    # "mouseState":I
    :cond_3
    const-string v7, "android.intent.action.USBHID_KEYBOARD_EVENT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 328
    const-string v7, "android.intent.extra.device_state"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 331
    .local v4, "keyboardState":I
    # getter for: Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/desktop/DesktopManager;->access$500()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USB keyboard connection event : keyboardState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget v7, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->mUSBKeyboardConnectedstate:I

    if-eq v7, v4, :cond_4

    .line 334
    iput v4, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->mUSBKeyboardConnectedstate:I

    .line 335
    iget-object v8, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    const/4 v7, 0x1

    if-ne v7, v4, :cond_5

    const/4 v7, 0x1

    :goto_2
    # setter for: Lcom/samsung/android/desktop/DesktopManager;->mIsUSBKeyboardConnected:Z
    invoke-static {v8, v7}, Lcom/samsung/android/desktop/DesktopManager;->access$802(Lcom/samsung/android/desktop/DesktopManager;Z)Z

    .line 338
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    # invokes: Lcom/samsung/android/desktop/DesktopManager;->updateKnoxDesktopModeState()V
    invoke-static {v7}, Lcom/samsung/android/desktop/DesktopManager;->access$400(Lcom/samsung/android/desktop/DesktopManager;)V

    goto :goto_1

    .line 335
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 341
    .end local v4    # "keyboardState":I
    :cond_6
    const-string v7, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 342
    const-string v7, "android.bluetooth.profile.extra.isKeyboard"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 343
    .local v3, "isBTKeyboard":Z
    const-string v7, "android.bluetooth.profile.extra.STATE"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 344
    .local v1, "currState":I
    const-string v7, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 346
    .local v6, "prevState":I
    if-nez v3, :cond_9

    .line 347
    # getter for: Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/desktop/DesktopManager;->access$500()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bluetooth mouse connection event : currState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", prevState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v7, 0x2

    if-ne v1, v7, :cond_8

    .line 351
    iget-object v7, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    const/4 v8, 0x1

    # setter for: Lcom/samsung/android/desktop/DesktopManager;->mIsDeskDockConnected:Z
    invoke-static {v7, v8}, Lcom/samsung/android/desktop/DesktopManager;->access$202(Lcom/samsung/android/desktop/DesktopManager;Z)Z

    .line 352
    iget-object v7, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    sget-object v8, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->DOCK_CONNECT:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    invoke-virtual {v7, v8}, Lcom/samsung/android/desktop/DesktopManager;->setDesktopState(Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;)V

    .line 353
    iget-object v7, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    const/4 v8, 0x1

    # setter for: Lcom/samsung/android/desktop/DesktopManager;->mIsBTMouseConnected:Z
    invoke-static {v7, v8}, Lcom/samsung/android/desktop/DesktopManager;->access$902(Lcom/samsung/android/desktop/DesktopManager;Z)Z

    .line 361
    :cond_7
    :goto_3
    iput v1, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->mBTMouseConnectedState:I

    .line 380
    :goto_4
    iget-object v7, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    # invokes: Lcom/samsung/android/desktop/DesktopManager;->updateKnoxDesktopModeState()V
    invoke-static {v7}, Lcom/samsung/android/desktop/DesktopManager;->access$400(Lcom/samsung/android/desktop/DesktopManager;)V

    goto/16 :goto_1

    .line 354
    :cond_8
    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    iget v7, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->mUSBMouseConnectedstate:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_7

    .line 356
    iget-object v7, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    const/4 v8, 0x0

    # setter for: Lcom/samsung/android/desktop/DesktopManager;->mIsDeskDockConnected:Z
    invoke-static {v7, v8}, Lcom/samsung/android/desktop/DesktopManager;->access$202(Lcom/samsung/android/desktop/DesktopManager;Z)Z

    .line 357
    iget-object v7, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    sget-object v8, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->DOCK_DISCONNECT:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    invoke-virtual {v7, v8}, Lcom/samsung/android/desktop/DesktopManager;->setDesktopState(Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;)V

    .line 358
    iget-object v7, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    const/4 v8, 0x0

    # setter for: Lcom/samsung/android/desktop/DesktopManager;->mIsBTMouseConnected:Z
    invoke-static {v7, v8}, Lcom/samsung/android/desktop/DesktopManager;->access$902(Lcom/samsung/android/desktop/DesktopManager;Z)Z

    goto :goto_3

    .line 363
    :cond_9
    # getter for: Lcom/samsung/android/desktop/DesktopManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/desktop/DesktopManager;->access$500()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bluetooth keyboard connection event : currState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", prevState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v7, 0x2

    if-ne v1, v7, :cond_b

    .line 367
    iget-object v7, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    sget-object v8, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->DOCK_CONNECT:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    invoke-virtual {v7, v8}, Lcom/samsung/android/desktop/DesktopManager;->setDesktopState(Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;)V

    .line 368
    iget-object v7, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    const/4 v8, 0x1

    # setter for: Lcom/samsung/android/desktop/DesktopManager;->mIsDeskDockConnected:Z
    invoke-static {v7, v8}, Lcom/samsung/android/desktop/DesktopManager;->access$202(Lcom/samsung/android/desktop/DesktopManager;Z)Z

    .line 369
    iget-object v7, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    const/4 v8, 0x1

    # setter for: Lcom/samsung/android/desktop/DesktopManager;->mIsBTKeyboardConnected:Z
    invoke-static {v7, v8}, Lcom/samsung/android/desktop/DesktopManager;->access$1002(Lcom/samsung/android/desktop/DesktopManager;Z)Z

    .line 377
    :cond_a
    :goto_5
    iput v1, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->mBTKeyboardConnectedState:I

    goto :goto_4

    .line 370
    :cond_b
    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    iget v7, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->mUSBKeyboardConnectedstate:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_a

    .line 372
    iget-object v7, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    sget-object v8, Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;->DOCK_DISCONNECT:Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;

    invoke-virtual {v7, v8}, Lcom/samsung/android/desktop/DesktopManager;->setDesktopState(Lcom/samsung/android/desktop/DesktopManager$DESKTOP_STATE;)V

    .line 373
    iget-object v7, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    const/4 v8, 0x0

    # setter for: Lcom/samsung/android/desktop/DesktopManager;->mIsDeskDockConnected:Z
    invoke-static {v7, v8}, Lcom/samsung/android/desktop/DesktopManager;->access$202(Lcom/samsung/android/desktop/DesktopManager;Z)Z

    .line 374
    iget-object v7, p0, Lcom/samsung/android/desktop/DesktopManager$DeviceConnectReceiver;->this$0:Lcom/samsung/android/desktop/DesktopManager;

    const/4 v8, 0x0

    # setter for: Lcom/samsung/android/desktop/DesktopManager;->mIsBTKeyboardConnected:Z
    invoke-static {v7, v8}, Lcom/samsung/android/desktop/DesktopManager;->access$1002(Lcom/samsung/android/desktop/DesktopManager;Z)Z

    goto :goto_5
.end method
