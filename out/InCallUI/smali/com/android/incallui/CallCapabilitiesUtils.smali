.class public Lcom/android/incallui/CallCapabilitiesUtils;
.super Ljava/lang/Object;
.source "CallCapabilitiesUtils.java"


# direct methods
.method public static canAdd(Lcom/android/incallui/Call;)Z
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getCurrentCallCount()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 14
    :cond_0
    :goto_0
    return v1

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 14
    .local v0, "fgCallState":I
    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static canHold(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canMute(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSubId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canSwap()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 20
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getCurrentCallCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
