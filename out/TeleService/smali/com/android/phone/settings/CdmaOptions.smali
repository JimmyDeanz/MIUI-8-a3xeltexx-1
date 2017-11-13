.class public Lcom/android/phone/settings/CdmaOptions;
.super Lcom/android/phone/settings/CommonOptions;
.source "CdmaOptions.java"


# instance fields
.field private mButtonCdmaSystemSelect:Lcom/android/phone/settings/CdmaSystemSelectListPreference;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "prefActivity"    # Landroid/preference/PreferenceActivity;
    .param p2, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/settings/CommonOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    .line 48
    iget-object v0, p0, Lcom/android/phone/settings/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    const v1, 0x7f06001d

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/phone/settings/CdmaOptions;->create()V

    .line 50
    return-void
.end method

.method private setCdmaOptionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/settings/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/settings/CdmaSystemSelectListPreference;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/phone/settings/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/settings/CdmaSystemSelectListPreference;

    invoke-virtual {v0, p1}, Lcom/android/phone/settings/CdmaSystemSelectListPreference;->setEnabled(Z)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/CdmaOptions;->mButtonApnPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/phone/settings/CdmaOptions;->mButtonApnPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/phone/settings/CdmaOptions;->mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/android/phone/settings/CdmaOptions;->mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 91
    :cond_2
    return-void
.end method


# virtual methods
.method protected create()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/phone/settings/CommonOptions;->create()V

    .line 55
    iget-object v0, p0, Lcom/android/phone/settings/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "cdma_system_select_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/settings/CdmaSystemSelectListPreference;

    iput-object v0, p0, Lcom/android/phone/settings/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/settings/CdmaSystemSelectListPreference;

    .line 58
    iget-object v0, p0, Lcom/android/phone/settings/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/settings/CdmaSystemSelectListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/CdmaSystemSelectListPreference;->setEnabled(Z)V

    .line 59
    return-void
.end method

.method public preferenceTreeClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_system_select_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "preferenceTreeClick: return BUTTON_CDMA_ROAMING_KEY true"

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CdmaOptions;->log(Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/settings/CommonOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setOptionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CdmaOptions;->setCdmaOptionEnabled(Z)V

    .line 79
    return-void
.end method

.method public showDialog(Landroid/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_system_select_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/phone/settings/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/settings/CdmaSystemSelectListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/CdmaSystemSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 74
    :cond_0
    return-void
.end method
