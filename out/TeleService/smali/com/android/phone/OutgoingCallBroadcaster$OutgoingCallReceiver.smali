.class public Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OutgoingCallBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OutgoingCallBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutgoingCallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;


# direct methods
.method public constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 170
    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "OutgoingCallReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doReceive: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    const-string v9, "android.phone.extra.ALREADY_CALLED"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 178
    .local v1, "alreadyCalled":Z
    if-eqz v1, :cond_2

    .line 179
    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "OutgoingCallReceiver"

    const-string v10, "CALL already placed -- returning."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_1
    const/4 v9, 0x0

    .line 274
    :goto_0
    return v9

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->getResultData()Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, "number":Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    .line 191
    .local v2, "app":Lcom/android/phone/PhoneGlobals;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    .line 198
    .local v7, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {v7}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 199
    iget-object v9, v2, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v9, v9, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v10, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v9, v10, :cond_9

    const/4 v0, 0x1

    .line 201
    .local v0, "activateState":Z
    :goto_1
    iget-object v9, v2, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v9, v9, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v10, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v9, v10, :cond_a

    const/4 v3, 0x1

    .line 204
    .local v3, "dialogState":Z
    :goto_2
    const/4 v4, 0x0

    .line 211
    .local v4, "isOtaCallActive":Z
    iget-object v9, v2, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v9, v9, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v10, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v9, v10, :cond_3

    iget-object v9, v2, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v9, v9, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v10, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v9, v10, :cond_4

    .line 215
    :cond_3
    const/4 v4, 0x1

    .line 218
    :cond_4
    if-nez v0, :cond_5

    if-eqz v3, :cond_b

    .line 224
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->dismissOtaDialogs()V

    .line 225
    :cond_6
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->clearOtaState()V

    .line 234
    .end local v0    # "activateState":Z
    .end local v3    # "dialogState":Z
    .end local v4    # "isOtaCallActive":Z
    :cond_7
    if-nez v5, :cond_c

    .line 235
    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200()Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "OutgoingCallReceiver"

    const-string v10, "CALL cancelled (null number), returning..."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_8
    const/4 v9, 0x0

    goto :goto_0

    .line 199
    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    .line 201
    .restart local v0    # "activateState":Z
    :cond_a
    const/4 v3, 0x0

    goto :goto_2

    .line 226
    .restart local v3    # "dialogState":Z
    .restart local v4    # "isOtaCallActive":Z
    :cond_b
    if-eqz v4, :cond_7

    .line 229
    const-string v9, "OutgoingCallReceiver"

    const-string v10, "OTASP call is active: disallowing a new outgoing call."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v9, 0x0

    goto :goto_0

    .line 237
    .end local v0    # "activateState":Z
    .end local v3    # "dialogState":Z
    .end local v4    # "isOtaCallActive":Z
    :cond_c
    invoke-static {v7}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v9, v10, :cond_e

    invoke-interface {v7, v5}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 240
    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200()Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v9, "OutgoingCallReceiver"

    const-string v10, "Call is active, a 2nd OTA call cancelled -- returning."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 242
    :cond_e
    invoke-static {p1, v5}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 247
    const-string v9, "OutgoingCallReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot modify outgoing call to emergency number "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 251
    :cond_f
    const-string v9, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "originalUri":Ljava/lang/String;
    if-nez v6, :cond_10

    .line 254
    const-string v9, "OutgoingCallReceiver"

    const-string v10, "Intent is missing EXTRA_ORIGINAL_URI -- returning."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 258
    :cond_10
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 265
    .local v8, "uri":Landroid/net/Uri;
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 266
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 268
    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200()Z

    move-result v9

    if-eqz v9, :cond_11

    const-string v9, "OutgoingCallReceiver"

    const-string v10, "doReceive: proceeding with call..."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_11
    iget-object v9, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # invokes: Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    invoke-static {v9, p1, p2, v8, v5}, Lcom/android/phone/OutgoingCallBroadcaster;->access$400(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    .line 274
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->access$100(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->doReceive(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 148
    .local v0, "isAttemptingCall":Z
    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OutgoingCallReceiver"

    const-string v2, "OutgoingCallReceiver is going to finish the Activity itself."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    if-eqz v0, :cond_1

    .line 157
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # invokes: Lcom/android/phone/OutgoingCallBroadcaster;->startDelayedFinish()V
    invoke-static {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->access$300(Lcom/android/phone/OutgoingCallBroadcaster;)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v1}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto :goto_0
.end method
