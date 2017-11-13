.class public Lcom/android/phone/EmergencyCallHelper;
.super Landroid/os/Handler;
.source "EmergencyCallHelper.java"


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallController:Lcom/android/phone/CallController;

.field private mNumRetriesSoFar:I

.field private mNumber:Ljava/lang/String;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallController;)V
    .locals 1
    .param p1, "callController"    # Lcom/android/phone/CallController;

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/phone/EmergencyCallHelper;->mCallController:Lcom/android/phone/CallController;

    .line 79
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 80
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 81
    return-void
.end method

.method private cancelRetryTimer()V
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 473
    return-void
.end method

.method private cleanup()V
    .locals 1

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    .line 453
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForDisconnect()V

    .line 454
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cancelRetryTimer()V

    .line 457
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 462
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 464
    :cond_1
    return-void
.end method

.method private onDisconnect(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 237
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 238
    .local v1, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v0

    .line 243
    .local v0, "cause":I
    const/16 v2, 0x12

    if-ne v0, v2, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->scheduleRetryOrBailOut()V

    .line 262
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    goto :goto_0
.end method

.method private onRetryTimeout()V
    .locals 3

    .prologue
    .line 268
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 269
    .local v0, "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 282
    .local v1, "serviceState":I
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v2, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 309
    :goto_0
    return-void

    .line 288
    :cond_0
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 293
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    .line 295
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->placeEmergencyCall()V

    goto :goto_0

    .line 302
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->powerOnRadio()V

    .line 307
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->scheduleRetryOrBailOut()V

    goto :goto_0
.end method

.method private onServiceStateChanged(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 192
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ServiceState;

    .line 204
    .local v1, "state":Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 207
    .local v0, "okToCall":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 212
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    .line 214
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->placeEmergencyCall()V

    .line 227
    :cond_1
    return-void

    .line 204
    .end local v0    # "okToCall":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private placeEmergencyCall()V
    .locals 7

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->registerForDisconnect()V

    .line 369
    iget-object v2, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Z)I

    move-result v0

    .line 379
    .local v0, "callStatus":I
    packed-switch v0, :pswitch_data_0

    .line 388
    const-string v2, "EmergencyCallHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "placeEmergencyCall(): placeCall() failed: callStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v1, 0x0

    .line 393
    .local v1, "success":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 407
    :goto_1
    return-void

    .line 381
    .end local v1    # "success":Z
    :pswitch_0
    const/4 v1, 0x1

    .line 382
    .restart local v1    # "success":Z
    goto :goto_0

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->scheduleRetryOrBailOut()V

    goto :goto_1

    .line 379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private powerOnRadio()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 324
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->registerForServiceStateChanged()V

    .line 328
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/PhoneGlobals;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 348
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0
.end method

.method private registerForDisconnect()V
    .locals 3

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 498
    return-void
.end method

.method private registerForServiceStateChanged()V
    .locals 3

    .prologue
    .line 479
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 480
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 481
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 482
    return-void
.end method

.method private scheduleRetryOrBailOut()V
    .locals 2

    .prologue
    .line 416
    iget v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    .line 419
    iget v0, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 420
    const-string v0, "EmergencyCallHelper"

    const-string v1, "scheduleRetryOrBailOut: hit MAX_NUM_RETRIES; giving up..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->startRetryTimer()V

    goto :goto_0
.end method

.method private startRetryTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 467
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 468
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/phone/EmergencyCallHelper;->sendEmptyMessageDelayed(IJ)Z

    .line 469
    return-void
.end method

.method private startSequenceInternal(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->cleanup()V

    .line 150
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumber:Ljava/lang/String;

    .line 153
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/EmergencyCallHelper;->mNumRetriesSoFar:I

    .line 157
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 158
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "EmergencyCallHelper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 163
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 171
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->powerOnRadio()V

    .line 179
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->startRetryTimer()V

    .line 182
    return-void
.end method

.method private unregisterForDisconnect()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 502
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 503
    return-void
.end method

.method private unregisterForServiceStateChanged()V
    .locals 2

    .prologue
    .line 486
    iget-object v1, p0, Lcom/android/phone/EmergencyCallHelper;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 487
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 488
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 490
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyCallHelper;->removeMessages(I)V

    .line 491
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 99
    const-string v0, "EmergencyCallHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return-void

    .line 87
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->startSequenceInternal(Landroid/os/Message;)V

    goto :goto_0

    .line 90
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->onServiceStateChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 93
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallHelper;->onDisconnect(Landroid/os/Message;)V

    goto :goto_0

    .line 96
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHelper;->onRetryTimeout()V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/phone/EmergencyCallHelper;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 132
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHelper;->sendMessage(Landroid/os/Message;)Z

    .line 133
    return-void
.end method
