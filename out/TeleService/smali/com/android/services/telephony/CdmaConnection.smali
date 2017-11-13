.class final Lcom/android/services/telephony/CdmaConnection;
.super Lcom/android/services/telephony/TelephonyConnection;
.source "CdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/CdmaConnection$2;
    }
.end annotation


# instance fields
.field private final mAllowMute:Z

.field private mDtmfBurstConfirmationPending:Z

.field private final mDtmfQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

.field private final mHandler:Landroid/os/Handler;

.field private mIsCallWaiting:Z

.field private final mIsOutgoing:Z


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/EmergencyTonePlayer;ZZ)V
    .locals 3
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;
    .param p2, "emergencyTonePlayer"    # Lcom/android/services/telephony/EmergencyTonePlayer;
    .param p3, "allowMute"    # Z
    .param p4, "isOutgoing"    # Z

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/services/telephony/TelephonyConnection;-><init>(Lcom/android/internal/telephony/Connection;)V

    .line 44
    new-instance v1, Lcom/android/services/telephony/CdmaConnection$1;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/CdmaConnection$1;-><init>(Lcom/android/services/telephony/CdmaConnection;)V

    iput-object v1, p0, Lcom/android/services/telephony/CdmaConnection;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    .line 73
    iput-boolean v0, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfBurstConfirmationPending:Z

    .line 82
    iput-object p2, p0, Lcom/android/services/telephony/CdmaConnection;->mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

    .line 83
    iput-boolean p3, p0, Lcom/android/services/telephony/CdmaConnection;->mAllowMute:Z

    .line 84
    iput-boolean p4, p0, Lcom/android/services/telephony/CdmaConnection;->mIsOutgoing:Z

    .line 85
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/services/telephony/CdmaConnection;->mIsCallWaiting:Z

    .line 86
    iget-boolean v0, p0, Lcom/android/services/telephony/CdmaConnection;->mIsCallWaiting:Z

    if-eqz v0, :cond_1

    .line 87
    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConnection;->startCallWaitingTimer()V

    .line 89
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/CdmaConnection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/CdmaConnection;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/services/telephony/CdmaConnection;->hangupCallWaiting(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/services/telephony/CdmaConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/CdmaConnection;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConnection;->handleBurstDtmfConfirmation()V

    return-void
.end method

.method private handleBurstDtmfConfirmation()V
    .locals 7

    .prologue
    .line 261
    const/4 v1, 0x0

    .line 262
    .local v1, "dtmfDigits":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    monitor-enter v3

    .line 263
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfBurstConfirmationPending:Z

    .line 264
    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 266
    .local v0, "builder":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 279
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 269
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    const-string v2, "%d dtmf character[s] removed from the queue"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p0, v2, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    if-eqz v1, :cond_2

    .line 277
    invoke-direct {p0, v1}, Lcom/android/services/telephony/CdmaConnection;->sendBurstDtmfStringLocked(Ljava/lang/String;)V

    .line 279
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    return-void
.end method

.method private hangupCallWaiting(I)V
    .locals 4
    .param p1, "telephonyDisconnectCause"    # I

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 219
    .local v1, "originalConnection":Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    .line 221
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    invoke-static {p1}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(I)Landroid/telecom/DisconnectCause;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/CdmaConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 227
    :cond_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "Failed to hangup call waiting call"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private isEmergency()Z
    .locals 3

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 284
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getAddress()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendBurstDtmfStringLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "dtmfString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 255
    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/CdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v3, v3, v1}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfBurstConfirmationPending:Z

    .line 258
    return-void
.end method

