.class public final Lcom/android/services/telephony/sip/SipPhoneAccountSettingsActivity;
.super Landroid/app/Activity;
.source "SipPhoneAccountSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipPhoneAccountSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 42
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "SipSettingsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    if-eqz v1, :cond_0

    .line 44
    const-string v6, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 46
    .local v0, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    const-string v6, "SipSettingsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    if-eqz v0, :cond_0

    .line 49
    new-instance v3, Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-direct {v3, p0}, Lcom/android/services/telephony/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    .line 50
    .local v3, "profileDb":Lcom/android/services/telephony/sip/SipProfileDb;
    invoke-static {v0}, Lcom/android/services/telephony/sip/SipUtil;->getSipProfileNameFromPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "profileName":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileFromName(Ljava/lang/String;)Landroid/net/sip/SipProfile;

    move-result-object v2

    .line 52
    .local v2, "profile":Landroid/net/sip/SipProfile;
    if-eqz v2, :cond_0

    .line 53
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/services/telephony/sip/SipEditor;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v5, "settingsIntent":Landroid/content/Intent;
    const-string v6, "sip_profile"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v5}, Lcom/android/services/telephony/sip/SipPhoneAccountSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    .end local v0    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v2    # "profile":Landroid/net/sip/SipProfile;
    .end local v3    # "profileDb":Lcom/android/services/telephony/sip/SipProfileDb;
    .end local v4    # "profileName":Ljava/lang/String;
    .end local v5    # "settingsIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipPhoneAccountSettingsActivity;->finish()V

    .line 61
    return-void
.end method
