.class public Lcom/android/phone/settings/GsmUmtsCallerIdSetting;
.super Lcom/android/phone/settings/TimeConsumingPreferenceActivity;
.source "GsmUmtsCallerIdSetting.java"


# instance fields
.field private mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {p0}, Lcom/android/phone/settings/SimPickerPreference;->showSimPicker(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    const v2, 0x7f060015

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->addPreferencesFromResource(I)V

    .line 42
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v3

    invoke-static {v2, v3}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v1

    .line 44
    .local v1, "slotId":I
    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 45
    const-string v2, "button_clir"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/settings/CLIRListPreference;

    iput-object v2, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

    .line 47
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 48
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 49
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 76
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 77
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->finish()V

    .line 79
    const/4 v1, 0x1

    .line 81
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    invoke-super {p0}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onResume()V

    .line 57
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/settings/CLIRListPreference;->setEnabled(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->isCmccSim(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->isSSOperatedByUt(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/settings/CLIRListPreference;->setEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

    const v1, 0x7f08045b

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/CLIRListPreference;->setSummary(I)V

    .line 65
    const-string v0, "GsmUmtsCallerIdSetting"

    const-string v1, "In CMCC VoLTE network CLIR is not available!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/settings/CLIRListPreference;->setEnabled(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mCLIRButton:Lcom/android/phone/settings/CLIRListPreference;

    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsCallerIdSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/phone/settings/CLIRListPreference;->init(Lcom/android/phone/settings/TimeConsumingPreferenceListener;ZI)V

    goto :goto_0
.end method
