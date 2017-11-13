.class public Lcom/android/phone/settings/AccessibilitySettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "AccessibilitySettingsFragment.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonHac:Landroid/preference/CheckBoxPreference;

.field private mButtonTty:Lcom/android/phone/settings/TtyModeListPreference;

.field private mContext:Landroid/content/Context;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/phone/settings/AccessibilitySettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 45
    new-instance v0, Lcom/android/phone/settings/AccessibilitySettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/AccessibilitySettingsFragment$1;-><init>(Lcom/android/phone/settings/AccessibilitySettingsFragment;)V

    iput-object v0, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private getVolteTtySupported()Z
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 142
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "carrier_volte_tty_supported_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mContext:Landroid/content/Context;

    .line 73
    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 75
    const/high16 v1, 0x7f060000

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->addPreferencesFromResource(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f080287

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/TtyModeListPreference;

    iput-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonTty:Lcom/android/phone/settings/TtyModeListPreference;

    .line 79
    const-string v1, "button_hac_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonHac:Landroid/preference/CheckBoxPreference;

    .line 81
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->isTtyModeSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonTty:Lcom/android/phone/settings/TtyModeListPreference;

    invoke-virtual {v1}, Lcom/android/phone/settings/TtyModeListPreference;->init()V

    .line 88
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->isHearingAidCompatibilitySupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "hearing_aid"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 91
    .local v0, "hac":I
    iget-object v4, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonHac:Landroid/preference/CheckBoxPreference;

    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 96
    .end local v0    # "hac":I
    :goto_2
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonTty:Lcom/android/phone/settings/TtyModeListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 85
    iput-object v5, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonTty:Lcom/android/phone/settings/TtyModeListPreference;

    goto :goto_0

    .restart local v0    # "hac":I
    :cond_1
    move v1, v3

    .line 91
    goto :goto_1

    .line 93
    .end local v0    # "hac":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonHac:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 94
    iput-object v5, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonHac:Landroid/preference/CheckBoxPreference;

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 111
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 113
    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->getVolteTtySupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 116
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 118
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 122
    iget-object v2, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonTty:Lcom/android/phone/settings/TtyModeListPreference;

    if-ne p2, v2, :cond_0

    .line 136
    :goto_0
    return v1

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonHac:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 125
    iget-object v2, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mButtonHac:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 128
    .local v0, "hac":I
    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hearing_aid"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    iget-object v3, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "HACSetting"

    if-ne v0, v1, :cond_2

    const-string v2, "ON"

    :goto_1
    invoke-virtual {v3, v4, v2}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "OFF"

    goto :goto_1

    .end local v0    # "hac":I
    :cond_3
    move v1, v0

    .line 136
    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 102
    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->getVolteTtySupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 105
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 107
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    return-void
.end method
