.class public Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;
.super Ljava/lang/Object;
.source "VoicemailNotificationSettingsUtil.java"


# direct methods
.method public static getRingtoneUri(Lcom/android/internal/telephony/Phone;)Landroid/net/Uri;
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 71
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p0, v0}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->migrateVoicemailRingtoneSettingsIfNeeded(Lcom/android/internal/telephony/Phone;Landroid/content/SharedPreferences;)V

    .line 73
    invoke-static {p0}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->getVoicemailRingtoneSharedPrefsKey(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "uriString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getVoicemailRingtoneSharedPrefsKey(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "voicemail_notification_ringtone_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVoicemailVibrationSharedPrefsKey(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "voicemail_notification_vibrate_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isVibrationEnabled(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 56
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p0, v0}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->migrateVoicemailVibrationSettingsIfNeeded(Lcom/android/internal/telephony/Phone;Landroid/content/SharedPreferences;)V

    .line 58
    invoke-static {p0}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->getVoicemailVibrationSharedPrefsKey(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static migrateVoicemailRingtoneSettingsIfNeeded(Lcom/android/internal/telephony/Phone;Landroid/content/SharedPreferences;)V
    .locals 6
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 126
    invoke-static {p0}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->getVoicemailRingtoneSharedPrefsKey(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 130
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string v4, "button_voicemail_notification_ringtone_key"

    invoke-interface {p1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    const-string v4, "button_voicemail_notification_ringtone_key"

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "uriString":Ljava/lang/String;
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "button_voicemail_notification_ringtone_key"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static migrateVoicemailVibrationSettingsIfNeeded(Lcom/android/internal/telephony/Phone;Landroid/content/SharedPreferences;)V
    .locals 7
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 87
    invoke-static {p0}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->getVoicemailVibrationSharedPrefsKey(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 91
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v5, "button_voicemail_notification_vibrate_key"

    invoke-interface {p1, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 96
    const-string v5, "button_voicemail_notification_vibrate_key"

    const/4 v6, 0x0

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 99
    .local v4, "voicemailVibrate":Z
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "button_voicemail_notification_vibrate_when_key"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "voicemailVibrate":Z
    :cond_2
    const-string v5, "button_voicemail_notification_vibrate_when_key"

    invoke-interface {p1, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 108
    const-string v5, "button_voicemail_notification_vibrate_when_key"

    const-string v6, "never"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "vibrateWhen":Ljava/lang/String;
    const-string v5, "always"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 112
    .restart local v4    # "voicemailVibrate":Z
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 113
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "button_voicemail_notification_vibrate_key"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setRingtoneUri(Lcom/android/internal/telephony/Phone;Landroid/net/Uri;)V
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 62
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 63
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "ringtoneUriStr":Ljava/lang/String;
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 66
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p0}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->getVoicemailRingtoneSharedPrefsKey(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    return-void

    .line 63
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "ringtoneUriStr":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static setVibrationEnabled(Lcom/android/internal/telephony/Phone;Z)V
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "isEnabled"    # Z

    .prologue
    .line 49
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 50
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p0}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->getVoicemailVibrationSharedPrefsKey(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    return-void
.end method
