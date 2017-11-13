.class public Lcom/android/incallui/CallUtils;
.super Ljava/lang/Object;
.source "CallUtils.java"


# direct methods
.method public static canVideoPause(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 80
    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCallStateLabelFromState(ILandroid/telecom/DisconnectCause;ZI)Ljava/lang/String;
    .locals 7
    .param p0, "state"    # I
    .param p1, "cause"    # Landroid/telecom/DisconnectCause;
    .param p2, "isDoubleCall"    # Z
    .param p3, "redialTimes"    # I

    .prologue
    const v6, 0x7f0c0049

    .line 206
    const-string v3, "InCall"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get call state label from state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    .line 209
    .local v1, "context":Landroid/content/Context;
    const/4 v0, 0x0

    .line 211
    .local v0, "callStateLabel":Ljava/lang/String;
    const/4 v3, 0x2

    if-ne v3, p0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-object v0

    .line 214
    :cond_1
    const/4 v3, 0x3

    if-ne v3, p0, :cond_2

    .line 217
    if-eqz p2, :cond_0

    .line 218
    const v3, 0x7f0c0051

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_2
    const/16 v3, 0x8

    if-ne v3, p0, :cond_3

    .line 221
    const v3, 0x7f0c004e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 222
    :cond_3
    const/4 v3, 0x6

    if-ne v3, p0, :cond_4

    .line 223
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_4
    const/4 v3, 0x7

    if-ne v3, p0, :cond_6

    .line 225
    if-gez p3, :cond_5

    .line 226
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_5
    const v3, 0x7f0c0048

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_6
    const/4 v3, 0x4

    if-eq v3, p0, :cond_0

    const/4 v3, 0x5

    if-eq v3, p0, :cond_0

    .line 233
    const/16 v3, 0x9

    if-ne v3, p0, :cond_7

    .line 240
    const v3, 0x7f0c004f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_7
    const/16 v3, 0xa

    if-ne v3, p0, :cond_9

    .line 243
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    .line 244
    .local v2, "sequence":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 245
    const v3, 0x7f0c004d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 247
    :cond_8
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    goto :goto_0

    .end local v2    # "sequence":Ljava/lang/CharSequence;
    :cond_9
    const/16 v3, 0xd

    if-ne v3, p0, :cond_a

    .line 249
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_a
    const-string v3, "InCall"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCallStateWidgets: unexpected call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getConferenceString(ZZ)Ljava/lang/String;
    .locals 2
    .param p0, "isConf"    # Z
    .param p1, "isGeneric"    # Z

    .prologue
    .line 54
    const v0, 0x7f0c0050

    .line 55
    .local v0, "resId":I
    if-eqz p0, :cond_1

    .line 56
    const v0, 0x7f0c004a

    .line 60
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 57
    :cond_1
    if-eqz p1, :cond_0

    .line 58
    const v0, 0x7f0c004b

    goto :goto_0
.end method

.method public static getVideoCallStateLabelFromState(IIIZ)Ljava/lang/String;
    .locals 5
    .param p0, "state"    # I
    .param p1, "videoState"    # I
    .param p2, "sessionModificationState"    # I
    .param p3, "isConference"    # Z

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 259
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    .line 260
    .local v1, "context":Landroid/content/Context;
    const/4 v0, 0x0

    .line 261
    .local v0, "callStateLabel":Ljava/lang/String;
    const/4 v2, 0x3

    if-ne v2, p0, :cond_7

    .line 262
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 264
    const v2, 0x7f0c00cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    :cond_0
    :goto_0
    return-object v0

    .line 265
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 267
    const v2, 0x7f0c00ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 269
    :cond_2
    if-ne p2, v4, :cond_3

    .line 271
    const v2, 0x7f0c00cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_3
    if-ne p2, v3, :cond_4

    .line 275
    const v2, 0x7f0c00cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_4
    invoke-static {p1}, Lcom/android/incallui/CallAdapterUtils;->isVideo(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p1}, Lcom/android/incallui/CallAdapterUtils;->isVideoPaused(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 279
    const v2, 0x7f0c00c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_5
    invoke-static {p1}, Lcom/android/incallui/CallAdapterUtils;->isBidirectional(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 281
    const v2, 0x7f0c00c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_6
    if-eqz p3, :cond_0

    goto :goto_0

    .line 285
    :cond_7
    if-eq v3, p0, :cond_8

    if-ne v4, p0, :cond_0

    .line 286
    :cond_8
    invoke-static {p1}, Lcom/android/incallui/CallAdapterUtils;->isBidirectional(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    if-eqz p3, :cond_0

    goto :goto_0
.end method

.method private static hasCapability(Landroid/telecom/PhoneAccount;I)Z
    .locals 1
    .param p0, "phoneAccount"    # Landroid/telecom/PhoneAccount;
    .param p1, "capability"    # I

    .prologue
    .line 177
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isActiveVideoCall(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 161
    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAudioCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 173
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/CallAdapterUtils;->isAudioOnly(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConference(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 135
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConferenceModeSupported()Z
    .locals 2

    .prologue
    .line 131
    const-string v0, "leo"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGenericConference(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 139
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isGenericConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImsRegistered(Lcom/android/incallui/Call;)Z
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 193
    if-nez p0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v1

    .line 196
    :cond_1
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    .line 197
    .local v0, "mSlotId":I
    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    if-eq v0, v2, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/telephony/TelephonyManager;->isImsRegistered(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isIncomingVideoCall(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v1

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 157
    .local v0, "state":I
    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isOutgoingVideoCall(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v1

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 169
    .local v0, "state":I
    invoke-static {v0}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isThreeWayIncoming(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 143
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isGenericConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isThreeWayOutgoing(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 148
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isGenericConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 182
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

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

.method public static isVideoEnabled(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 64
    const-string v6, "telecom"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/TelecomManager;

    .line 65
    .local v4, "telecommMgr":Landroid/telecom/TelecomManager;
    if-nez v4, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v5

    .line 68
    :cond_1
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    .line 69
    .local v3, "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 70
    .local v0, "handle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v4, v0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    .line 71
    .local v2, "phoneAccount":Landroid/telecom/PhoneAccount;
    const/16 v6, 0x8

    invoke-static {v2, v6}, Lcom/android/incallui/CallUtils;->hasCapability(Landroid/telecom/PhoneAccount;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 72
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static isVtConferenceCall(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 186
    if-nez p0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isImsRegistered(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static makeVideoPauseProfile(Lcom/android/incallui/Call;)Landroid/telecom/VideoProfile;
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 84
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/CallAdapterUtils;->isAudioOnly(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 86
    new-instance v0, Landroid/telecom/VideoProfile;

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/CallUtils;->toPausedVideoState(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    return-object v0

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeVideoUnPauseProfile(Lcom/android/incallui/Call;)Landroid/telecom/VideoProfile;
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 90
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, Landroid/telecom/VideoProfile;

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/CallUtils;->toUnPausedVideoState(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    return-object v0
.end method

.method public static toPausedVideoState(I)I
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 99
    or-int/lit8 v0, p0, 0x4

    return v0
.end method

.method public static toUiOrientationMode(I)I
    .locals 1
    .param p0, "orientationMode"    # I

    .prologue
    .line 308
    packed-switch p0, :pswitch_data_0

    .line 316
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 310
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 312
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 314
    :pswitch_2
    const/16 v0, 0xa

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static toUnPausedVideoState(I)I
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 95
    and-int/lit8 v0, p0, -0x5

    return v0
.end method

.method public static translateCallStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 103
    packed-switch p0, :pswitch_data_0

    .line 127
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 105
    :pswitch_1
    const-string v0, "INVALID"

    goto :goto_0

    .line 107
    :pswitch_2
    const-string v0, "IDLE"

    goto :goto_0

    .line 109
    :pswitch_3
    const-string v0, "ACTIVE"

    goto :goto_0

    .line 111
    :pswitch_4
    const-string v0, "INCOMING"

    goto :goto_0

    .line 113
    :pswitch_5
    const-string v0, "WAITING"

    goto :goto_0

    .line 115
    :pswitch_6
    const-string v0, "DIALING"

    goto :goto_0

    .line 117
    :pswitch_7
    const-string v0, "DIALING"

    goto :goto_0

    .line 119
    :pswitch_8
    const-string v0, "HOLDING"

    goto :goto_0

    .line 121
    :pswitch_9
    const-string v0, "DISCONNECTED"

    goto :goto_0

    .line 123
    :pswitch_a
    const-string v0, "DISCONNECTING"

    goto :goto_0

    .line 125
    :pswitch_b
    const-string v0, "CONFERENCED"

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
