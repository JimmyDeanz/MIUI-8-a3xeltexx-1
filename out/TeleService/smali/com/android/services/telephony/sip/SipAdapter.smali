.class public Lcom/android/services/telephony/sip/SipAdapter;
.super Ljava/lang/Object;
.source "SipAdapter.java"


# direct methods
.method static isSipProfileEnable(Landroid/content/Context;Landroid/net/sip/SipProfile;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profile"    # Landroid/net/sip/SipProfile;

    .prologue
    const/4 v7, 0x1

    .line 28
    if-nez p1, :cond_0

    .line 45
    :goto_0
    return v7

    .line 32
    :cond_0
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v6

    .line 33
    .local v6, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v6, v7}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts(Z)Ljava/util/List;

    move-result-object v1

    .line 35
    .local v1, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 36
    .local v3, "handle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "className":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, "handleId":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-class v7, Lcom/android/services/telephony/sip/SipConnectionService;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 39
    invoke-virtual {v6, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 40
    .local v0, "account":Landroid/telecom/PhoneAccount;
    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->isEnabled()Z

    move-result v7

    goto :goto_0

    .line 45
    .end local v0    # "account":Landroid/telecom/PhoneAccount;
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "handle":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "handleId":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method static startSipService(Lcom/android/services/telephony/sip/SipAccountRegistry;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "sipAccountRegistry"    # Lcom/android/services/telephony/sip/SipAccountRegistry;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sipProfileName"    # Ljava/lang/String;
    .param p3, "enableProfile"    # Z

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/services/telephony/sip/SipAccountRegistry;->startSipService(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 20
    return-void
.end method
