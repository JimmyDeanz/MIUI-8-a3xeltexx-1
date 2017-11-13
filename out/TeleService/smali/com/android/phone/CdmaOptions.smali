.class public Lcom/android/phone/CdmaOptions;
.super Ljava/lang/Object;
.source "CdmaOptions.java"


# instance fields
.field private mButtonAPNExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

.field private mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefActivity:Landroid/preference/PreferenceActivity;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "prefActivity"    # Landroid/preference/PreferenceActivity;
    .param p2, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    .line 59
    iput-object p2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 60
    iput-object p3, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 61
    invoke-virtual {p0}, Lcom/android/phone/CdmaOptions;->create()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CdmaOptions;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CdmaOptions;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CdmaOptions;)Landroid/preference/PreferenceActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CdmaOptions;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method private deviceSupportsNvAndRuim()Z
    .locals 9

    .prologue
    .line 134
    const-string v7, "ril.subscription.types"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "subscriptionsSupported":Ljava/lang/String;
    const/4 v3, 0x0

    .line 136
    .local v3, "nvSupported":Z
    const/4 v4, 0x0

    .line 138
    .local v4, "ruimSupported":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceSupportsnvAnRum: prop="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 139
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 142
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 143
    .local v5, "subscriptionType":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 144
    const-string v7, "NV"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 145
    const/4 v3, 0x1

    .line 147
    :cond_0
    const-string v7, "RUIM"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 148
    const/4 v4, 0x1

    .line 142
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "subscriptionType":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deviceSupportsnvAnRum: nvSupported="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ruimSupported="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 155
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    const/4 v7, 0x1

    :goto_1
    return v7

    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected create()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 65
    iget-object v6, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    const v7, 0x7f06000d

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 67
    iget-object v6, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v7, "button_apn_key_cdma"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/phone/CdmaOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    .line 68
    const/4 v4, 0x0

    .line 69
    .local v4, "removedAPNExpand":Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 72
    .local v0, "carrierConfig":Landroid/os/PersistableBundle;
    const-string v6, "show_apn_setting_cdma_bool"

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/CdmaOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_0

    .line 74
    iget-object v6, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/phone/CdmaOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 75
    const/4 v4, 0x1

    .line 77
    :cond_0
    if-nez v4, :cond_1

    .line 78
    iget-object v6, p0, Lcom/android/phone/CdmaOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    new-instance v7, Lcom/android/phone/CdmaOptions$1;

    invoke-direct {v7, p0}, Lcom/android/phone/CdmaOptions$1;-><init>(Lcom/android/phone/CdmaOptions;)V

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 95
    :cond_1
    iget-object v6, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v7, "cdma_system_select_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/phone/CdmaSystemSelectListPreference;

    iput-object v6, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    .line 98
    iget-object v6, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v7, "cdma_subscription_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/phone/CdmaSubscriptionListPreference;

    iput-object v6, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    .line 101
    iget-object v6, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v6, v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->setEnabled(Z)V

    .line 102
    invoke-direct {p0}, Lcom/android/phone/CdmaOptions;->deviceSupportsNvAndRuim()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 103
    const-string v6, "Both NV and Ruim supported, ENABLE subscription type selection"

    invoke-virtual {p0, v6}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 104
    iget-object v6, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    invoke-virtual {v6, v2}, Lcom/android/phone/CdmaSubscriptionListPreference;->setEnabled(Z)V

    .line 111
    :goto_0
    iget-object v6, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/internal/R$bool;->config_voice_capable:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 113
    .local v5, "voiceCapable":Z
    iget-object v6, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v6

    if-ne v6, v2, :cond_6

    .line 114
    .local v2, "isLTE":Z
    :goto_1
    if-nez v5, :cond_2

    if-eqz v2, :cond_3

    .line 117
    :cond_2
    iget-object v6, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v8, "cdma_activate_device_key"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 122
    :cond_3
    const-string v6, "carrier_settings_enable_bool"

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 124
    .local v1, "isCarrierSettingsEnabled":Z
    if-nez v1, :cond_4

    .line 125
    iget-object v6, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v7, "carrier_settings_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 126
    .local v3, "pref":Landroid/preference/Preference;
    if-eqz v3, :cond_4

    .line 127
    iget-object v6, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_4
    return-void

    .line 106
    .end local v1    # "isCarrierSettingsEnabled":Z
    .end local v2    # "isLTE":Z
    .end local v5    # "voiceCapable":Z
    :cond_5
    const-string v6, "Both NV and Ruim NOT supported, REMOVE subscription type selection"

    invoke-virtual {p0, v6}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 107
    iget-object v6, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v8, "cdma_subscription_key"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 113
    .restart local v5    # "voiceCapable":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 179
    const-string v0, "CdmaOptions"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method public preferenceTreeClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 159
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdma_system_select_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const-string v1, "preferenceTreeClick: return BUTTON_CDMA_ROAMING_KEY true"

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 167
    :goto_0
    return v0

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdma_subscription_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    const-string v1, "preferenceTreeClick: return CDMA_SUBSCRIPTION_KEY true"

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDialog(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_system_select_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_subscription_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaSubscriptionListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method
