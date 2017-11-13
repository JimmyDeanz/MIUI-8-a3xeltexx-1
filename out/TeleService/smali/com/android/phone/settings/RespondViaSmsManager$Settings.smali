.class public Lcom/android/phone/settings/RespondViaSmsManager$Settings;
.super Lmiui/preference/PreferenceActivity;
.source "RespondViaSmsManager.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/RespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    # getter for: Lcom/android/phone/settings/RespondViaSmsManager;->DBG:Z
    invoke-static {}, Lcom/android/phone/settings/RespondViaSmsManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Settings: onCreate()..."

    # invokes: Lcom/android/phone/settings/RespondViaSmsManager;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/settings/RespondViaSmsManager;->access$100(Ljava/lang/String;)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    const-string v3, "respond_via_sms_prefs"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 90
    const v2, 0x7f060023

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->addPreferencesFromResource(I)V

    .line 93
    const-string v2, "canned_response_pref_1"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    .line 94
    .local v1, "pref":Landroid/preference/EditTextPreference;
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 98
    const-string v2, "canned_response_pref_2"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "pref":Landroid/preference/EditTextPreference;
    check-cast v1, Landroid/preference/EditTextPreference;

    .line 99
    .restart local v1    # "pref":Landroid/preference/EditTextPreference;
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 101
    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 103
    const-string v2, "canned_response_pref_3"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "pref":Landroid/preference/EditTextPreference;
    check-cast v1, Landroid/preference/EditTextPreference;

    .line 104
    .restart local v1    # "pref":Landroid/preference/EditTextPreference;
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 106
    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 108
    const-string v2, "canned_response_pref_4"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "pref":Landroid/preference/EditTextPreference;
    check-cast v1, Landroid/preference/EditTextPreference;

    .line 109
    .restart local v1    # "pref":Landroid/preference/EditTextPreference;
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 114
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 116
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 118
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 170
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 149
    .local v1, "itemId":I
    sparse-switch v1, :sswitch_data_0

    .line 164
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 151
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->finish()V

    goto :goto_0

    .line 155
    :sswitch_1
    const-string v4, "respond_via_sms_prefs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 157
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 158
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    invoke-virtual {p0}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->finish()V

    goto :goto_0

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0e008d -> :sswitch_1
    .end sparse-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 123
    # getter for: Lcom/android/phone/settings/RespondViaSmsManager;->DBG:Z
    invoke-static {}, Lcom/android/phone/settings/RespondViaSmsManager;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange: key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/settings/RespondViaSmsManager;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/settings/RespondViaSmsManager;->access$100(Ljava/lang/String;)V

    :cond_0
    move-object v0, p1

    .line 127
    check-cast v0, Landroid/preference/EditTextPreference;

    .local v0, "pref":Landroid/preference/EditTextPreference;
    move-object v1, p2

    .line 129
    check-cast v1, Ljava/lang/String;

    .line 130
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, "\\s*"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 143
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v2

    .line 141
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 175
    const-string v1, "canned_response_pref_1"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "canned_response_pref_2"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "canned_response_pref_3"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "canned_response_pref_4"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    :cond_0
    check-cast p1, Landroid/preference/EditTextPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 180
    .local v0, "et":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 182
    .end local v0    # "et":Landroid/widget/EditText;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
