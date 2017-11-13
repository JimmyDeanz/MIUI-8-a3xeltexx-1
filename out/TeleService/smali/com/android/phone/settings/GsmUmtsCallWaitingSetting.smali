.class public Lcom/android/phone/settings/GsmUmtsCallWaitingSetting;
.super Lcom/android/phone/settings/TimeConsumingPreferenceActivity;
.source "GsmUmtsCallWaitingSetting.java"


# instance fields
.field private mCWButton:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {p0}, Lcom/android/phone/settings/SimPickerPreference;->showSimPicker(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsCallWaitingSetting;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v3

    invoke-static {v2, v3}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v1

    .line 40
    .local v1, "slotId":I
    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/GsmUmtsCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 44
    const v2, 0x7f060014

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/GsmUmtsCallWaitingSetting;->addPreferencesFromResource(I)V

    .line 46
    const-string v2, "button_cw"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/GsmUmtsCallWaitingSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/settings/GsmUmtsCallWaitingSetting;->mCWButton:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    .line 48
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsCallWaitingSetting;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 49
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 50
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 69
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 70
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsCallWaitingSetting;->finish()V

    .line 72
    const/4 v1, 0x1

    .line 74
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

    .line 56
    invoke-super {p0}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onResume()V

    .line 58
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallWaitingSetting;->mCWButton:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->setEnabled(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallWaitingSetting;->mCWButton:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->setEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsCallWaitingSetting;->mCWButton:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsCallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/settings/TimeConsumingPreferenceListener;ZI)V

    .line 65
    :cond_0
    return-void
.end method
