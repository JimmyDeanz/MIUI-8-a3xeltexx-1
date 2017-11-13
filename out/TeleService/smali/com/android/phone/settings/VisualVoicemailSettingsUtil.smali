.class public Lcom/android/phone/settings/VisualVoicemailSettingsUtil;
.super Ljava/lang/Object;
.source "VisualVoicemailSettingsUtil.java"


# direct methods
.method public static getVisualVoicemailCredentials(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 124
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 125
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p1, p2}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailSharedPrefsKey(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVisualVoicemailLastFullSyncTime(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 161
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 162
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "last_full_sync_timestamp"

    invoke-static {v1, p1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailSharedPrefsKey(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getVisualVoicemailRetryInterval(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 130
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "sync_retry_interval"

    invoke-static {v1, p1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailSharedPrefsKey(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0xdbba0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method private static getVisualVoicemailSharedPrefsKey(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visual_voicemail_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isVisualVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    const/4 v1, 0x0

    .line 73
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return v1

    .line 76
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "is_enabled"

    invoke-static {v2, p1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailSharedPrefsKey(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static isVisualVoicemailEnabled(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 82
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->isVisualVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v0

    return v0
.end method

.method public static isVisualVoicemailUserSet(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    const/4 v1, 0x0

    .line 93
    if-nez p1, :cond_0

    .line 97
    :goto_0
    return v1

    .line 96
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "is_user_set"

    invoke-static {v2, p1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailSharedPrefsKey(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static resetVisualVoicemailRetryInterval(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 137
    const-wide/32 v0, 0xdbba0

    invoke-static {p0, p1, v0, v1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->setVisualVoicemailRetryInterval(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;J)V

    .line 138
    return-void
.end method

.method public static setVisualVoicemailCredentialsFromStatusMessage(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Lcom/android/phone/vvm/omtp/sms/StatusMessage;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "message"    # Lcom/android/phone/vvm/omtp/sms/StatusMessage;

    .prologue
    .line 104
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 105
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 107
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ipt"

    invoke-static {v2, p1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailSharedPrefsKey(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->getImapPort()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    const-string v2, "srv"

    invoke-static {v2, p1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailSharedPrefsKey(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->getServerAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    const-string v2, "u"

    invoke-static {v2, p1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailSharedPrefsKey(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->getImapUserName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    const-string v2, "pw"

    invoke-static {v2, p1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailSharedPrefsKey(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/phone/vvm/omtp/sms/StatusMessage;->getImapPassword()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    return-void
.end method

.method public static setVisualVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;ZZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "isEnabled"    # Z
    .param p3, "isUserSet"    # Z

    .prologue
    .line 61
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 62
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "is_enabled"

    invoke-static {v2, p1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailSharedPrefsKey(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 65
    const-string v2, "is_user_set"

    invoke-static {v2, p1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailSharedPrefsKey(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method

.method public static setVisualVoicemailEnabled(Lcom/android/internal/telephony/Phone;ZZ)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "isEnabled"    # Z
    .param p2, "isUserSet"    # Z

    .prologue
    .line 55
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->setVisualVoicemailEnabled(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;ZZ)V

    .line 57
    return-void
.end method

.method public static setVisualVoicemailLastFullSyncTime(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "timestamp"    # J

    .prologue
    .line 151
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_full_sync_timestamp"

    invoke-static {v1, p1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailSharedPrefsKey(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    return-void
.end method

.method public static setVisualVoicemailRetryInterval(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "interval"    # J

    .prologue
    .line 142
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sync_retry_interval"

    invoke-static {v1, p1}, Lcom/android/phone/settings/VisualVoicemailSettingsUtil;->getVisualVoicemailSharedPrefsKey(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x5265c00

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    return-void
.end method
