.class public Lcom/android/phone/settings/CallWaitingActivity;
.super Lmiui/preference/PreferenceActivity;
.source "CallWaitingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-static {p0}, Lcom/android/phone/settings/SimPickerPreference;->showSimPicker(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/CallWaitingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v5

    invoke-static {v4, v5}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v3

    .line 28
    .local v3, "slotId":I
    invoke-static {v3}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 30
    .local v2, "phoneType":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 31
    const v4, 0x7f060008

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/CallWaitingActivity;->addPreferencesFromResource(I)V

    .line 32
    const-string v4, "button_cdma_cw"

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/CallWaitingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/settings/CdmaCallWaitingPreference;

    .line 33
    .local v0, "cdmaWaiting":Lcom/android/phone/settings/CdmaCallWaitingPreference;
    invoke-virtual {v0, v3}, Lcom/android/phone/settings/CdmaCallWaitingPreference;->setSlotId(I)V

    goto :goto_0

    .line 35
    .end local v0    # "cdmaWaiting":Lcom/android/phone/settings/CdmaCallWaitingPreference;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/android/phone/settings/GsmUmtsCallWaitingSetting;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 36
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v1, v3}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 37
    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallWaitingActivity;->startActivity(Landroid/content/Intent;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/phone/settings/CallWaitingActivity;->finish()V

    goto :goto_0
.end method
