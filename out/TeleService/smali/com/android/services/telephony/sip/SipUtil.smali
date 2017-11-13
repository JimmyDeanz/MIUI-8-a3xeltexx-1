.class public Lcom/android/services/telephony/sip/SipUtil;
.super Ljava/lang/Object;
.source "SipUtil.java"


# direct methods
.method static createAccountHandle(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sipProfileName"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Landroid/telecom/PhoneAccountHandle;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/services/telephony/sip/SipConnectionService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, p1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object v0
.end method

.method static createIncomingCallPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/services/telephony/sip/SipBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone.SIP_INCOMING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v1, "com.android.services.telephony.sip.phone_account"

    invoke-static {p0, p1}, Lcom/android/services/telephony/sip/SipUtil;->createAccountHandle(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 62
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method static createPhoneAccount(Landroid/content/Context;Landroid/net/sip/SipProfile;)Landroid/telecom/PhoneAccount;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profile"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "sipAddress":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 114
    .local v3, "sipUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/services/telephony/sip/SipUtil;->createAccountHandle(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 117
    .local v0, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v4, "supportedUriSchemes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "sip"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-static {p0}, Lcom/android/services/telephony/sip/SipUtil;->useSipForPstnCalls(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    const-string v5, "tel"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telecom/PhoneAccount;->builder(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v5

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/telecom/PhoneAccount$Builder;->setAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/telecom/PhoneAccount$Builder;->setShortDescription(Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020019

    invoke-static {v6, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telecom/PhoneAccount$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/telecom/PhoneAccount$Builder;->setSupportedUriSchemes(Ljava/util/List;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v1

    .line 132
    .local v1, "builder":Landroid/telecom/PhoneAccount$Builder;
    invoke-virtual {v1}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    move-result-object v5

    return-object v5
.end method

.method static getSipProfileNameFromPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 3
    .param p0, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    const/4 v1, 0x0

    .line 89
    if-nez p0, :cond_1

    move-object v0, v1

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 93
    :cond_1
    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "sipProfileName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 95
    goto :goto_0
.end method

.method public static isPhoneIdle(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 66
    const-string v2, "telecom"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 68
    .local v0, "manager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVoipSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/internal/R$bool;->config_built_in_sip_phone:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/internal/R$bool;->config_voice_capable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static updateAutoRegistrationFlag(Landroid/net/sip/SipProfile;Lcom/android/services/telephony/sip/SipProfileDb;Z)V
    .locals 5
    .param p0, "p"    # Landroid/net/sip/SipProfile;
    .param p1, "db"    # Lcom/android/services/telephony/sip/SipProfileDb;
    .param p2, "isEnabled"    # Z

    .prologue
    .line 162
    new-instance v2, Landroid/net/sip/SipProfile$Builder;

    invoke-direct {v2, p0}, Landroid/net/sip/SipProfile$Builder;-><init>(Landroid/net/sip/SipProfile;)V

    invoke-virtual {v2, p2}, Landroid/net/sip/SipProfile$Builder;->setAutoRegistration(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v1

    .line 168
    .local v1, "newProfile":Landroid/net/sip/SipProfile;
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/services/telephony/sip/SipProfileDb;->deleteProfile(Landroid/net/sip/SipProfile;)V

    .line 169
    invoke-virtual {p1, v1}, Lcom/android/services/telephony/sip/SipProfileDb;->saveProfile(Landroid/net/sip/SipProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SIP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAutoRegistrationFlag, exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static useSipForPstnCalls(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    new-instance v0, Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 142
    .local v0, "sipSharedPreferences":Lcom/android/services/telephony/sip/SipSharedPreferences;
    invoke-virtual {v0}, Lcom/android/services/telephony/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIP_ALWAYS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static useSipToReceiveIncomingCalls(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEnabled"    # Z

    .prologue
    .line 151
    new-instance v2, Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-direct {v2, p0}, Lcom/android/services/telephony/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    .line 154
    .local v2, "profileDb":Lcom/android/services/telephony/sip/SipProfileDb;
    invoke-virtual {v2}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v3

    .line 155
    .local v3, "sipProfileList":Ljava/util/List;, "Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/sip/SipProfile;

    .line 156
    .local v1, "p":Landroid/net/sip/SipProfile;
    invoke-static {v1, v2, p1}, Lcom/android/services/telephony/sip/SipUtil;->updateAutoRegistrationFlag(Landroid/net/sip/SipProfile;Lcom/android/services/telephony/sip/SipProfileDb;Z)V

    goto :goto_0

    .line 158
    .end local v1    # "p":Landroid/net/sip/SipProfile;
    :cond_0
    return-void
.end method
