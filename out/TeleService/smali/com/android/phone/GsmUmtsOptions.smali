.class public Lcom/android/phone/GsmUmtsOptions;
.super Ljava/lang/Object;
.source "GsmUmtsOptions.java"


# instance fields
.field private mButtonAPNExpand:Landroid/preference/PreferenceScreen;

.field private mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

.field private mPrefActivity:Landroid/preference/PreferenceActivity;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;

.field private mSubId:I


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V
    .locals 0
    .param p1, "prefActivity"    # Landroid/preference/PreferenceActivity;
    .param p2, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p3, "subId"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    .line 53
    iput-object p2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 54
    iput p3, p0, Lcom/android/phone/GsmUmtsOptions;->mSubId:I

    .line 55
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsOptions;->create()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/GsmUmtsOptions;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/GsmUmtsOptions;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/phone/GsmUmtsOptions;->mSubId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/GsmUmtsOptions;)Landroid/preference/PreferenceActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/GsmUmtsOptions;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    return-object v0
.end method


# virtual methods
.method protected create()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 59
    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    const v6, 0x7f060016

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 60
    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "button_apn_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    .line 61
    const/4 v3, 0x0

    .line 62
    .local v3, "removedAPNExpand":Z
    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "button_carrier_sel_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    .line 64
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-eq v5, v8, :cond_3

    .line 65
    const-string v5, "Not a GSM phone"

    invoke-virtual {p0, v5}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 66
    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 67
    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 111
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 112
    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    new-instance v6, Lcom/android/phone/GsmUmtsOptions$1;

    invoke-direct {v6, p0}, Lcom/android/phone/GsmUmtsOptions$1;-><init>(Lcom/android/phone/GsmUmtsOptions;)V

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 128
    :cond_1
    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "button_carrier_sel_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 129
    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    new-instance v6, Lcom/android/phone/GsmUmtsOptions$2;

    invoke-direct {v6, p0}, Lcom/android/phone/GsmUmtsOptions$2;-><init>(Lcom/android/phone/GsmUmtsOptions;)V

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 142
    :cond_2
    return-void

    .line 69
    :cond_3
    const-string v5, "Not a CDMA phone"

    invoke-virtual {p0, v5}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 70
    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 71
    .local v4, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/GsmUmtsOptions;->mSubId:I

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 79
    .local v0, "carrierConfig":Landroid/os/PersistableBundle;
    const-string v5, "apn_expand_bool"

    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_4

    .line 81
    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 82
    const/4 v3, 0x1

    .line 84
    :cond_4
    const-string v5, "operator_selection_expand_bool"

    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 86
    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v7, "button_carrier_sel_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    :cond_5
    const-string v5, "csp_enabled_bool"

    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 91
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 92
    const-string v5, "[CSP] Enabling Operator Selection menu."

    invoke-virtual {p0, v5}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 93
    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 102
    :cond_6
    :goto_1
    const-string v5, "carrier_settings_enable_bool"

    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 104
    .local v1, "isCarrierSettingsEnabled":Z
    if-nez v1, :cond_0

    .line 105
    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "carrier_settings_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 106
    .local v2, "pref":Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 107
    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 95
    .end local v1    # "isCarrierSettingsEnabled":Z
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_7
    const-string v5, "[CSP] Disabling Operator Selection menu."

    invoke-virtual {p0, v5}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 96
    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v7, "button_carrier_sel_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 150
    const-string v0, "GsmUmtsOptions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method public preferenceTreeClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 145
    const-string v0, "preferenceTreeClick: return false"

    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x0

    return v0
.end method
