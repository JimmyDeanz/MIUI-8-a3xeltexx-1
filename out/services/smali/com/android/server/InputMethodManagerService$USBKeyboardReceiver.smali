.class Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "USBKeyboardReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0

    .prologue
    .line 5623
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 5626
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 5627
    .local v1, "intentAction":Ljava/lang/String;
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InputMethodManagerService onReceive() intentAction"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5628
    const-string v2, "android.intent.action.USBHID_KEYBOARD_EVENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5629
    const-string v2, "android.intent.extra.device_state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 5630
    .local v0, "extra":I
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive() getIntExtra "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5631
    if-ne v0, v5, :cond_4

    .line 5632
    # getter for: Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$3000()I

    move-result v2

    if-gez v2, :cond_0

    .line 5633
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EXTRA_USB_HID_STATE_ATTACHED] change mUSBKeyboardCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$3000()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--> 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5634
    # setter for: Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I
    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->access$3002(I)I

    .line 5636
    :cond_0
    # operator++ for: Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$3008()I

    .line 5637
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EXTRA_USB_HID_STATE_ATTACHED] mUSBKeyboardCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$3000()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5638
    # |= operator for: Lcom/android/server/InputMethodManagerService;->keyboardState:I
    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->access$376(I)I

    .line 5640
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->isJapaneseRegion()Z
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$400(Lcom/android/server/InputMethodManagerService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5641
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEforJapaneseKeyboard()V

    .line 5646
    :goto_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    .line 5647
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 5648
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Sip_SupportKcmForHwKeyboard"

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5649
    # getter for: Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$800()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5650
    # getter for: Lcom/android/server/InputMethodManagerService;->mDefaultSIP:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$800()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5651
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2, v7}, Lcom/android/server/InputMethodManagerService;->showKeyboardNotiDailog(I)V

    .line 5680
    .end local v0    # "extra":I
    :cond_1
    :goto_1
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InputMethodManagerService onReceive() keyboardState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/InputMethodManagerService;->keyboardState:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$300()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5681
    return-void

    .line 5642
    .restart local v0    # "extra":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->isChineseRegion()Z
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$500(Lcom/android/server/InputMethodManagerService;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string v3, "com.samsung.inputmethod/.SamsungIME"

    # invokes: Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/android/server/InputMethodManagerService;->access$600(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5643
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEforChineseKeyboard()V

    goto :goto_0

    .line 5645
    :cond_3
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEForKeyboard()V

    goto :goto_0

    .line 5663
    :cond_4
    # getter for: Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$3000()I

    move-result v2

    if-ge v2, v5, :cond_5

    .line 5664
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EXTRA_USB_HID_STATE_DETTACHED] change mUSBKeyboardCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$3000()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--> 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5665
    # setter for: Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I
    invoke-static {v5}, Lcom/android/server/InputMethodManagerService;->access$3002(I)I

    .line 5667
    :cond_5
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EXTRA_USB_HID_STATE_DETTACHED] mUSBKeyboardCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$3000()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5668
    # --operator for: Lcom/android/server/InputMethodManagerService;->mUSBKeyboardCount:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$3006()I

    move-result v2

    if-nez v2, :cond_1

    .line 5669
    const/4 v2, -0x5

    # &= operator for: Lcom/android/server/InputMethodManagerService;->keyboardState:I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$372(I)I

    .line 5671
    # getter for: Lcom/android/server/InputMethodManagerService;->prevAutoMode:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$900()I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 5672
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "screen_brightness_mode"

    # getter for: Lcom/android/server/InputMethodManagerService;->prevAutoMode:I
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$900()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5674
    :cond_6
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$USBKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    .line 5675
    # setter for: Lcom/android/server/InputMethodManagerService;->prevAutoMode:I
    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->access$902(I)I

    goto/16 :goto_1
.end method
