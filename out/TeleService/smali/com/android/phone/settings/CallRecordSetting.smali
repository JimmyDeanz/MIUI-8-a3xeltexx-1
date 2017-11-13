.class public Lcom/android/phone/settings/CallRecordSetting;
.super Lmiui/preference/PreferenceActivity;
.source "CallRecordSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAutoRecordSwitcher:Landroid/preference/CheckBoxPreference;

.field private mCustomCategory:Landroid/preference/PreferenceCategory;

.field private mRecordNotifySwitcher:Landroid/preference/CheckBoxPreference;

.field private mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

.field private mUnknownNumberRecord:Landroid/preference/CheckBoxPreference;

.field private mWhitelist:Lmiui/preference/ValuePreference;

.field private mYellowpageNumberRecord:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/CallRecordSetting;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/CallRecordSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CallRecordSetting;->updateCustomCategory(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/CallRecordSetting;)Lmiui/preference/ValuePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallRecordSetting;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/settings/CallRecordSetting;->mWhitelist:Lmiui/preference/ValuePreference;

    return-object v0
.end method

.method private checkRemovePreferences()V
    .locals 2

    .prologue
    .line 186
    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/phone/settings/CallRecordSetting;->mCustomCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "button_auto_record_yellowpage"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    :cond_0
    return-void
.end method

.method private createScenarios()V
    .locals 7

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/phone/settings/CallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/MiuiSettings$Telephony;->getRecordScenario(Landroid/content/ContentResolver;)I

    move-result v3

    .line 128
    .local v3, "scenario":I
    invoke-virtual {p0}, Lcom/android/phone/settings/CallRecordSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070038

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "scenarioStrings":[Ljava/lang/String;
    new-instance v1, Lcom/android/phone/settings/CallRecordSetting$1;

    invoke-direct {v1, p0, v4}, Lcom/android/phone/settings/CallRecordSetting$1;-><init>(Lcom/android/phone/settings/CallRecordSetting;[Ljava/lang/String;)V

    .line 141
    .local v1, "listener":Landroid/preference/Preference$OnPreferenceClickListener;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 142
    new-instance v2, Lmiui/preference/RadioButtonPreference;

    invoke-direct {v2, p0}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 143
    .local v2, "pref":Lmiui/preference/RadioButtonPreference;
    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Lmiui/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v2, v1}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 145
    iget-object v5, p0, Lcom/android/phone/settings/CallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v5, v2}, Lmiui/preference/RadioButtonPreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v2    # "pref":Lmiui/preference/RadioButtonPreference;
    :cond_0
    iget-object v5, p0, Lcom/android/phone/settings/CallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v5, v3}, Lmiui/preference/RadioButtonPreferenceCategory;->setCheckedPosition(I)V

    .line 148
    return-void
.end method

