.class final Lcom/android/services/telephony/GsmConnection;
.super Lcom/android/services/telephony/TelephonyConnection;
.source "GsmConnection.java"


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/services/telephony/TelephonyConnection;-><init>(Lcom/android/internal/telephony/Connection;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected buildConnectionCapabilities()I
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->buildConnectionCapabilities()I

    move-result v0

    .line 61
    .local v0, "capabilities":I
    or-int/lit8 v0, v0, 0x40

    .line 62
    or-int/lit8 v0, v0, 0x2

    .line 63
    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 64
    :cond_0
    or-int/lit8 v0, v0, 0x1

    .line 66
    :cond_1
    return v0
.end method

.method public cloneConnection()Lcom/android/services/telephony/TelephonyConnection;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/android/services/telephony/GsmConnection;

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/services/telephony/GsmConnection;-><init>(Lcom/android/internal/telephony/Connection;)V

    .line 39
    .local v0, "gsmConnection":Lcom/android/services/telephony/GsmConnection;
    return-object v0
.end method

.method public onPlayDtmfTone(C)V
    .locals 1
    .param p1, "digit"    # C

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 48
    :cond_0
    return-void
.end method

.method public onStopDtmfTone()V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 56
    :cond_0
    return-void
.end method
