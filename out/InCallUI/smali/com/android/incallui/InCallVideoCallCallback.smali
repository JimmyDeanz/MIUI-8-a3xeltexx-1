.class public Lcom/android/incallui/InCallVideoCallCallback;
.super Landroid/telecom/InCallService$VideoCall$Callback;
.source "InCallVideoCallCallback.java"


# instance fields
.field private mCall:Lcom/android/incallui/Call;


# direct methods
.method public constructor <init>(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/telecom/InCallService$VideoCall$Callback;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    .line 42
    return-void
.end method


# virtual methods
.method public onCallDataUsageChanged(J)V
    .locals 3
    .param p1, "dataUsage"    # J

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallDataUsageChanged: dataUsage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->callDataUsageChanged(J)V

    .line 145
    return-void
.end method

.method public onCallSessionEvent(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 111
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->callSessionEvent(I)V

    .line 112
    return-void
.end method

.method public onCameraCapabilitiesChanged(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 4
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .line 166
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {p1}, Landroid/telecom/VideoProfile$CameraCapabilities;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/telecom/VideoProfile$CameraCapabilities;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->cameraDimensionsChanged(Lcom/android/incallui/Call;II)V

    .line 169
    :cond_0
    return-void
.end method

.method public onPeerDimensionsChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 122
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->peerDimensionsChanged(Lcom/android/incallui/Call;II)V

    .line 123
    return-void
.end method

.method public onSessionModifyRequestReceived(Landroid/telecom/VideoProfile;)V
    .locals 6
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onSessionModifyRequestReceived videoProfile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v4, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/CallUtils;->toUnPausedVideoState(I)I

    move-result v2

    .line 53
    .local v2, "previousVideoState":I
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/CallUtils;->toUnPausedVideoState(I)I

    move-result v1

    .line 56
    .local v1, "newVideoState":I
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/incallui/InCallPresenter;->wakeUpScreen(Z)V

    .line 58
    invoke-static {v2}, Lcom/android/incallui/CallAdapterUtils;->isVideo(I)Z

    move-result v3

    .line 59
    .local v3, "wasVideoCall":Z
    invoke-static {v1}, Lcom/android/incallui/CallAdapterUtils;->isVideo(I)Z

    move-result v0

    .line 62
    .local v0, "isVideoCall":Z
    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 63
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4, v5}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->downgradeToAudio(Lcom/android/incallui/Call;)V

    .line 64
    iget-object v4, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-static {v4, p1}, Lcom/android/incallui/VoLTEProxy;->sendDowngradeAudioResponse(Lcom/android/incallui/Call;Landroid/telecom/VideoProfile;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    if-eq v2, v1, :cond_0

    .line 66
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4, v5, v1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->upgradeToVideoRequest(Lcom/android/incallui/Call;I)V

    goto :goto_0
.end method

.method public onSessionModifyResponseReceived(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    const/4 v1, 0x1

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionModifyResponseReceived status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requestedProfile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " responseProfile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    if-eq p1, v1, :cond_1

    .line 87
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2, p1, v3}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->upgradeToVideoFail(ILcom/android/incallui/Call;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    .line 89
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 91
    .local v1, "modifySucceeded":Z
    :goto_1
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/CallAdapterUtils;->isVideo(I)Z

    move-result v0

    .line 92
    .local v0, "isVideoCall":Z
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 93
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->upgradeToVideoSuccess(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 89
    .end local v0    # "isVideoCall":Z
    .end local v1    # "modifySucceeded":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 94
    .restart local v0    # "isVideoCall":Z
    .restart local v1    # "modifySucceeded":Z
    :cond_3
    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 95
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2, p1, v3}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->upgradeToVideoFail(ILcom/android/incallui/Call;)V

    goto :goto_0

    .line 96
    :cond_4
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->downgradeToAudio(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 100
    .end local v0    # "isVideoCall":Z
    .end local v1    # "modifySucceeded":Z
    :cond_5
    const-string v2, "onSessionModifyResponseReceived request and response Profiles are null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onVideoQualityChanged(I)V
    .locals 2
    .param p1, "videoQuality"    # I

    .prologue
    .line 132
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->videoQualityChanged(Lcom/android/incallui/Call;I)V

    .line 133
    return-void
.end method
