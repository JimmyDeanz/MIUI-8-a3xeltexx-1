.class public Lcom/android/incallui/CallAdapterUtils;
.super Ljava/lang/Object;
.source "CallAdapterUtils.java"


# direct methods
.method public static capabilitiesToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "capabilities"    # I

    .prologue
    .line 126
    invoke-static {p0}, Landroid/telecom/Call$Details;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCallExtra(Landroid/telecom/Call;)Landroid/os/Bundle;
    .locals 2
    .param p0, "telecommCall"    # Landroid/telecom/Call;

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 147
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.miui.phone.CALL_EXTRAS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCallIntentExtra(Landroid/telecom/Call;)Landroid/os/Bundle;
    .locals 1
    .param p0, "telecommCall"    # Landroid/telecom/Call;

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getCallType(Z)I
    .locals 1
    .param p0, "isVideoCall"    # Z

    .prologue
    .line 59
    if-eqz p0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getImsConferenceType(Landroid/telecom/Call;)Ljava/lang/String;
    .locals 2
    .param p0, "telecommCall"    # Landroid/telecom/Call;

    .prologue
    .line 151
    invoke-static {p0}, Lcom/android/incallui/CallAdapterUtils;->getCallExtra(Landroid/telecom/Call;)Landroid/os/Bundle;

    move-result-object v0

    .line 152
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "telephony.IMS_CONFERENCE_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getOriginalPlaceIntentExtras(Lcom/android/incallui/Call;)Landroid/os/Bundle;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getRoute(Landroid/telecom/AudioState;)I
    .locals 1
    .param p0, "audioState"    # Landroid/telecom/AudioState;

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/telecom/AudioState;->getRoute()I

    move-result v0

    return v0
.end method

.method public static getSubIdByAccount(Landroid/telecom/PhoneAccountHandle;)I
    .locals 4
    .param p0, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 173
    const/4 v2, -0x1

    .line 174
    .local v2, "result":I
    if-eqz p0, :cond_0

    .line 175
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    .line 176
    .local v1, "context":Lcom/android/incallui/InCallApp;
    invoke-static {v1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 177
    .local v0, "account":Landroid/telecom/PhoneAccount;
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v2

    .line 179
    .end local v0    # "account":Landroid/telecom/PhoneAccount;
    .end local v1    # "context":Lcom/android/incallui/InCallApp;
    :cond_0
    return v2
.end method

.method public static getSupportedRouteMask(Landroid/telecom/AudioState;)I
    .locals 1
    .param p0, "audioState"    # Landroid/telecom/AudioState;

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/telecom/AudioState;->getSupportedRouteMask()I

    move-result v0

    return v0
.end method

.method public static hasLocalVideoCapabilities(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 85
    if-eqz p0, :cond_1

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasLocalVoiceCapabilities(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 72
    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static hasRemoteVideoCapabilities(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 90
    if-eqz p0, :cond_1

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasRemoteVoiceCapabilities(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 76
    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAudioOnly(I)Z
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 101
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    return v0
.end method

.method public static isBidirectional(I)Z
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 68
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v0

    return v0
.end method

.method public static isGenericConferenceCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 134
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v0

    return v0
.end method

.method public static isMuted(Landroid/telecom/AudioState;)Z
    .locals 1
    .param p0, "audioState"    # Landroid/telecom/AudioState;

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v0

    return v0
.end method

.method public static isReceptionEnabled(I)Z
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 122
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isSpeechCodecHD(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 111
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/Utils;->isSpecialNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static isTransmissionEnabled(I)Z
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 118
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isVideo(I)Z
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 105
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoPaused(I)Z
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 64
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    return v0
.end method

.method public static registerCallback(Landroid/telecom/Call;Lcom/android/incallui/InCallVideoCallCallback;)V
    .locals 1
    .param p0, "telecommCall"    # Landroid/telecom/Call;
    .param p1, "videoCallCallback"    # Lcom/android/incallui/InCallVideoCallCallback;

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telecom/InCallService$VideoCall;->registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V

    .line 131
    return-void
.end method
