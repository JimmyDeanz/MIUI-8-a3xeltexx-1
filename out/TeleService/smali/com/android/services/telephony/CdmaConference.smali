.class public Lcom/android/services/telephony/CdmaConference;
.super Landroid/telecom/Conference;
.source "CdmaConference.java"


# instance fields
.field private mCapabilities:I


# direct methods
.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;)V
    .locals 0
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/telecom/Conference;-><init>(Landroid/telecom/PhoneAccountHandle;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConference;->setActive()V

    .line 43
    return-void
.end method

.method private getFirstConnection()Lcom/android/services/telephony/CdmaConnection;
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConference;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 203
    .local v0, "connections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const/4 v1, 0x0

    .line 206
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/services/telephony/CdmaConnection;

    goto :goto_0
.end method

.method private getOriginalCall()Lcom/android/internal/telephony/Call;
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConference;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 149
    .local v0, "connections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection;

    invoke-direct {p0, v2}, Lcom/android/services/telephony/CdmaConference;->getOriginalConnection(Landroid/telecom/Connection;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 152
    .local v1, "originalConnection":Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 156
    .end local v1    # "originalConnection":Lcom/android/internal/telephony/Connection;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getOriginalConnection(Landroid/telecom/Connection;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    const/4 v0, 0x0

    .line 193
    instance-of v1, p1, Lcom/android/services/telephony/CdmaConnection;

    if-eqz v1, :cond_0

    .line 194
    check-cast p1, Lcom/android/services/telephony/CdmaConnection;

    .end local p1    # "connection":Landroid/telecom/Connection;
    invoke-virtual {p1}, Lcom/android/services/telephony/CdmaConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 196
    .restart local p1    # "connection":Landroid/telecom/Connection;
    :cond_0
    const-string v1, "Non CDMA connection found in a CDMA conference"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final isSwapSupportedAfterMerge()Z
    .locals 7

    .prologue
    .line 166
    const/4 v4, 0x1

    .line 167
    .local v4, "supportSwapAfterMerge":Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    .line 169
    .local v3, "context":Landroid/content/Context;
    if-eqz v3, :cond_0

    .line 170
    const-string v5, "carrier_config"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 174
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v0, 0x0

    .line 175
    .local v0, "b":Landroid/os/PersistableBundle;
    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConference;->getOriginalCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 176
    .local v1, "call":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 182
    :goto_0
    if-eqz v0, :cond_0

    .line 183
    const-string v5, "support_swap_after_merge_bool"

    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current network support swap after call merged capability is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v1    # "call":Lcom/android/internal/telephony/Call;
    .end local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    :cond_0
    return v4

    .line 179
    .restart local v0    # "b":Landroid/os/PersistableBundle;
    .restart local v1    # "call":Lcom/android/internal/telephony/Call;
    .restart local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_0
.end method

.method private sendFlash()V
    .locals 4

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConference;->getOriginalCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 125
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 128
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "Error while trying to send flash command."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onDisconnect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConference;->getOriginalCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 56
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 57
    const-string v2, "Found multiparty call to hangup for conference."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "Exception thrown trying to hangup conference"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onHold()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "Hold not supported for CDMA conference call."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public onMerge()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "Merging CDMA conference call."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget v0, p0, Lcom/android/services/telephony/CdmaConference;->mCapabilities:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/services/telephony/CdmaConference;->mCapabilities:I

    .line 90
    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConference;->isSwapSupportedAfterMerge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget v0, p0, Lcom/android/services/telephony/CdmaConference;->mCapabilities:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/services/telephony/CdmaConference;->mCapabilities:I

    .line 93
    :cond_0
    iget v0, p0, Lcom/android/services/telephony/CdmaConference;->mCapabilities:I

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/CdmaConference;->updateCapabilities(I)V

    .line 94
    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConference;->sendFlash()V

    .line 95
    return-void
.end method

.method public onPlayDtmfTone(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConference;->getFirstConnection()Lcom/android/services/telephony/CdmaConnection;

    move-result-object v0

    .line 100
    .local v0, "connection":Lcom/android/services/telephony/CdmaConnection;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1}, Lcom/android/services/telephony/CdmaConnection;->onPlayDtmfTone(C)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v1, "No CDMA connection found while trying to play dtmf tone."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onSeparate(Landroid/telecom/Connection;)V
    .locals 3
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 68
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "Separate not supported for CDMA conference call."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public onStopDtmfTone()V
    .locals 3

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConference;->getFirstConnection()Lcom/android/services/telephony/CdmaConnection;

    move-result-object v0

    .line 110
    .local v0, "connection":Lcom/android/services/telephony/CdmaConnection;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/android/services/telephony/CdmaConnection;->onStopDtmfTone()V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v1, "No CDMA connection found while trying to stop dtmf tone."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onSwap()V
    .locals 2

    .prologue
    .line 119
    const-string v0, "Swapping CDMA conference call."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConference;->sendFlash()V

    .line 121
    return-void
.end method

.method public onUnhold()V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "Unhold not supported for CDMA conference call."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public updateCapabilities(I)V
    .locals 0
    .param p1, "capabilities"    # I

    .prologue
    .line 46
    or-int/lit16 p1, p1, 0x4040

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/services/telephony/CdmaConference;->setConnectionCapabilities(I)V

    .line 48
    return-void
.end method
