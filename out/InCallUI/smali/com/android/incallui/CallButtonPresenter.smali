.class public Lcom/android/incallui/CallButtonPresenter;
.super Lcom/android/incallui/Presenter;
.source "CallButtonPresenter.java"

# interfaces
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/CallList$ActiveSubChangeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;",
        ">;",
        "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
        "Lcom/android/incallui/CallList$ActiveSubChangeListener;",
        "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field private mCall:Lcom/android/incallui/Call;

.field private mConferenceModeOn:Z

.field private mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

.field private mLastCallKey:Ljava/lang/String;

.field private mLastOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 42
    iput v0, p0, Lcom/android/incallui/CallButtonPresenter;->mLastOrientation:I

    .line 47
    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mConferenceModeOn:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    .line 58
    return-void
.end method

.method private updateConferenceMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 277
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 278
    iget-boolean v2, p0, Lcom/android/incallui/CallButtonPresenter;->mConferenceModeOn:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/incallui/CallButtonPresenter;->mConferenceModeOn:Z

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conference mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/CallButtonPresenter;->mConferenceModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    .line 283
    .local v1, "incallActivity":Lcom/android/incallui/InCallActivity;
    if-eqz v1, :cond_0

    .line 284
    iget-boolean v2, p0, Lcom/android/incallui/CallButtonPresenter;->mConferenceModeOn:Z

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallActivity;->updateConferenceMode(Z)V

    .line 286
    :cond_0
    return-void

    .line 278
    .end local v1    # "incallActivity":Lcom/android/incallui/InCallActivity;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 6
    .param p1, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 177
    const-string v5, "Updating call UI for call: "

    invoke-static {p0, v5, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .line 179
    .local v2, "ui":Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    if-nez v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->updateAudioMode(I)V

    .line 185
    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz p2, :cond_4

    move v0, v3

    .line 187
    .local v0, "isEnabled":Z
    :goto_1
    invoke-interface {v2, v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setEnabled(Z)V

    .line 188
    iget-object v5, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v5, :cond_7

    .line 189
    invoke-interface {v2, v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setVisible(Z)V

    .line 190
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->isVideoCall()Z

    move-result v1

    .line 191
    .local v1, "isVideoCall":Z
    if-nez v1, :cond_5

    move v5, v3

    :goto_2
    invoke-interface {v2, v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAudioButtonLayout(Z)V

    .line 192
    if-nez v1, :cond_6

    move v5, v3

    :goto_3
    invoke-interface {v2, v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showToolsButtonLayout(Z)V

    .line 193
    invoke-interface {v2, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->changeContentViewPaddingBottom(Z)V

    .line 194
    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v5, :cond_2

    if-eqz v1, :cond_2

    .line 195
    invoke-interface {v2, v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayToolPanel(Z)V

    .line 202
    .end local v1    # "isVideoCall":Z
    :cond_2
    :goto_4
    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->isVideoCall()Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    :cond_3
    iget v3, p0, Lcom/android/incallui/CallButtonPresenter;->mLastOrientation:I

    invoke-interface {v2, v3, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->startEndCallButtonAnimator(II)V

    .line 204
    iput v4, p0, Lcom/android/incallui/CallButtonPresenter;->mLastOrientation:I

    goto :goto_0

    .end local v0    # "isEnabled":Z
    :cond_4
    move v0, v4

    .line 185
    goto :goto_1

    .restart local v0    # "isEnabled":Z
    .restart local v1    # "isVideoCall":Z
    :cond_5
    move v5, v4

    .line 191
    goto :goto_2

    :cond_6
    move v5, v4

    .line 192
    goto :goto_3

    .line 197
    .end local v1    # "isVideoCall":Z
    :cond_7
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 198
    invoke-interface {v2, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setVisible(Z)V

    goto :goto_4
.end method


# virtual methods
.method public endCallClicked()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAudioMode()I
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method public getSupportedAudio()I
    .locals 1

    .prologue
    .line 243
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getSupportedModes()I

    move-result v0

    return v0
.end method

.method public isServiceNumber()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->isServiceNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoCall()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/CallAdapterUtils;->isVideo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVtConferenceCall()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/CallUtils;->isVtConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public onActiveSubChanged(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 311
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    .line 312
    .local v0, "state":Lcom/android/incallui/InCallPresenter$InCallState;
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/incallui/CallButtonPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 313
    return-void
.end method

.method public onAudioMode(I)V
    .locals 2
    .param p1, "newMode"    # I

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .line 142
    .local v0, "ui":Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->updateAudioMode(I)V

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    invoke-virtual {v1}, Lcom/android/incallui/JeejenInCallScreenLayer;->refreshSpeakerMode()V

    .line 150
    :cond_1
    return-void
.end method

.method public onDeviceOrientationChanged(I)V
    .locals 2
    .param p1, "screenOrientation"    # I

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .line 167
    .local v0, "ui":Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    :cond_0
    const-string v1, "onDeviceOrientationChanged: VideoCallUi is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_1
    iget v1, p0, Lcom/android/incallui/CallButtonPresenter;->mLastOrientation:I

    invoke-interface {v0, v1, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->startEndCallButtonAnimator(II)V

    .line 173
    iput p1, p0, Lcom/android/incallui/CallButtonPresenter;->mLastOrientation:I

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 123
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/CallButtonPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 124
    return-void
.end method

.method public onMute(Z)V
    .locals 0
    .param p1, "muted"    # Z

    .prologue
    .line 154
    return-void
.end method

.method public onSpeakerClick()V
    .locals 3

    .prologue
    .line 223
    const/16 v0, 0x8

    .line 226
    .local v0, "newMode":I
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 227
    const/4 v0, 0x5

    .line 229
    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mConferenceModeOn:Z

    if-eqz v1, :cond_0

    .line 230
    const-string v1, "voc_conf_call=disable"

    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonPresenter;->updateConferenceMode(Ljava/lang/String;)V

    .line 234
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    .line 235
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->refreshStatusBarNotifier()V

    .line 236
    return-void
.end method

.method public onSpeakerLongClick()V
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 266
    const-string v0, "Turn on speaker mode first."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->onSpeakerClick()V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mConferenceModeOn:Z

    .line 271
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mConferenceModeOn:Z

    if-eqz v0, :cond_1

    const-string v0, "voc_conf_call=enable"

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->updateConferenceMode(Ljava/lang/String;)V

    .line 272
    return-void

    .line 271
    :cond_1
    const-string v0, "voc_conf_call=disable"

    goto :goto_0
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 6
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, "isNeedUpdate":Z
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v4, :cond_1

    .line 91
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    .line 115
    :cond_0
    :goto_0
    if-ne p1, p2, :cond_7

    if-nez v2, :cond_7

    .line 119
    :goto_1
    return-void

    .line 92
    :cond_1
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v4, :cond_2

    .line 93
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    .line 94
    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    .line 95
    iput-object v5, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    goto :goto_0

    .line 97
    :cond_2
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v4, :cond_4

    .line 98
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 100
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/Call;->getCallKeyForCallButtonPresenter(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "calllKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/incallui/CallButtonPresenter;->mLastCallKey:Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v2, 0x1

    .line 102
    :goto_2
    iput-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mLastCallKey:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    goto :goto_0

    :cond_3
    move v2, v3

    .line 101
    goto :goto_2

    .line 104
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "calllKey":Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v4, :cond_5

    .line 105
    iput-object v5, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    goto :goto_0

    .line 106
    :cond_5
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v4, :cond_6

    .line 107
    iput-boolean v3, p0, Lcom/android/incallui/CallButtonPresenter;->mConferenceModeOn:Z

    .line 108
    iput-object v5, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    goto :goto_0

    .line 110
    :cond_6
    iput-object v5, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    goto :goto_0

    .line 118
    :cond_7
    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, p2, v3}, Lcom/android/incallui/CallButtonPresenter;->updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    goto :goto_1
.end method

.method public onSupportedAudioMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .line 134
    .local v0, "ui":Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->updateAudioMode(I)V

    .line 137
    :cond_0
    return-void
.end method

.method public onUiReady(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V
    .locals 3
    .param p1, "ui"    # Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 64
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 65
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 66
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    .line 67
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->addActiveSubChangeListener(Lcom/android/incallui/CallList$ActiveSubChangeListener;)V

    .line 70
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 72
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getCallList()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/CallButtonPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 74
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->onUiReady(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 79
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 80
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 81
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    .line 82
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->removeActiveSubChangeListener(Lcom/android/incallui/CallList$ActiveSubChangeListener;)V

    .line 83
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 84
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->onUiUnready(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V

    return-void
.end method

.method public setAudioMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending new Audio Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/telecom/AudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/AudioModeProvider;->setAudioMode(I)V

    .line 254
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    .line 255
    return-void
.end method

.method public setJeejenLayer(Lcom/android/incallui/JeejenInCallScreenLayer;)V
    .locals 0
    .param p1, "layer"    # Lcom/android/incallui/JeejenInCallScreenLayer;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/incallui/CallButtonPresenter;->mJeejenLayer:Lcom/android/incallui/JeejenInCallScreenLayer;

    .line 55
    return-void
.end method
