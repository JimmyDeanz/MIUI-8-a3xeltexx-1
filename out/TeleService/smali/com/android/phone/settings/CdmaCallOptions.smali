.class public Lcom/android/phone/settings/CdmaCallOptions;
.super Lmiui/preference/PreferenceActivity;
.source "CdmaCallOptions.java"


# instance fields
.field private final DBG:Z

.field private mButtonVoicePrivacy:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/CdmaCallOptions;->DBG:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v2, 0x7f06001c

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/CdmaCallOptions;->addPreferencesFromResource(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/phone/settings/CdmaCallOptions;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v3

    invoke-static {v2, v3}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v1

    .line 53
    .local v1, "subscription":I
    const-string v2, "CdmaCallOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting CDMACallOptions subscription ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 56
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const-string v2, "button_voice_privacy_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/CdmaCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/settings/CdmaCallOptions;->mButtonVoicePrivacy:Landroid/preference/CheckBoxPreference;

    .line 57
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/settings/CdmaCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/CdmaCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 62
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 66
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "button_voice_privacy_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
