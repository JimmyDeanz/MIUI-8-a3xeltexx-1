.class public Lcom/android/phone/settings/CallAdvancedSetting;
.super Lmiui/preference/PreferenceActivity;
.source "CallAdvancedSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAutoIP:Lmiui/preference/ValuePreference;

.field private mAutoRedial:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

.field private mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

.field private mButtonDTMF:Landroid/preference/ListPreference;

.field private mButtonHAC:Landroid/preference/CheckBoxPreference;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mCallBackground:Lcom/android/phone/settings/ValueListPreference;

.field private mCallBarring:Landroid/preference/PreferenceScreen;

.field private mCallWaitingTone:Lcom/android/phone/settings/ValueListPreference;

.field private mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

.field private mConDisconVibrate:Lcom/android/phone/settings/ValueListPreference;

.field private mDialPadTouchTone:Lmiui/preference/ValuePreference;

.field private mFirstInit:Z

.field mHandler:Landroid/os/Handler;

.field private mIccCardCount:I

.field private mIsReceiverRegistered:Z

.field private mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/phone/settings/CallAdvancedSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/CallAdvancedSetting;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 110
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v0

    iput v0, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mIccCardCount:I

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mFirstInit:Z

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mIsReceiverRegistered:Z

    .line 117
    new-instance v0, Lcom/android/phone/settings/CallAdvancedSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/CallAdvancedSetting$1;-><init>(Lcom/android/phone/settings/CallAdvancedSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    new-instance v0, Lcom/android/phone/settings/CallAdvancedSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/CallAdvancedSetting$2;-><init>(Lcom/android/phone/settings/CallAdvancedSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/CallAdvancedSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallAdvancedSetting;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mIccCardCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/settings/CallAdvancedSetting;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/CallAdvancedSetting;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mIccCardCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/settings/CallAdvancedSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallAdvancedSetting;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mFirstInit:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/settings/CallAdvancedSetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/CallAdvancedSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mFirstInit:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/settings/CallAdvancedSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/CallAdvancedSetting;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->initScreen()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/settings/CallAdvancedSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/CallAdvancedSetting;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->updateScreen()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/settings/CallAdvancedSetting;)Lcom/android/phone/settings/CheckBoxTitleIconPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallAdvancedSetting;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    return-object v0
.end method

.method private handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 664
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 665
    .local v0, "buttonTtyMode":I
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 671
    .local v1, "settingsTtyMode":I
    if-eq v0, v1, :cond_0

    .line 672
    packed-switch v0, :pswitch_data_0

    .line 681
    const/4 v0, 0x0

    .line 684
    :goto_0
    iget-object v2, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 685
    invoke-direct {p0, v0}, Lcom/android/phone/settings/CallAdvancedSetting;->updatePreferredTtyModeSummary(I)V

    .line 687
    :cond_0
    return-void

    .line 677
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 672
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initForPhoneType()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 593
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 594
    .local v1, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 596
    .local v0, "hasAnyCdmaPhone":Z
    :goto_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v3

    if-gt v3, v2, :cond_2

    if-eqz v0, :cond_2

    .line 598
    const-string v2, "button_caller_id"

    invoke-static {v1, v2}, Lcom/android/phone/settings/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 599
    const-string v2, "button_auto_redial"

    invoke-static {v1, v2}, Lcom/android/phone/settings/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 606
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->initSimIcon()V

    .line 607
    return-void

    .line 594
    .end local v0    # "hasAnyCdmaPhone":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 600
    .restart local v0    # "hasAnyCdmaPhone":Z
    :cond_2
    if-nez v0, :cond_0

    .line 602
    const-string v2, "button_display_precise_call_state"

    invoke-static {v1, v2}, Lcom/android/phone/settings/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 603
    const-string v2, "button_voice_privacy"

    invoke-static {v1, v2}, Lcom/android/phone/settings/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private initScreen()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 204
    const v1, 0x7f060004

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallAdvancedSetting;->addPreferencesFromResource(I)V

    .line 206
    const-string v1, "pref_key_dial_pad_touch_tone"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiui/preference/ValuePreference;

    iput-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mDialPadTouchTone:Lmiui/preference/ValuePreference;

    .line 207
    const-string v1, "button_t9_index_method_settings"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/ValueListPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;

    .line 208
    const-string v1, "button_auto_redial"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoRedial:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    .line 210
    const-string v1, "button_call_background"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/ValueListPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBackground:Lcom/android/phone/settings/ValueListPreference;

    .line 211
    const-string v1, "pref_key_auto_ip"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiui/preference/ValuePreference;

    iput-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoIP:Lmiui/preference/ValuePreference;

    .line 212
    const-string v1, "button_missed_call_notify_times"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/ValueListPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

    .line 213
    const-string v1, "button_connect_disconnect_vibrate"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/ValueListPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mConDisconVibrate:Lcom/android/phone/settings/ValueListPreference;

    .line 214
    const-string v1, "button_display_precise_call_state"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    .line 216
    const-string v1, "button_call_waiting_tone"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/ValueListPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallWaitingTone:Lcom/android/phone/settings/ValueListPreference;

    .line 218
    const-string v1, "button_call_barring"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBarring:Landroid/preference/PreferenceScreen;

    .line 219
    const-string v1, "button_auto_retry"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    .line 220
    const-string v1, "button_dtmf_settings"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    .line 221
    const-string v1, "button_hac"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    .line 222
    const-string v1, "button_tty_mode"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    .line 224
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 225
    .local v0, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-direct {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->initForPhoneType()V

    .line 227
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mDialPadTouchTone:Lmiui/preference/ValuePreference;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mDialPadTouchTone:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 229
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mDialPadTouchTone:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v4}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoRedial:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoRedial:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/settings/CheckBoxTitleIconPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoIP:Lmiui/preference/ValuePreference;

    if-eqz v1, :cond_2

    .line 237
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoIP:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v4}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 238
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_2

    .line 239
    const-string v1, "pref_key_auto_ip"

    invoke-static {v0, v1}, Lcom/android/phone/settings/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 243
    :cond_2
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;

    if-eqz v1, :cond_3

    .line 244
    invoke-direct {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->isAllowShowT9Index()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 245
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/settings/ValueListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 251
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

    if-eqz v1, :cond_4

    .line 252
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/settings/ValueListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 255
    :cond_4
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    if-eqz v1, :cond_5

    .line 256
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/settings/CheckBoxTitleIconPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 259
    :cond_5
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBarring:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_6

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_6

    .line 261
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBarring:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/settings/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 262
    iput-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBarring:Landroid/preference/PreferenceScreen;

    .line 265
    :cond_6
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_7

    .line 266
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 267
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 274
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v1, :cond_8

    .line 275
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 276
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 283
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_9

    .line 284
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 285
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 292
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v1, :cond_a

    .line 293
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 294
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 301
    :cond_a
    :goto_4
    sget-boolean v1, Lmiui/os/Build;->IS_CTA_BUILD:Z

    if-eqz v1, :cond_b

    .line 302
    const-string v1, "button_auto_redial"

    invoke-static {v0, v1}, Lcom/android/phone/settings/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 303
    const-string v1, "button_sip_settings"

    invoke-static {v0, v1}, Lcom/android/phone/settings/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 306
    :cond_b
    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v1

    if-ne v1, v4, :cond_c

    .line 307
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mDialPadTouchTone:Lmiui/preference/ValuePreference;

    if-eqz v1, :cond_c

    .line 308
    const-string v1, "pref_key_dial_pad_touch_tone"

    invoke-static {v0, v1}, Lcom/android/phone/settings/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 309
    iput-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mDialPadTouchTone:Lmiui/preference/ValuePreference;

    .line 312
    :cond_c
    return-void

    .line 247
    :cond_d
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;

    invoke-virtual {v1}, Lcom/android/phone/settings/ValueListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/settings/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 269
    :cond_e
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/settings/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 270
    iput-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    goto :goto_1

    .line 278
    :cond_f
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/settings/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 279
    iput-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    goto :goto_2

    .line 287
    :cond_10
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/settings/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 288
    iput-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    goto :goto_3

    .line 296
    :cond_11
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/settings/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 297
    iput-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    goto :goto_4
.end method

.method private initSimIcon()V
    .locals 9

    .prologue
    const v7, 0x7f02003b

    const/4 v4, 0x1

    const v6, 0x7f02003a

    .line 613
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 614
    .local v1, "cdmaPhone":Lcom/android/internal/telephony/Phone;
    const-string v8, "button_voice_privacy"

    invoke-virtual {p0, v8}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;

    .line 617
    .local v5, "voicePrivacy":Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;
    const-string v8, "button_caller_id"

    invoke-virtual {p0, v8}, Lcom/android/phone/settings/CallAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/settings/TitleIconPreference;

    .line 619
    .local v0, "callerId":Lcom/android/phone/settings/TitleIconPreference;
    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 620
    invoke-virtual {v5, v1}, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;->init(Lcom/android/internal/telephony/Phone;)V

    .line 623
    :cond_0
    const/4 v2, 0x0

    .line 624
    .local v2, "cdmaSimIconResId":I
    iget v8, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mIccCardCount:I

    if-le v8, v4, :cond_1

    if-eqz v1, :cond_1

    .line 625
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    if-nez v8, :cond_7

    move v2, v6

    .line 629
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    .line 630
    invoke-virtual {v5, v2}, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;->setTitleIconResource(I)V

    .line 633
    :cond_2
    iget-object v8, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    if-eqz v8, :cond_3

    .line 634
    iget-object v8, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    invoke-virtual {v8, v2}, Lcom/android/phone/settings/CheckBoxTitleIconPreference;->setTitleIconResource(I)V

    .line 637
    :cond_3
    const/4 v3, 0x0

    .line 638
    .local v3, "gsmSimIconResId":I
    if-eqz v2, :cond_4

    .line 639
    if-ne v2, v6, :cond_8

    move v3, v7

    .line 642
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoRedial:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    if-eqz v6, :cond_5

    .line 643
    iget-object v6, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoRedial:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    invoke-virtual {v6, v3}, Lcom/android/phone/settings/CheckBoxTitleIconPreference;->setTitleIconResource(I)V

    .line 645
    :cond_5
    if-eqz v0, :cond_6

    .line 646
    invoke-virtual {v0, v3}, Lcom/android/phone/settings/TitleIconPreference;->setTitleIconResource(I)V

    .line 647
    if-eqz v1, :cond_6

    .line 648
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    if-nez v6, :cond_9

    .line 650
    .local v4, "gsmSlotId":I
    :goto_2
    invoke-virtual {v0}, Lcom/android/phone/settings/TitleIconPreference;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v6, v4}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 653
    .end local v4    # "gsmSlotId":I
    :cond_6
    return-void

    .end local v3    # "gsmSimIconResId":I
    :cond_7
    move v2, v7

    .line 625
    goto :goto_0

    .restart local v3    # "gsmSimIconResId":I
    :cond_8
    move v3, v6

    .line 639
    goto :goto_1

    .line 648
    :cond_9
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private isAllowShowT9Index()Z
    .locals 2

    .prologue
    .line 315
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "region":Ljava/lang/String;
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const-string v1, "HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    const/4 v1, 0x0

    .line 321
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setEnabledForKey(ZLjava/lang/String;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 657
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 660
    :cond_0
    return-void
.end method

.method private showRebuildT9IndexDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 579
    new-instance v0, Lcom/android/phone/settings/CallAdvancedSetting$4;

    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/settings/CallAdvancedSetting$4;-><init>(Lcom/android/phone/settings/CallAdvancedSetting;Landroid/app/FragmentManager;)V

    const v1, 0x7f080325

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/CallAdvancedSetting$4;->setMessage(I)Lmiui/os/AsyncTaskWithProgress;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/os/AsyncTaskWithProgress;->setCancelable(Z)Lmiui/os/AsyncTaskWithProgress;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/os/AsyncTaskWithProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 590
    return-void
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 4
    .param p1, "TtyMode"    # I

    .prologue
    const/4 v3, 0x0

    .line 690
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "txts":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 699
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 700
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 702
    :goto_0
    return-void

    .line 696
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 691
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateScreen()V
    .locals 28

    .prologue
    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mDialPadTouchTone:Lmiui/preference/ValuePreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "dtmf_tone"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "dial_pad_touch_tone"

    const/16 v27, -0x1

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 333
    .local v23, "value":I
    const/16 v21, -0x1

    .line 334
    .local v21, "summaryId":I
    packed-switch v23, :pswitch_data_0

    .line 339
    const v21, 0x7f08039a

    .line 342
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mDialPadTouchTone:Lmiui/preference/ValuePreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(I)V

    .line 348
    .end local v21    # "summaryId":I
    .end local v23    # "value":I
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "t9_indexing_key"

    invoke-static {}, Landroid/provider/MiuiSettings$System;->getT9IndexingKeyDefault()I

    move-result v27

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 352
    .local v16, "method":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/ValueListPreference;->setValueIndex(I)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f070028

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    aget-object v26, v26, v16

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/settings/ValueListPreference;->setRightValue(Ljava/lang/String;)V

    .line 357
    .end local v16    # "method":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoRedial:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/provider/MiuiSettings$Telephony;->getEnabledAutoRedial(Landroid/content/ContentResolver;)Z

    move-result v15

    .line 360
    .local v15, "isAutoRedial":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoRedial:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/android/phone/settings/CheckBoxTitleIconPreference;->setChecked(Z)V

    .line 363
    .end local v15    # "isAutoRedial":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoIP:Lmiui/preference/ValuePreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/provider/MiuiSettings$Telephony;->isAutoIpEnable(Landroid/content/ContentResolver;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoIP:Lmiui/preference/ValuePreference;

    move-object/from16 v25, v0

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 369
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoIP:Lmiui/preference/ValuePreference;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mIccCardCount:I

    move/from16 v25, v0

    if-lez v25, :cond_f

    const/16 v25, 0x1

    :goto_3
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setEnabled(Z)V

    .line 372
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/provider/MiuiSettings$Telephony;->getMissedCallNotifyTimes(Landroid/content/ContentResolver;)I

    move-result v22

    .line 374
    .local v22, "times":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/settings/ValueListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v13

    .line 375
    .local v13, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f07002c

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    aget-object v26, v26, v13

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/settings/ValueListPreference;->setRightValue(Ljava/lang/String;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lcom/android/phone/settings/ValueListPreference;->setValueIndex(I)V

    .line 380
    .end local v13    # "index":I
    .end local v22    # "times":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mConDisconVibrate:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mConDisconVibrate:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/ValueListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f07002e

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    .line 384
    .local v24, "vibrateSummary":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mConDisconVibrate:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/provider/MiuiSettings$Telephony;->getVibrateKey(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/settings/ValueListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v13

    .line 386
    .restart local v13    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mConDisconVibrate:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    aget-object v26, v24, v13

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/settings/ValueListPreference;->setRightValue(Ljava/lang/String;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mConDisconVibrate:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lcom/android/phone/settings/ValueListPreference;->setValueIndex(I)V

    .line 390
    .end local v13    # "index":I
    .end local v24    # "vibrateSummary":[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "cdma_precise_answer_state"

    const/16 v27, 0x1

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 394
    .local v18, "preciseCallState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    move-object/from16 v26, v0

    const/16 v25, 0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    const/16 v25, 0x1

    :goto_4
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/CheckBoxTitleIconPreference;->setChecked(Z)V

    .line 398
    .end local v18    # "preciseCallState":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBackground:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f07002a

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, "callBackgroundSummary":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/provider/MiuiSettings$Telephony;->getCallBackgroundType(Landroid/content/ContentResolver;)I

    move-result v13

    .line 402
    .restart local v13    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBackground:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    aget-object v26, v4, v13

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/settings/ValueListPreference;->setRightValue(Ljava/lang/String;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBackground:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lcom/android/phone/settings/ValueListPreference;->setValueIndex(I)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBackground:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/ValueListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 407
    .end local v4    # "callBackgroundSummary":[Ljava/lang/String;
    .end local v13    # "index":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallWaitingTone:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallWaitingTone:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/ValueListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f070030

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 411
    .local v5, "callWaitToneSummary":[Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/provider/MiuiSettings$Telephony;->getCallWaitingTone(Landroid/content/Context;)I

    move-result v13

    .line 412
    .restart local v13    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallWaitingTone:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    aget-object v26, v5, v13

    invoke-virtual/range {v25 .. v26}, Lcom/android/phone/settings/ValueListPreference;->setRightValue(Ljava/lang/String;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallWaitingTone:Lcom/android/phone/settings/ValueListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lcom/android/phone/settings/ValueListPreference;->setValueIndex(I)V

    .line 416
    .end local v5    # "callWaitToneSummary":[Ljava/lang/String;
    .end local v13    # "index":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "dtmf_tone_type"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 419
    .local v7, "dtmf":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 421
    .end local v7    # "dtmf":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "call_auto_retry"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 424
    .local v3, "autoretry":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    move-object/from16 v26, v0

    if-eqz v3, :cond_11

    const/16 v25, 0x1

    :goto_5
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 427
    .end local v3    # "autoretry":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_b

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "hearing_aid"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 429
    .local v9, "hac":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v26, v0

    if-eqz v9, :cond_12

    const/16 v25, 0x1

    :goto_6
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 431
    .end local v9    # "hac":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "preferred_tty_mode"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 435
    .local v19, "settingsTtyMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 436
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/settings/CallAdvancedSetting;->updatePreferredTtyModeSummary(I)V

    .line 440
    .end local v19    # "settingsTtyMode":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "airplane_mode_on"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-lez v25, :cond_13

    const/4 v14, 0x1

    .line 442
    .local v14, "isAirPlane":Z
    :goto_7
    const/4 v8, 0x0

    .line 443
    .local v8, "fdnDisabled":Z
    const/4 v10, 0x0

    .line 444
    .local v10, "hasICC":Z
    if-nez v14, :cond_15

    .line 445
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v20

    .line 446
    .local v20, "slotCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8
    move/from16 v0, v20

    if-ge v12, v0, :cond_15

    .line 447
    invoke-static {v12}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v17

    .line 448
    .local v17, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v11

    .line 449
    .local v11, "hasIccCard":Z
    if-eqz v11, :cond_14

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v25

    if-nez v25, :cond_14

    const/16 v25, 0x1

    :goto_9
    or-int v8, v8, v25

    .line 450
    or-int/2addr v10, v11

    .line 446
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 336
    .end local v8    # "fdnDisabled":Z
    .end local v10    # "hasICC":Z
    .end local v11    # "hasIccCard":Z
    .end local v12    # "i":I
    .end local v14    # "isAirPlane":Z
    .end local v17    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v20    # "slotCount":I
    .restart local v21    # "summaryId":I
    .restart local v23    # "value":I
    :pswitch_0
    const v21, 0x7f08039b

    .line 337
    goto/16 :goto_0

    .line 344
    .end local v21    # "summaryId":I
    .end local v23    # "value":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mDialPadTouchTone:Lmiui/preference/ValuePreference;

    move-object/from16 v25, v0

    const v26, 0x7f08039c

    invoke-virtual/range {v25 .. v26}, Lmiui/preference/ValuePreference;->setValue(I)V

    goto/16 :goto_1

    .line 367
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoIP:Lmiui/preference/ValuePreference;

    move-object/from16 v25, v0

    const v26, 0x7f080395

    invoke-virtual/range {v25 .. v26}, Lmiui/preference/ValuePreference;->setValue(I)V

    goto/16 :goto_2

    .line 369
    :cond_f
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 394
    .restart local v18    # "preciseCallState":I
    :cond_10
    const/16 v25, 0x0

    goto/16 :goto_4

    .line 424
    .end local v18    # "preciseCallState":I
    .restart local v3    # "autoretry":I
    :cond_11
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 429
    .end local v3    # "autoretry":I
    .restart local v9    # "hac":I
    :cond_12
    const/16 v25, 0x0

    goto/16 :goto_6

    .line 440
    .end local v9    # "hac":I
    :cond_13
    const/4 v14, 0x0

    goto :goto_7

    .line 449
    .restart local v8    # "fdnDisabled":Z
    .restart local v10    # "hasICC":Z
    .restart local v11    # "hasIccCard":Z
    .restart local v12    # "i":I
    .restart local v14    # "isAirPlane":Z
    .restart local v17    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v20    # "slotCount":I
    :cond_14
    const/16 v25, 0x0

    goto :goto_9

    .line 454
    .end local v11    # "hasIccCard":Z
    .end local v12    # "i":I
    .end local v17    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v20    # "slotCount":I
    :cond_15
    if-eqz v8, :cond_16

    if-eqz v10, :cond_16

    if-nez v14, :cond_16

    const/4 v6, 0x1

    .line 455
    .local v6, "canBeEnabled":Z
    :goto_a
    const-string v25, "button_voice_privacy"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v6, v1}, Lcom/android/phone/settings/CallAdvancedSetting;->setEnabledForKey(ZLjava/lang/String;)V

    .line 456
    const-string v25, "button_caller_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v6, v1}, Lcom/android/phone/settings/CallAdvancedSetting;->setEnabledForKey(ZLjava/lang/String;)V

    .line 457
    if-eqz v10, :cond_17

    if-nez v14, :cond_17

    const/16 v25, 0x1

    :goto_b
    const-string v26, "button_fdn"

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/phone/settings/CallAdvancedSetting;->setEnabledForKey(ZLjava/lang/String;)V

    .line 458
    if-eqz v10, :cond_18

    if-nez v14, :cond_18

    const/16 v25, 0x1

    :goto_c
    const-string v26, "button_voicemail"

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/phone/settings/CallAdvancedSetting;->setEnabledForKey(ZLjava/lang/String;)V

    .line 459
    if-eqz v10, :cond_19

    if-nez v14, :cond_19

    const/16 v25, 0x1

    :goto_d
    const-string v26, "button_call_barring"

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/phone/settings/CallAdvancedSetting;->setEnabledForKey(ZLjava/lang/String;)V

    .line 461
    return-void

    .line 454
    .end local v6    # "canBeEnabled":Z
    :cond_16
    const/4 v6, 0x0

    goto :goto_a

    .line 457
    .restart local v6    # "canBeEnabled":Z
    :cond_17
    const/16 v25, 0x0

    goto :goto_b

    .line 458
    :cond_18
    const/16 v25, 0x0

    goto :goto_c

    .line 459
    :cond_19
    const/16 v25, 0x0

    goto :goto_d

    .line 334
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 163
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 166
    .local v0, "actionBar":Lmiui/app/ActionBar;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0, v3}, Lmiui/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->initScreen()V

    .line 171
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/settings/CallAdvancedSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    iput-boolean v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mIsReceiverRegistered:Z

    .line 176
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 187
    iget-object v0, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    iget-boolean v0, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mIsReceiverRegistered:Z

    .line 190
    iget-object v0, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CallAdvancedSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 192
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 196
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->finish()V

    .line 198
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 473
    iget-object v4, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;

    if-ne p1, v4, :cond_1

    .line 474
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Lcom/android/phone/settings/ValueListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 475
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "t9_indexing_key"

    invoke-static {}, Landroid/provider/MiuiSettings$System;->getT9IndexingKeyDefault()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "t9_indexing_key"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 480
    invoke-direct {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->showRebuildT9IndexDialog()V

    .line 481
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mT9IndexingMethod:Lcom/android/phone/settings/ValueListPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/ValueListPreference;->setRightValue(Ljava/lang/String;)V

    .line 537
    .end local v1    # "index":I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 484
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBackground:Lcom/android/phone/settings/ValueListPreference;

    if-ne p1, v4, :cond_2

    .line 485
    iget-object v4, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBackground:Lcom/android/phone/settings/ValueListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/android/phone/settings/ValueListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 486
    .restart local v1    # "index":I
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallBackground:Lcom/android/phone/settings/ValueListPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/ValueListPreference;->setRightValue(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/provider/MiuiSettings$Telephony;->setCallBackgroundType(Landroid/content/ContentResolver;I)Z

    goto :goto_0

    .line 489
    .end local v1    # "index":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

    if-ne p1, v4, :cond_3

    .line 490
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4, v3}, Landroid/provider/MiuiSettings$Telephony;->setMissedCallNotifyTimes(Landroid/content/ContentResolver;I)V

    .line 492
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Lcom/android/phone/settings/ValueListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 493
    .restart local v1    # "index":I
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mMissedCallNotifyTimes:Lcom/android/phone/settings/ValueListPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/ValueListPreference;->setRightValue(Ljava/lang/String;)V

    goto :goto_0

    .line 495
    .end local v1    # "index":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    iget-object v4, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mConDisconVibrate:Lcom/android/phone/settings/ValueListPreference;

    if-ne p1, v4, :cond_4

    .line 496
    iget-object v4, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mConDisconVibrate:Lcom/android/phone/settings/ValueListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/android/phone/settings/ValueListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 497
    .restart local v1    # "index":I
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "vibrateSummary":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {v3, p2}, Landroid/provider/MiuiSettings$Telephony;->setVibrateKey(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 500
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mConDisconVibrate:Lcom/android/phone/settings/ValueListPreference;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/ValueListPreference;->setRightValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 501
    .end local v1    # "index":I
    .end local v2    # "vibrateSummary":[Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    iget-object v4, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    if-ne p1, v4, :cond_6

    .line 502
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 503
    new-instance v4, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f080375

    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080377

    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/android/phone/settings/CallAdvancedSetting$3;

    invoke-direct {v6, p0}, Lcom/android/phone/settings/CallAdvancedSetting$3;-><init>(Lcom/android/phone/settings/CallAdvancedSetting;)V

    invoke-virtual {v4, v5, v6}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    goto/16 :goto_1

    .line 518
    :cond_5
    iget-object v4, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    invoke-virtual {v4, v3}, Lcom/android/phone/settings/CheckBoxTitleIconPreference;->setChecked(Z)V

    .line 519
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cdma_precise_answer_state"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 524
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_6
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallWaitingTone:Lcom/android/phone/settings/ValueListPreference;

    if-ne p1, v3, :cond_7

    .line 525
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallWaitingTone:Lcom/android/phone/settings/ValueListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Lcom/android/phone/settings/ValueListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 526
    .restart local v1    # "index":I
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "callWaitToneSummary":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mCallWaitingTone:Lcom/android/phone/settings/ValueListPreference;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/ValueListPreference;->setRightValue(Ljava/lang/String;)V

    .line 528
    invoke-static {p0, v1}, Landroid/provider/MiuiSettings$Telephony;->setCallWaitingTone(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 529
    .end local v0    # "callWaitToneSummary":[Ljava/lang/String;
    .end local v1    # "index":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_7
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_8

    .line 530
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 531
    .restart local v1    # "index":I
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dtmf_tone_type"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 533
    .end local v1    # "index":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_8
    iget-object v3, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 534
    invoke-direct {p0, p1, p2}, Lcom/android/phone/settings/CallAdvancedSetting;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const v6, 0x7f080396

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 542
    iget-object v5, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mDialPadTouchTone:Lmiui/preference/ValuePreference;

    if-ne p1, v5, :cond_0

    .line 543
    new-instance v2, Landroid/content/Intent;

    const-string v3, "miui.intent.action.APP_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.android.contacts"

    const-string v5, "com.android.contacts.preference.ContactsPreferenceActivity"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    const-string v3, ":android:show_fragment"

    const-string v5, "com.android.contacts.preference.DialpadTouchTonePreferenceFragment"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    const-string v3, ":android:show_fragment_title"

    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/MiuiPhoneUtils;->addWindowLable(Landroid/content/Intent;Ljava/lang/CharSequence;)V

    .line 551
    invoke-virtual {p0, v2}, Lcom/android/phone/settings/CallAdvancedSetting;->startActivity(Landroid/content/Intent;)V

    .line 572
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return v4

    .line 553
    :cond_0
    iget-object v5, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoRedial:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    if-ne p1, v5, :cond_1

    .line 554
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mAutoRedial:Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    invoke-virtual {v5}, Lcom/android/phone/settings/CheckBoxTitleIconPreference;->isChecked()Z

    move-result v5

    invoke-static {v3, v5}, Landroid/provider/MiuiSettings$Telephony;->setAutoRedialEnabled(Landroid/content/ContentResolver;Z)V

    goto :goto_0

    .line 557
    :cond_1
    iget-object v5, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_3

    .line 558
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_auto_retry"

    iget-object v7, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    move v3, v4

    :cond_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 562
    :cond_3
    iget-object v5, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_6

    .line 563
    iget-object v5, p0, Lcom/android/phone/settings/CallAdvancedSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v4

    .line 565
    .local v1, "hac":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hearing_aid"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 567
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/phone/settings/CallAdvancedSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 568
    .local v0, "am":Landroid/media/AudioManager;
    const-string v5, "%s=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "HACSetting"

    aput-object v7, v6, v3

    if-eqz v1, :cond_5

    const-string v3, "ON"

    :goto_2
    aput-object v3, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "hac":I
    :cond_4
    move v1, v3

    .line 563
    goto :goto_1

    .line 568
    .restart local v0    # "am":Landroid/media/AudioManager;
    .restart local v1    # "hac":I
    :cond_5
    const-string v3, "OFF"

    goto :goto_2

    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "hac":I
    :cond_6
    move v4, v3

    .line 572
    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 181
    invoke-direct {p0}, Lcom/android/phone/settings/CallAdvancedSetting;->updateScreen()V

    .line 182
    return-void
.end method
