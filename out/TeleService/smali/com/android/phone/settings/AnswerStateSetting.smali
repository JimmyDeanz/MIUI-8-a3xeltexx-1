.class public Lcom/android/phone/settings/AnswerStateSetting;
.super Lmiui/preference/PreferenceActivity;
.source "AnswerStateSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAntiStrange:Landroid/preference/CheckBoxPreference;

.field private mFlashWhenRing:Landroid/preference/CheckBoxPreference;

.field private mHandonMode:Landroid/preference/CheckBoxPreference;

.field private mProximitySensor:Landroid/preference/CheckBoxPreference;

.field private mTurnOverMuteMode:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/phone/settings/AnswerStateSetting;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 38
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 39
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 42
    :cond_0
    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/AnswerStateSetting;->addPreferencesFromResource(I)V

    .line 43
    const-string v1, "button_enable_antispam_strange"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/AnswerStateSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/settings/AnswerStateSetting;->mAntiStrange:Landroid/preference/CheckBoxPreference;

    .line 44
    iget-object v1, p0, Lcom/android/phone/settings/AnswerStateSetting;->mAntiStrange:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 46
    const-string v1, "button_enable_proximity"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/AnswerStateSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/settings/AnswerStateSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    .line 47
    iget-object v1, p0, Lcom/android/phone/settings/AnswerStateSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    const-string v1, "button_flash_when_ring"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/AnswerStateSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/settings/AnswerStateSetting;->mFlashWhenRing:Landroid/preference/CheckBoxPreference;

    .line 50
    iget-object v1, p0, Lcom/android/phone/settings/AnswerStateSetting;->mFlashWhenRing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    const-string v1, "button_turnover_mute"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/AnswerStateSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/settings/AnswerStateSetting;->mTurnOverMuteMode:Landroid/preference/CheckBoxPreference;

    .line 53
    iget-object v1, p0, Lcom/android/phone/settings/AnswerStateSetting;->mTurnOverMuteMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    const-string v1, "button_handon_ringer"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/AnswerStateSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/settings/AnswerStateSetting;->mHandonMode:Landroid/preference/CheckBoxPreference;

    .line 56
    iget-object v1, p0, Lcom/android/phone/settings/AnswerStateSetting;->mHandonMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 102
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/phone/settings/AnswerStateSetting;->finish()V

    .line 104
    const/4 v1, 0x1

    .line 106
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/settings/AnswerStateSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/android/phone/settings/AnswerStateSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Telephony;->setProximitySensorEnable(Landroid/content/ContentResolver;Z)V

    .line 96
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 86
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/android/phone/settings/AnswerStateSetting;->mFlashWhenRing:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/android/phone/settings/AnswerStateSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flash_when_ring_enabled"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 89
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    iget-object v0, p0, Lcom/android/phone/settings/AnswerStateSetting;->mTurnOverMuteMode:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/android/phone/settings/AnswerStateSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Telephony;->setTurnOverMuteEnabled(Landroid/content/ContentResolver;Z)V

    goto :goto_0

    .line 91
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_3
    iget-object v0, p0, Lcom/android/phone/settings/AnswerStateSetting;->mHandonMode:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_4

    .line 92
    invoke-virtual {p0}, Lcom/android/phone/settings/AnswerStateSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Telephony;->setHandonRingerEnabled(Landroid/content/ContentResolver;Z)V

    goto :goto_0

    .line 93
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    iget-object v0, p0, Lcom/android/phone/settings/AnswerStateSetting;->mAntiStrange:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/phone/settings/AnswerStateSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Telephony;->setAntispamStangerEnabled(Landroid/content/ContentResolver;Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 61
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 63
    invoke-virtual {p0}, Lcom/android/phone/settings/AnswerStateSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/MiuiSettings$Telephony;->isProximitySensorEnable(Landroid/content/ContentResolver;)Z

    move-result v3

    .line 65
    .local v3, "isProximitySensor":Z
    iget-object v5, p0, Lcom/android/phone/settings/AnswerStateSetting;->mProximitySensor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/android/phone/settings/AnswerStateSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "flash_when_ring_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 69
    .local v1, "isFlashWhenRingEnable":Z
    iget-object v5, p0, Lcom/android/phone/settings/AnswerStateSetting;->mFlashWhenRing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/android/phone/settings/AnswerStateSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/MiuiSettings$Telephony;->isTurnOverMuteEnabled(Landroid/content/ContentResolver;)Z

    move-result v4

    .line 72
    .local v4, "isTurnOverMuteMode":Z
    iget-object v5, p0, Lcom/android/phone/settings/AnswerStateSetting;->mTurnOverMuteMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/android/phone/settings/AnswerStateSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/MiuiSettings$Telephony;->isHandonRingerEnabled(Landroid/content/ContentResolver;)Z

    move-result v2

    .line 75
    .local v2, "isHandonMode":Z
    iget-object v5, p0, Lcom/android/phone/settings/AnswerStateSetting;->mHandonMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/android/phone/settings/AnswerStateSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/MiuiSettings$Telephony;->isAntispamStangerEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 78
    .local v0, "isAntispam":Z
    iget-object v5, p0, Lcom/android/phone/settings/AnswerStateSetting;->mAntiStrange:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 79
    return-void
.end method