.method public static isAutoRecordOn(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Telephony;->isAutoRecordEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method private updateCustomCategory(Z)V
    .locals 2
    .param p1, "shoudShowCustomCategory"    # Z

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/phone/settings/CallRecordSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mCustomCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 163
    new-instance v0, Lcom/android/phone/settings/CallRecordSetting$2;

    invoke-direct {v0, p0, p0}, Lcom/android/phone/settings/CallRecordSetting$2;-><init>(Lcom/android/phone/settings/CallRecordSetting;Lcom/android/phone/settings/CallRecordSetting;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/CallRecordSetting$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/CallRecordSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mCustomCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    iget-object v0, p0, Lcom/android/phone/settings/CallRecordSetting;->mWhitelist:Lmiui/preference/ValuePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 80
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v1, 0x7f060007

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallRecordSetting;->addPreferencesFromResource(I)V

    .line 85
    const-string v1, "button_call_recording_notification"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mRecordNotifySwitcher:Landroid/preference/CheckBoxPreference;

    .line 86
    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mRecordNotifySwitcher:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 87
    const-string v1, "button_auto_record_call"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mAutoRecordSwitcher:Landroid/preference/CheckBoxPreference;

    .line 88
    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mAutoRecordSwitcher:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    const-string v1, "button_auto_record_scenario"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiui/preference/RadioButtonPreferenceCategory;

    iput-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    .line 90
    const-string v1, "auto_record_custom_category"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mCustomCategory:Landroid/preference/PreferenceCategory;

    .line 91
    const-string v1, "button_call_record_auto_whitelist"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiui/preference/ValuePreference;

    iput-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mWhitelist:Lmiui/preference/ValuePreference;

    .line 92
    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mWhitelist:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 93
    const-string v1, "button_auto_record_unknown"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mUnknownNumberRecord:Landroid/preference/CheckBoxPreference;

    .line 94
    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mUnknownNumberRecord:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    const-string v1, "button_auto_record_yellowpage"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallRecordSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mYellowpageNumberRecord:Landroid/preference/CheckBoxPreference;

    .line 96
    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mYellowpageNumberRecord:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    invoke-direct {p0}, Lcom/android/phone/settings/CallRecordSetting;->createScenarios()V

    .line 99
    invoke-direct {p0}, Lcom/android/phone/settings/CallRecordSetting;->checkRemovePreferences()V

    .line 101
    invoke-virtual {p0}, Lcom/android/phone/settings/CallRecordSetting;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 102
    .local v0, "bar":Lmiui/app/ActionBar;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, v2}, Lmiui/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 105
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 153
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/phone/settings/CallRecordSetting;->finish()V

    .line 155
    const/4 v1, 0x1

    .line 157
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 59
    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mAutoRecordSwitcher:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_2

    move-object v0, p2

    .line 60
    check-cast v0, Ljava/lang/Boolean;

    .line 61
    .local v0, "enable":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lmiui/preference/RadioButtonPreferenceCategory;->setEnabled(Z)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v1}, Lmiui/preference/RadioButtonPreferenceCategory;->getCheckedPosition()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/phone/settings/CallRecordSetting;->updateCustomCategory(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/android/phone/settings/CallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v3}, Landroid/provider/MiuiSettings$Telephony;->setAutoRecordEnabled(Landroid/content/ContentResolver;Z)V

    .line 75
    .end local v0    # "enable":Ljava/lang/Boolean;
    :cond_0
    :goto_1
    return v2

    .line 62
    .restart local v0    # "enable":Ljava/lang/Boolean;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 65
    .end local v0    # "enable":Ljava/lang/Boolean;
    :cond_2
    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mRecordNotifySwitcher:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_3

    move-object v0, p2

    .line 66
    check-cast v0, Ljava/lang/Boolean;

    .line 67
    .restart local v0    # "enable":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/android/phone/settings/CallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v3}, Landroid/provider/MiuiSettings$Telephony;->setRecordNotificationEnabled(Landroid/content/ContentResolver;Z)V

    goto :goto_1

    .line 68
    .end local v0    # "enable":Ljava/lang/Boolean;
    :cond_3
    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mUnknownNumberRecord:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_4

    move-object v0, p2

    .line 69
    check-cast v0, Ljava/lang/Boolean;

    .line 70
    .restart local v0    # "enable":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/android/phone/settings/CallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v3}, Landroid/provider/MiuiSettings$Telephony;->setUnknownNumberRecordEnabled(Landroid/content/ContentResolver;Z)V

    goto :goto_1

    .line 71
    .end local v0    # "enable":Ljava/lang/Boolean;
    :cond_4
    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mYellowpageNumberRecord:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    .line 72
    check-cast v0, Ljava/lang/Boolean;

    .line 73
    .restart local v0    # "enable":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/android/phone/settings/CallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v3}, Landroid/provider/MiuiSettings$Telephony;->setYellowpageRecordEnabled(Landroid/content/ContentResolver;Z)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 109
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 111
    iget-object v3, p0, Lcom/android/phone/settings/CallRecordSetting;->mRecordNotifySwitcher:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/CallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/MiuiSettings$Telephony;->isRecordNotificationEnabled(Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 112
    iget-object v3, p0, Lcom/android/phone/settings/CallRecordSetting;->mAutoRecordSwitcher:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/CallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/MiuiSettings$Telephony;->isAutoRecordEnabled(Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 113
    iget-object v3, p0, Lcom/android/phone/settings/CallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    iget-object v4, p0, Lcom/android/phone/settings/CallRecordSetting;->mAutoRecordSwitcher:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lmiui/preference/RadioButtonPreferenceCategory;->setEnabled(Z)V

    .line 114
    iget-object v3, p0, Lcom/android/phone/settings/CallRecordSetting;->mUnknownNumberRecord:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/CallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/MiuiSettings$Telephony;->isUnknownNumberRecordEnabled(Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 115
    iget-object v3, p0, Lcom/android/phone/settings/CallRecordSetting;->mYellowpageNumberRecord:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/CallRecordSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/MiuiSettings$Telephony;->isYellowpageRecordEnabled(Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "shoudShowCustomCategory":Z
    iget-object v3, p0, Lcom/android/phone/settings/CallRecordSetting;->mAutoRecordSwitcher:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    iget-object v3, p0, Lcom/android/phone/settings/CallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v3, v1}, Lmiui/preference/RadioButtonPreferenceCategory;->setEnabled(Z)V

    .line 119
    iget-object v3, p0, Lcom/android/phone/settings/CallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v3}, Lmiui/preference/RadioButtonPreferenceCategory;->getCheckedPosition()I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 123
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/phone/settings/CallRecordSetting;->updateCustomCategory(Z)V

    .line 124
    return-void

    :cond_0
    move v0, v2

    .line 119
    goto :goto_0

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/android/phone/settings/CallRecordSetting;->mScenarios:Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v1, v2}, Lmiui/preference/RadioButtonPreferenceCategory;->setEnabled(Z)V

    goto :goto_0
.end method
