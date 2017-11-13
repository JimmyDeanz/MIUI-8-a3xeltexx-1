.class public abstract Lcom/android/phone/settings/CommonOptions;
.super Ljava/lang/Object;
.source "CommonOptions.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mButtonApnPref:Landroid/preference/PreferenceScreen;

.field protected mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field protected mPrefActivity:Landroid/preference/PreferenceActivity;

.field protected mPrefScreen:Landroid/preference/PreferenceScreen;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field protected mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/android/phone/settings/CommonOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/CommonOptions;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "prefActivity"    # Landroid/preference/PreferenceActivity;
    .param p2, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/settings/CommonOptions;->mSlotId:I

    .line 88
    new-instance v0, Lcom/android/phone/settings/CommonOptions$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/CommonOptions$1;-><init>(Lcom/android/phone/settings/CommonOptions;)V

    iput-object v0, p0, Lcom/android/phone/settings/CommonOptions;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    iput-object p1, p0, Lcom/android/phone/settings/CommonOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    .line 56
    iput-object p2, p0, Lcom/android/phone/settings/CommonOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 57
    iput-object p3, p0, Lcom/android/phone/settings/CommonOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 58
    invoke-interface {p3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/android/phone/settings/CommonOptions;->mSlotId:I

    .line 59
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/phone/settings/CommonOptions;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected create()V
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/phone/settings/CommonOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "button_apn_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/settings/CommonOptions;->mButtonApnPref:Landroid/preference/PreferenceScreen;

    .line 63
    iget-object v1, p0, Lcom/android/phone/settings/CommonOptions;->mButtonApnPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/settings/CommonOptions;->mSlotId:I

    invoke-static {v1, v2}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 65
    iget-object v1, p0, Lcom/android/phone/settings/CommonOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "button_preferred_network_type_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/settings/CommonOptions;->mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;

    .line 67
    iget-object v1, p0, Lcom/android/phone/settings/CommonOptions;->mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 68
    invoke-static {}, Lcom/android/phone/NetworkModeManager;->isRemoveNetworkModeSettings()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/android/phone/settings/CommonOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/settings/CommonOptions;->mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/settings/CommonOptions;->mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;

    .line 78
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/phone/settings/CommonOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    iget-object v2, p0, Lcom/android/phone/settings/CommonOptions;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/preference/PreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    return-void

    .line 73
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/settings/CommonOptions;->mButtonPreferredNetworkType:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/settings/CommonOptions;->mSlotId:I

    invoke-static {v1, v2}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected destroy()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/settings/CommonOptions;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/phone/settings/CommonOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    iget-object v1, p0, Lcom/android/phone/settings/CommonOptions;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    :cond_0
    return-void
.end method

.method protected isIccCardActivate()Z
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/settings/CommonOptions;->mSlotId:I

    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->isIccCardActivated(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 126
    sget-object v0, Lcom/android/phone/settings/CommonOptions;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public preferenceTreeClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract setOptionEnabled(Z)V
.end method
