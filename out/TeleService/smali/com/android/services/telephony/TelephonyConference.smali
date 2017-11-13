.class public Lcom/android/services/telephony/TelephonyConference;
.super Landroid/telecom/Conference;
.source "TelephonyConference.java"


# direct methods
.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;)V
    .locals 1
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/telecom/Conference;-><init>(Landroid/telecom/PhoneAccountHandle;)V

    .line 37
    const/16 v0, 0xc3

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConference;->setConnectionCapabilities(I)V

    .line 42
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConference;->setActive()V

    .line 43
    return-void
.end method

.method private disconnectCall(Landroid/telecom/Connection;)Z
    .locals 5
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    const/4 v2, 0x0

    .line 64
    const-string v3, "onDisconnect"

    invoke-direct {p0, p1, v3}, Lcom/android/services/telephony/TelephonyConference;->getMultipartyCallForConnection(Landroid/telecom/Connection;Ljava/lang/String;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 65
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 66
    const-string v3, "Found multiparty call to hangup for conference."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/4 v2, 0x1

    .line 74
    :cond_0
    :goto_0
    return v2

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v3, "Exception thrown trying to hangup conference"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3, v4}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getFirstConnection()Lcom/android/services/telephony/TelephonyConnection;
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConference;->getConnections()Ljava/util/List;

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

    check-cast v1, Lcom/android/services/telephony/TelephonyConnection;

    goto :goto_0
.end method

.method private getMultipartyCallForConnection(Landroid/telecom/Connection;Ljava/lang/String;)Lcom/android/internal/telephony/Call;
    .locals 3
    .param p1, "connection"    # Landroid/telecom/Connection;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/android/services/telephony/TelephonyConference;->getOriginalConnection(Landroid/telecom/Connection;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 182
    .local v1, "radioConnection":Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 184
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getOriginalConnection(Landroid/telecom/Connection;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 194
    instance-of v0, p1, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v0, :cond_0

    .line 195
    check-cast p1, Lcom/android/services/telephony/TelephonyConnection;

    .end local p1    # "connection":Landroid/telecom/Connection;
    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .restart local p1    # "connection":Landroid/telecom/Connection;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrimaryConnection()Landroid/telecom/Connection;
    .locals 6

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConference;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 158
    .local v1, "connections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 159
    :cond_0
    const/4 v3, 0x0

    .line 176
    :cond_1
    :goto_0
    return-object v3

    .line 163
    :cond_2
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    .line 166
    .local v3, "primaryConnection":Landroid/telecom/Connection;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 167
    .local v0, "connection":Landroid/telecom/Connection;
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConference;->getOriginalConnection(Landroid/telecom/Connection;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    .line 170
    .local v4, "radioConnection":Lcom/android/internal/telephony/Connection;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 171
    move-object v3, v0

    .line 172
    goto :goto_0
.end method

.method public onConnectionAdded(Landroid/telecom/Connection;)V
    .locals 1
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 148
    instance-of v0, p1, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/services/telephony/TelephonyConnection;

    .end local p1    # "connection":Landroid/telecom/Connection;
    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->wasImsConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConference;->removeCapability(I)V

    .line 152
    :cond_0
    return-void
.end method

.method public onDisconnect()V
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConference;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 51
    .local v0, "connection":Landroid/telecom/Connection;
    invoke-direct {p0, v0}, Lcom/android/services/telephony/TelephonyConference;->disconnectCall(Landroid/telecom/Connection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    .end local v0    # "connection":Landroid/telecom/Connection;
    :cond_1
    return-void
.end method

.method public onHold()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConference;->getFirstConnection()Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    .line 111
    .local v0, "connection":Lcom/android/services/telephony/TelephonyConnection;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->performHold()V

    .line 114
    :cond_0
    return-void
.end method

.method public onMerge(Landroid/telecom/Connection;)V
    .locals 4
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 96
    :try_start_0
    check-cast p1, Lcom/android/services/telephony/TelephonyConnection;

    .end local p1    # "connection":Landroid/telecom/Connection;
    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 97
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    .line 98
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->conference()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "Exception thrown trying to merge call into a conference"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPlayDtmfTone(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConference;->getFirstConnection()Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    .line 130
    .local v0, "connection":Lcom/android/services/telephony/TelephonyConnection;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->onPlayDtmfTone(C)V

    .line 133
    :cond_0
    return-void
.end method

.method public onSeparate(Landroid/telecom/Connection;)V
    .locals 4
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/services/telephony/TelephonyConference;->getOriginalConnection(Landroid/telecom/Connection;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 87
    .local v1, "radioConnection":Lcom/android/internal/telephony/Connection;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "Exception thrown trying to separate a conference call"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStopDtmfTone()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConference;->getFirstConnection()Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    .line 138
    .local v0, "connection":Lcom/android/services/telephony/TelephonyConnection;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->onStopDtmfTone()V

    .line 141
    :cond_0
    return-void
.end method

.method public onUnhold()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConference;->getFirstConnection()Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    .line 122
    .local v0, "connection":Lcom/android/services/telephony/TelephonyConnection;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->performUnhold()V

    .line 125
    :cond_0
    return-void
.end method
