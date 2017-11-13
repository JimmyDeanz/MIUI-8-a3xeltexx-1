.class public Lcom/android/phone/settings/FdnSetting;
.super Lmiui/preference/PreferenceActivity;
.source "FdnSetting.java"

# interfaces
.implements Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;


# instance fields
.field private mChangePin2:Landroid/preference/Preference;

.field private mEditPinDialog:Lcom/android/phone/settings/EditPinDialog;

.field private mEnableFdn:Landroid/preference/CheckBoxPreference;

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private updateEnableFDN()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/phone/settings/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/phone/settings/FdnSetting;->mEnableFdn:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/FdnSetting;->mEnableFdn:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public OnDialogClose(Lcom/android/phone/settings/EditPinDialog;Z)V
    .locals 2
    .param p1, "dialog"    # Lcom/android/phone/settings/EditPinDialog;
    .param p2, "cancel"    # Z

    .prologue
    .line 106
    if-nez p2, :cond_0

    .line 107
    invoke-virtual {p1}, Lcom/android/phone/settings/EditPinDialog;->getMode()Lcom/android/phone/settings/EditPinDialog$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/settings/EditPinDialog$Mode;->FDN:Lcom/android/phone/settings/EditPinDialog$Mode;

    if-ne v0, v1, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/android/phone/settings/FdnSetting;->updateEnableFDN()V

    .line 111
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {p0}, Lcom/android/phone/settings/SimPickerPreference;->showSimPicker(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/settings/FdnSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v3

    invoke-static {v2, v3}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v1

    .line 47
    .local v1, "slotId":I
    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 49
    const v2, 0x7f06001e

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/FdnSetting;->addPreferencesFromResource(I)V

    .line 51
    const-string v2, "button_fdn_enable"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/FdnSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/settings/FdnSetting;->mEnableFdn:Landroid/preference/CheckBoxPreference;

    .line 52
    const-string v2, "button_change_pin2"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/FdnSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/FdnSetting;->mChangePin2:Landroid/preference/Preference;

    .line 54
    const-string v2, "button_fdn_list"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/FdnSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 56
    new-instance v2, Lcom/android/phone/settings/EditPinDialog;

    sget-object v3, Lcom/android/phone/settings/EditPinDialog$Mode;->FDN:Lcom/android/phone/settings/EditPinDialog$Mode;

    iget-object v4, p0, Lcom/android/phone/settings/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v2, p0, v3, p0, v4}, Lcom/android/phone/settings/EditPinDialog;-><init>(Landroid/content/Context;Lcom/android/phone/settings/EditPinDialog$Mode;Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;Lcom/android/internal/telephony/Phone;)V

    iput-object v2, p0, Lcom/android/phone/settings/FdnSetting;->mEditPinDialog:Lcom/android/phone/settings/EditPinDialog;

    .line 57
    iget-object v2, p0, Lcom/android/phone/settings/FdnSetting;->mEditPinDialog:Lcom/android/phone/settings/EditPinDialog;

    invoke-virtual {v2, p0}, Lcom/android/phone/settings/EditPinDialog;->registerHotSwapReceiver(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/phone/settings/FdnSetting;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 60
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 61
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 74
    iget-object v0, p0, Lcom/android/phone/settings/FdnSetting;->mEditPinDialog:Lcom/android/phone/settings/EditPinDialog;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/phone/settings/FdnSetting;->mEditPinDialog:Lcom/android/phone/settings/EditPinDialog;

    invoke-virtual {v0, p0}, Lcom/android/phone/settings/EditPinDialog;->unregisterHotSwapReceiver(Landroid/content/Context;)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/settings/FdnSetting;->mEditPinDialog:Lcom/android/phone/settings/EditPinDialog;

    .line 78
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 116
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/phone/settings/FdnSetting;->finish()V

    .line 118
    const/4 v1, 0x1

    .line 120
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 91
    iget-object v2, p0, Lcom/android/phone/settings/FdnSetting;->mEnableFdn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/android/phone/settings/FdnSetting;->mEnableFdn:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/phone/settings/FdnSetting;->mEnableFdn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/phone/settings/FdnSetting;->mEditPinDialog:Lcom/android/phone/settings/EditPinDialog;

    sget-object v2, Lcom/android/phone/settings/EditPinDialog$Mode;->FDN:Lcom/android/phone/settings/EditPinDialog$Mode;

    invoke-virtual {v0, v2}, Lcom/android/phone/settings/EditPinDialog;->setMode(Lcom/android/phone/settings/EditPinDialog$Mode;)V

    .line 94
    iget-object v0, p0, Lcom/android/phone/settings/FdnSetting;->mEditPinDialog:Lcom/android/phone/settings/EditPinDialog;

    invoke-virtual {v0}, Lcom/android/phone/settings/EditPinDialog;->show()V

    .line 101
    :goto_0
    return v1

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/FdnSetting;->mChangePin2:Landroid/preference/Preference;

    if-ne p2, v2, :cond_2

    .line 97
    iget-object v0, p0, Lcom/android/phone/settings/FdnSetting;->mEditPinDialog:Lcom/android/phone/settings/EditPinDialog;

    sget-object v2, Lcom/android/phone/settings/EditPinDialog$Mode;->PIN2:Lcom/android/phone/settings/EditPinDialog$Mode;

    invoke-virtual {v0, v2}, Lcom/android/phone/settings/EditPinDialog;->setMode(Lcom/android/phone/settings/EditPinDialog$Mode;)V

    .line 98
    iget-object v0, p0, Lcom/android/phone/settings/FdnSetting;->mEditPinDialog:Lcom/android/phone/settings/EditPinDialog;

    invoke-virtual {v0}, Lcom/android/phone/settings/EditPinDialog;->show()V

    goto :goto_0

    :cond_2
    move v1, v0

    .line 101
    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 68
    invoke-direct {p0}, Lcom/android/phone/settings/FdnSetting;->updateEnableFDN()V

    .line 69
    return-void
.end method
