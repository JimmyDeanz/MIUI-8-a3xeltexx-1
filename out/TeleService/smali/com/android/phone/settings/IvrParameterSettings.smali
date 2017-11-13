.class public Lcom/android/phone/settings/IvrParameterSettings;
.super Lmiui/preference/PreferenceActivity;
.source "IvrParameterSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mIvrMoAreaCode:Landroid/preference/EditTextPreference;

.field private mIvrType:Landroid/preference/ListPreference;

.field private mSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getIvrMoAreaCodeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/phone/settings/IvrParameterSettings;->mSlotId:I

    if-nez v0, :cond_0

    .line 67
    const-string v0, "ivr_mo_area_code_slot_1"

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ivr_mo_area_code_slot_2"

    goto :goto_0
.end method

.method private getIvrTypeKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/phone/settings/IvrParameterSettings;->mSlotId:I

    if-nez v0, :cond_0

    .line 75
    const-string v0, "ivr_type_slot_1"

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ivr_type_slot_2"

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-static {p0}, Lcom/android/phone/settings/SimPickerPreference;->showSimPicker(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 31
    :cond_0
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/IvrParameterSettings;->addPreferencesFromResource(I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/phone/settings/IvrParameterSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/settings/IvrParameterSettings;->mSlotId:I

    .line 36
    const-string v0, "ivr_mo_area_code"

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/IvrParameterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/phone/settings/IvrParameterSettings;->mIvrMoAreaCode:Landroid/preference/EditTextPreference;

    .line 37
    const-string v0, "ivr_type"

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/IvrParameterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/settings/IvrParameterSettings;->mIvrType:Landroid/preference/ListPreference;

    .line 39
    iget-object v0, p0, Lcom/android/phone/settings/IvrParameterSettings;->mIvrMoAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 40
    iget-object v0, p0, Lcom/android/phone/settings/IvrParameterSettings;->mIvrType:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 84
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/phone/settings/IvrParameterSettings;->finish()V

    .line 86
    const/4 v1, 0x1

    .line 88
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
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 56
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/settings/IvrParameterSettings;->mIvrMoAreaCode:Landroid/preference/EditTextPreference;

    if-ne p1, v1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/android/phone/settings/IvrParameterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/phone/settings/IvrParameterSettings;->getIvrMoAreaCodeKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/provider/MiuiSettings$Telephony;->setIVRParameterValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/android/phone/settings/IvrParameterSettings;->mIvrType:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/phone/settings/IvrParameterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/phone/settings/IvrParameterSettings;->getIvrTypeKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/provider/MiuiSettings$Telephony;->setIVRParameterValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 45
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 47
    invoke-virtual {p0}, Lcom/android/phone/settings/IvrParameterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/settings/IvrParameterSettings;->getIvrMoAreaCodeKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$Telephony;->getIVRParameterValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "ivrMoAreaCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/settings/IvrParameterSettings;->mIvrMoAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/phone/settings/IvrParameterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/settings/IvrParameterSettings;->getIvrTypeKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/MiuiSettings$Telephony;->getIVRParameterValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "ivrType":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/settings/IvrParameterSettings;->mIvrType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 52
    return-void
.end method