.method private sendShortDtmfToNetwork(C)V
    .locals 3
    .param p1, "digit"    # C

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 246
    :try_start_0
    iget-boolean v0, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfBurstConfirmationPending:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 251
    :goto_0
    monitor-exit v1

    .line 252
    return-void

    .line 249
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/CdmaConnection;->sendBurstDtmfStringLocked(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startCallWaitingTimer()V
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/services/telephony/CdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 215
    return-void
.end method

.method private useBurstDtmf()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->isImsConnection()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    const-string v2, "in ims call, return false"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    :cond_0
    :goto_0
    return v1

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 241
    .local v0, "dtmfTypeSetting":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected buildConnectionCapabilities()I
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->buildConnectionCapabilities()I

    move-result v0

    .line 176
    .local v0, "capabilities":I
    iget-boolean v1, p0, Lcom/android/services/telephony/CdmaConnection;->mAllowMute:Z

    if-eqz v1, :cond_0

    .line 177
    or-int/lit8 v0, v0, 0x40

    .line 179
    :cond_0
    return v0
.end method

.method public cloneConnection()Lcom/android/services/telephony/TelephonyConnection;
    .locals 5

    .prologue
    .line 147
    new-instance v0, Lcom/android/services/telephony/CdmaConnection;

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

    iget-boolean v3, p0, Lcom/android/services/telephony/CdmaConnection;->mAllowMute:Z

    iget-boolean v4, p0, Lcom/android/services/telephony/CdmaConnection;->mIsOutgoing:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/services/telephony/CdmaConnection;-><init>(Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/EmergencyTonePlayer;ZZ)V

    .line 149
    .local v0, "cdmaConnection":Lcom/android/services/telephony/CdmaConnection;
    return-object v0
.end method

.method forceAsDialing(Z)V
    .locals 1
    .param p1, "isDialing"    # Z

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->setDialing()V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/CdmaConnection;->updateState(Z)V

    goto :goto_0
.end method

.method isCallWaiting()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/services/telephony/CdmaConnection;->mIsCallWaiting:Z

    return v0
.end method

.method isOutgoing()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/android/services/telephony/CdmaConnection;->mIsOutgoing:Z

    return v0
.end method

.method public onAnswer()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/services/telephony/CdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->onAnswer()V

    .line 136
    return-void
.end method

.method public onPlayDtmfTone(C)V
    .locals 2
    .param p1, "digit"    # C

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConnection;->useBurstDtmf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "sending dtmf digit as burst"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/android/services/telephony/CdmaConnection;->sendShortDtmfToNetwork(C)V

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    const-string v0, "sending dtmf digit directly"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    goto :goto_0
.end method

.method public onReject()V
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 114
    .local v0, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 115
    sget-object v1, Lcom/android/services/telephony/CdmaConnection$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 124
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "Rejecting a non-ringing call"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->onReject()V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 118
    :pswitch_0
    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->onReject()V

    goto :goto_0

    .line 121
    :pswitch_1
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/services/telephony/CdmaConnection;->hangupCallWaiting(I)V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 155
    .local v0, "originalConnection":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/services/telephony/CdmaConnection;->mIsCallWaiting:Z

    .line 158
    iget-object v1, p0, Lcom/android/services/telephony/CdmaConnection;->mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

    if-eqz v1, :cond_0

    .line 159
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 160
    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConnection;->isEmergency()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/services/telephony/CdmaConnection;->mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

    invoke-virtual {v1}, Lcom/android/services/telephony/EmergencyTonePlayer;->start()V

    .line 170
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Lcom/android/services/telephony/TelephonyConnection;->onStateChanged(I)V

    .line 171
    return-void

    .line 155
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/android/services/telephony/CdmaConnection;->mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

    invoke-virtual {v1}, Lcom/android/services/telephony/EmergencyTonePlayer;->stop()V

    goto :goto_1
.end method

.method public onStopDtmfTone()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConnection;->useBurstDtmf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 109
    :cond_0
    return-void
.end method

.method public performConference(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 2
    .param p1, "otherConnection"    # Lcom/android/services/telephony/TelephonyConnection;

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->isImsConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-super {p0, p1}, Lcom/android/services/telephony/TelephonyConnection;->performConference(Lcom/android/services/telephony/TelephonyConnection;)V

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    const-string v0, "Non-IMS CDMA Connection attempted to call performConference."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
