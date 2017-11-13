.class public Lcom/android/incallui/VoLTEProxy;
.super Ljava/lang/Object;
.source "VoLTEProxy.java"


# direct methods
.method public static getOrientationMode(Lcom/android/incallui/Call;)I
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 77
    const/4 v0, 0x2

    return v0
.end method

.method public static modifySessionWhenCloseCamera(Lcom/android/incallui/Call;Z)V
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "isCloseCamera"    # Z

    .prologue
    .line 62
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    if-eqz p1, :cond_2

    .line 67
    new-instance v0, Landroid/telecom/VideoProfile;

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    invoke-direct {v0, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 72
    .local v0, "videoProfile":Landroid/telecom/VideoProfile;
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 73
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0

    .line 69
    .end local v0    # "videoProfile":Landroid/telecom/VideoProfile;
    :cond_2
    new-instance v0, Landroid/telecom/VideoProfile;

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .restart local v0    # "videoProfile":Landroid/telecom/VideoProfile;
    goto :goto_1
.end method

.method public static sendDowngradeAudioResponse(Lcom/android/incallui/Call;Landroid/telecom/VideoProfile;)V
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    if-eqz p0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v3

    if-eqz v3, :cond_2

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 59
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 56
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
