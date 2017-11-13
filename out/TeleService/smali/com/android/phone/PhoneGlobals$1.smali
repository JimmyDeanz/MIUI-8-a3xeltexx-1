.class Lcom/android/phone/PhoneGlobals$1;
.super Landroid/os/Handler;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 230
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 315
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 237
    :sswitch_1
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 243
    :sswitch_2
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    const-string v4, "ignore_sim_network_locked_events_bool"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 246
    const-string v3, "PhoneApp"

    const-string v4, "Ignoring EVENT_SIM_NETWORK_LOCKED event; not showing \'SIM network unlock\' PIN entry screen"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :cond_1
    const-string v3, "PhoneApp"

    const-string v4, "show sim depersonal panel"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v1, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;)V

    .line 255
    .local v1, "ndpPanel":Lcom/android/phone/IccNetworkDepersonalizationPanel;
    invoke-virtual {v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto :goto_0

    .line 260
    .end local v1    # "ndpPanel":Lcom/android/phone/IccNetworkDepersonalizationPanel;
    :sswitch_3
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto :goto_0

    .line 264
    :sswitch_4
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto :goto_0

    .line 268
    :sswitch_5
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/PhoneGlobals;->onMMIComplete(Landroid/os/AsyncResult;)V
    invoke-static {v4, v3}, Lcom/android/phone/PhoneGlobals;->access$100(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 272
    :sswitch_6
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_0

    .line 279
    :sswitch_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v4, "READY"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->access$200(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 284
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->access$200(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 285
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # setter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v3, v5}, Lcom/android/phone/PhoneGlobals;->access$202(Lcom/android/phone/PhoneGlobals;Landroid/app/Activity;)Landroid/app/Activity;

    .line 287
    :cond_2
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->access$300(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 288
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->access$300(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 289
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # setter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v5}, Lcom/android/phone/PhoneGlobals;->access$302(Lcom/android/phone/PhoneGlobals;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 301
    :sswitch_8
    const/4 v0, 0x0

    .line 302
    .local v0, "inDockMode":Z
    sget v3, Lcom/android/phone/PhoneGlobals;->mDockState:I

    if-eqz v3, :cond_3

    .line 303
    const/4 v0, 0x1

    .line 308
    :cond_3
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 309
    .local v2, "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->bluetoothManager:Lcom/android/phone/BluetoothManager;
    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->access$400(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/BluetoothManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/BluetoothManager;->isBluetoothHeadsetAudioOn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 311
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto/16 :goto_0

    .line 230
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x8 -> :sswitch_7
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0xc -> :sswitch_0
        0xd -> :sswitch_8
        0xe -> :sswitch_1
        0x34 -> :sswitch_5
        0x35 -> :sswitch_6
    .end sparse-switch
.end method
