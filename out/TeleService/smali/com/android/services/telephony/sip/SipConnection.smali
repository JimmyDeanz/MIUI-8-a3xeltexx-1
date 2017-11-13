.class final Lcom/android/services/telephony/sip/SipConnection;
.super Landroid/telecom/Connection;
.source "SipConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/sip/SipConnection$2;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mOriginalConnection:Lcom/android/internal/telephony/Connection;

.field private mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    .line 40
    new-instance v0, Lcom/android/services/telephony/sip/SipConnection$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/sip/SipConnection$1;-><init>(Lcom/android/services/telephony/sip/SipConnection;)V

    iput-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mHandler:Landroid/os/Handler;

    .line 52
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    .line 56
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->setInitializing()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/sip/SipConnection;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/SipConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipConnection;->updateState(Z)V

    return-void
.end method

.method private buildCallCapabilities()I
    .locals 3

    .prologue
    .line 248
    const/16 v0, 0x42

    .line 249
    .local v0, "capabilities":I
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 250
    :cond_0
    or-int/lit8 v0, v0, 0x1

    .line 252
    :cond_1
    return v0
.end method

.method private close()V
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/sip/SipPhone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 315
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    .line 316
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->destroy()V

    .line 317
    return-void
.end method

.method private static getAddressFromNumber(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 305
    if-nez p0, :cond_0

    .line 306
    const-string p0, ""

    .line 308
    :cond_0
    const-string v0, "sip"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidRingingCall()Z
    .locals 3

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 203
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 320
    const-string v0, "SIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SipConnection] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void
.end method

.method private updateAddress()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 277
    iget-object v4, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v4, :cond_3

    .line 278
    iget-object v4, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/services/telephony/sip/SipConnection;->getAddressFromNumber(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 279
    .local v0, "address":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    .line 280
    .local v3, "presentation":I
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getAddress()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getAddressPresentation()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 282
    :cond_0
    const-string v4, "updateAddress, address changed"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    invoke-virtual {p0, v0, v3}, Lcom/android/services/telephony/sip/SipConnection;->setAddress(Landroid/net/Uri;I)V

    .line 286
    :cond_1
    iget-object v4, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    .line 288
    .local v2, "namePresentation":I
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCallerDisplayNamePresentation()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 290
    :cond_2
    const-string v4, "updateAddress, caller display name changed"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    invoke-virtual {p0, v1, v2}, Lcom/android/services/telephony/sip/SipConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 295
    .end local v0    # "address":Landroid/net/Uri;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "namePresentation":I
    .end local v3    # "presentation":I
    :cond_3
    return-void
.end method

.method private updateState(Z)V
    .locals 3
    .param p1, "force"    # Z

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-nez v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 214
    .local v0, "newState":Lcom/android/internal/telephony/Call$State;
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v0, :cond_0

    .line 215
    :cond_2
    iput-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    .line 216
    sget-object v1, Lcom/android/services/telephony/sip/SipConnection$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 243
    :goto_1
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/services/telephony/sip/SipConnection;->updateCallCapabilities(Z)V

    goto :goto_0

    .line 220
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->setActive()V

    goto :goto_1

    .line 223
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->setOnHold()V

    goto :goto_1

    .line 227
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->setDialing()V

    .line 229
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipConnection;->setRingbackRequested(Z)V

    goto :goto_1

    .line 233
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->setRinging()V

    goto :goto_1

    .line 236
    :pswitch_5
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(I)Landroid/telecom/DisconnectCause;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 238
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->close()V

    goto :goto_1

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method getPhone()Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 195
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/sip/SipPhone;

    .line 198
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method initialize(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    .line 62
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/sip/SipPhone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->updateAddress()V

    .line 67
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->setInitialized()V

    .line 68
    return-void
.end method

.method public onAbort()V
    .locals 0

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->onDisconnect()V

    .line 129
    return-void
.end method

.method onAddedToCallService()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 264
    invoke-direct {p0, v0}, Lcom/android/services/telephony/sip/SipConnection;->updateState(Z)V

    .line 265
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/SipConnection;->updateCallCapabilities(Z)V

    .line 266
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/SipConnection;->setAudioModeIsVoip(Z)V

    .line 267
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/sip/SipConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 271
    :cond_0
    return-void
.end method

.method public onAnswer(I)V
    .locals 3
    .param p1, "videoState"    # I

    .prologue
    .line 160
    :try_start_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->isValidRingingCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/sip/SipPhone;->acceptCall(I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnswer, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 1
    .param p1, "state"    # Landroid/telecom/AudioState;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->setEchoSuppressionEnabled()V

    .line 76
    :cond_0
    return-void
.end method

.method public onDisconnect()V
    .locals 3

    .prologue
    .line 103
    :try_start_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onHold()V
    .locals 3

    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone;->switchHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHold, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPlayDtmfTone(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->startDtmf(C)V

    .line 89
    :cond_0
    return-void
.end method

.method public onPostDialContinue(Z)V
    .locals 0
    .param p1, "proceed"    # Z

    .prologue
    .line 184
    return-void
.end method

.method public onReject()V
    .locals 3

    .prologue
    .line 172
    :try_start_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->isValidRingingCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReject, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSeparate()V
    .locals 3

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeparate, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 81
    return-void
.end method

.method public onStopDtmfTone()V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->stopDtmf()V

    .line 97
    :cond_0
    return-void
.end method

.method public onUnhold()V
    .locals 3

    .prologue
    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone;->switchHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnhold, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method updateCallCapabilities(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->buildCallCapabilities()I

    move-result v0

    .line 257
    .local v0, "newCallCapabilities":I
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getConnectionCapabilities()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 258
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/SipConnection;->setConnectionCapabilities(I)V

    .line 260
    :cond_1
    return-void
.end method
