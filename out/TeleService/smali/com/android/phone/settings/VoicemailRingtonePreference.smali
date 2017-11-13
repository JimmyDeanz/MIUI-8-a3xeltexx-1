.class public Lcom/android/phone/settings/VoicemailRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "VoicemailRingtonePreference.java"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mVoicemailRingtoneLookupComplete:Landroid/os/Handler;

.field private mVoicemailRingtoneLookupRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Lcom/android/phone/settings/VoicemailRingtonePreference$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/VoicemailRingtonePreference$1;-><init>(Lcom/android/phone/settings/VoicemailRingtonePreference;)V

    iput-object v0, p0, Lcom/android/phone/settings/VoicemailRingtonePreference;->mVoicemailRingtoneLookupComplete:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/VoicemailRingtonePreference;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/VoicemailRingtonePreference;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailRingtonePreference;->mVoicemailRingtoneLookupComplete:Landroid/os/Handler;

    return-object v0
.end method

.method private updateRingtoneName()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailRingtonePreference;->mVoicemailRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    return-void
.end method


# virtual methods
.method public init(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/phone/settings/VoicemailRingtonePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 46
    invoke-static {p1}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->getRingtoneUri(Lcom/android/internal/telephony/Phone;)Landroid/net/Uri;

    .line 48
    move-object v0, p0

    .line 49
    .local v0, "preference":Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailRingtonePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->getVoicemailRingtoneSharedPrefsKey(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "preferenceKey":Ljava/lang/String;
    new-instance v2, Lcom/android/phone/settings/VoicemailRingtonePreference$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/phone/settings/VoicemailRingtonePreference$2;-><init>(Lcom/android/phone/settings/VoicemailRingtonePreference;Landroid/preference/Preference;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/phone/settings/VoicemailRingtonePreference;->mVoicemailRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 63
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailRingtonePreference;->updateRingtoneName()V

    .line 64
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailRingtonePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->getRingtoneUri(Lcom/android/internal/telephony/Phone;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 1
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailRingtonePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0, p1}, Lcom/android/phone/settings/VoicemailNotificationSettingsUtil;->setRingtoneUri(Lcom/android/internal/telephony/Phone;Landroid/net/Uri;)V

    .line 77
    invoke-direct {p0}, Lcom/android/phone/settings/VoicemailRingtonePreference;->updateRingtoneName()V

    .line 78
    return-void
.end method
