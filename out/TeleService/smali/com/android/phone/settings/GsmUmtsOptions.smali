.class public Lcom/android/phone/settings/GsmUmtsOptions;
.super Lcom/android/phone/settings/CommonOptions;
.source "GsmUmtsOptions.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mButtonOperatorSelectionPref:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/phone/settings/GsmUmtsOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/GsmUmtsOptions;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "prefActivity"    # Landroid/preference/PreferenceActivity;
    .param p2, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/settings/CommonOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    .line 54
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    const v1, 0x7f060021

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsOptions;->create()V

    .line 56
    return-void
.end method

.method private setGsmUmtsOptionEnable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonApnPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonApnPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 134
    :cond_2
    return-void
.end method

.method private updateOperatorSelectionVisibility()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOperatorSelectionVisibility: mPhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 99
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionPref:Landroid/preference/PreferenceScreen;

    if-nez v1, :cond_1

    .line 100
    sget-object v1, Lcom/android/phone/settings/GsmUmtsOptions;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mButtonOperatorSelectionPref is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneAdapter;->isManualNetSelAllowed(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 104
    const-string v1, "Manual network selection not allowed.Disabling Operator Selection menu."

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 118
    :cond_2
    :goto_1
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mSlotId:I

    invoke-virtual {v1, v2}, Lmiui/telephony/TelephonyManager;->getSimStateForSlot(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsOptions;->isIccCardActivate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/phone/settings/GsmUmtsOptions;->setGsmUmtsOptionEnable(Z)V

    goto :goto_0

    .line 106
    :cond_4
    const v1, 0x7f0d000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 108
    const-string v1, "Enabling Operator Selection menu."

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionPref:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .line 111
    :cond_5
    const-string v1, "Disabling Operator Selection menu."

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionPref:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected create()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/phone/settings/CommonOptions;->create()V

    .line 60
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v1, "button_carrier_sel_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionPref:Landroid/preference/PreferenceScreen;

    .line 61
    iget-object v0, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mSlotId:I

    invoke-static {v0, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/phone/settings/GsmUmtsOptions;->enableScreen()V

    .line 64
    return-void
.end method

.method public enableScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 72
    const-string v1, "Not a GSM phone, disabling GSM preferences (apn, use2g, select operator)"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonApnPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 74
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 93
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/settings/GsmUmtsOptions;->updateOperatorSelectionVisibility()V

    .line 94
    return-void

    .line 76
    :cond_1
    const-string v1, "Not a CDMA phone"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0d000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "button_apn_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    :cond_2
    const v1, 0x7f0d000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionPref:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/settings/GsmUmtsOptions;->mButtonOperatorSelectionPref:Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method protected setOptionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/phone/settings/GsmUmtsOptions;->setGsmUmtsOptionEnable(Z)V

    .line 139
    return-void
.end method
