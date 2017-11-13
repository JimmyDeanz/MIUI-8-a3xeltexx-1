.class public Lcom/android/phone/settings/AutoAnswerSetting;
.super Lmiui/preference/PreferenceActivity;
.source "AutoAnswerSetting.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private createScenarios()V
    .locals 9

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoAnswerSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "button_auto_answer_scenario"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 66
    .local v3, "scenario":I
    const-string v6, "button_auto_answer_scenario"

    invoke-virtual {p0, v6}, Lcom/android/phone/settings/AutoAnswerSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lmiui/preference/RadioButtonPreferenceCategory;

    .line 67
    .local v5, "scenarios":Lmiui/preference/RadioButtonPreferenceCategory;
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoAnswerSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070034

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "scenarioStrings":[Ljava/lang/String;
    new-instance v1, Lcom/android/phone/settings/AutoAnswerSetting$2;

    invoke-direct {v1, p0, v4}, Lcom/android/phone/settings/AutoAnswerSetting$2;-><init>(Lcom/android/phone/settings/AutoAnswerSetting;[Ljava/lang/String;)V

    .line 81
    .local v1, "listener":Landroid/preference/Preference$OnPreferenceClickListener;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v4

    if-ge v0, v6, :cond_0

    .line 82
    new-instance v2, Lmiui/preference/RadioButtonPreference;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    .local v2, "pref":Lmiui/preference/RadioButtonPreference;
    aget-object v6, v4, v0

    invoke-virtual {v2, v6}, Lmiui/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v2, v1}, Lmiui/preference/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 85
    invoke-virtual {v5, v2}, Lmiui/preference/RadioButtonPreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "pref":Lmiui/preference/RadioButtonPreference;
    :cond_0
    invoke-virtual {v5, v3}, Lmiui/preference/RadioButtonPreferenceCategory;->setCheckedPosition(I)V

    .line 88
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v3, 0x7f060002

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/AutoAnswerSetting;->addPreferencesFromResource(I)V

    .line 43
    invoke-direct {p0}, Lcom/android/phone/settings/AutoAnswerSetting;->createScenarios()V

    .line 44
    new-instance v1, Lcom/android/phone/settings/AutoAnswerSetting$1;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/AutoAnswerSetting$1;-><init>(Lcom/android/phone/settings/AutoAnswerSetting;)V

    .line 53
    .local v1, "listener":Landroid/preference/Preference$OnPreferenceChangeListener;
    const-string v3, "button_auto_answer"

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/AutoAnswerSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 54
    .local v2, "switcher":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoAnswerSetting;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 58
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 59
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 61
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 93
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoAnswerSetting;->finish()V

    .line 95
    const/4 v1, 0x1

    .line 97
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
