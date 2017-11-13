.class public Lcom/android/phone/settings/CallFeaturesSetting;
.super Lmiui/preference/PreferenceActivity;
.source "CallFeaturesSetting.java"


# instance fields
.field private mAntispamSetting:Lmiui/preference/ValuePreference;

.field private mAutoAnswer:Lmiui/preference/ValuePreference;

.field private mCallRecord:Lmiui/preference/ValuePreference;

.field private mCloudAntispam:Lmiui/preference/ValuePreference;

.field private mFirstInit:Z

.field mHandler:Landroid/os/Handler;

.field private mIccCardCount:I

.field private mIsReceiverRegistered:Z

.field private mNetworkSetting:Landroid/preference/PreferenceScreen;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTelocation:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mIsReceiverRegistered:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mFirstInit:Z

    .line 120
    new-instance v0, Lcom/android/phone/settings/CallFeaturesSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/CallFeaturesSetting$1;-><init>(Lcom/android/phone/settings/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    new-instance v0, Lcom/android/phone/settings/CallFeaturesSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/CallFeaturesSetting$2;-><init>(Lcom/android/phone/settings/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/CallFeaturesSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallFeaturesSetting;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mIccCardCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/settings/CallFeaturesSetting;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/CallFeaturesSetting;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mIccCardCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/settings/CallFeaturesSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallFeaturesSetting;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mFirstInit:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/settings/CallFeaturesSetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/CallFeaturesSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mFirstInit:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/settings/CallFeaturesSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/CallFeaturesSetting;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/settings/CallFeaturesSetting;->initScreen()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/settings/CallFeaturesSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/CallFeaturesSetting;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/settings/CallFeaturesSetting;->updateScreen()V

    return-void
.end method

.method private initScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 225
    const v2, 0x7f060019

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 227
    const-string v2, "pref_key_call_network_setting"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mNetworkSetting:Landroid/preference/PreferenceScreen;

    .line 228
    const-string v2, "pref_key_call_record_setting"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiui/preference/ValuePreference;

    iput-object v2, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mCallRecord:Lmiui/preference/ValuePreference;

    .line 229
    const-string v2, "pref_key_cloud_antispam"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiui/preference/ValuePreference;

    iput-object v2, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mCloudAntispam:Lmiui/preference/ValuePreference;

    .line 230
    const-string v2, "pref_key_antispam_setting"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiui/preference/ValuePreference;

    iput-object v2, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mAntispamSetting:Lmiui/preference/ValuePreference;

    .line 231
    const-string v2, "button_auto_answer_screen"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiui/preference/ValuePreference;

    iput-object v2, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mAutoAnswer:Lmiui/preference/ValuePreference;

    .line 232
    const-string v2, "pref_key_telocation"

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mTelocation:Landroid/preference/PreferenceScreen;

    .line 234
    invoke-virtual {p0}, Lcom/android/phone/settings/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 236
    .local v1, "prefScreen":Landroid/preference/PreferenceScreen;
    iget-object v2, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mCallRecord:Lmiui/preference/ValuePreference;

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mCallRecord:Lmiui/preference/ValuePreference;

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 238
    invoke-static {p0}, Lcom/android/phone/TelephonyCapabilities;->supportsCallRecording(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 239
    const-string v2, "pref_key_call_record_setting"

    invoke-static {v1, v2}, Lcom/android/phone/settings/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/settings/CallFeaturesSetting;->isVoipAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 244
    const-string v2, "pref_key_voip_setting"

    invoke-static {v1, v2}, Lcom/android/phone/settings/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/settings/CallFeaturesSetting;->isLivetalkAvaible()Z

    move-result v2

    if-nez v2, :cond_2

    .line 248
    const-string v2, "pref_key_livetalk_setting"

    invoke-static {v1, v2}, Lcom/android/phone/settings/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 251
    :cond_2
    iget-object v2, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mCloudAntispam:Lmiui/preference/ValuePreference;

    if-eqz v2, :cond_3

    .line 252
    iget-object v2, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mCloudAntispam:Lmiui/preference/ValuePreference;

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 253
    invoke-static {p0}, Lmiui/yellowpage/YellowPageUtils;->isYellowPageAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 254
    const-string v2, "pref_key_cloud_antispam"

    invoke-static {v1, v2}, Lcom/android/phone/settings/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 264
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mAntispamSetting:Lmiui/preference/ValuePreference;

    if-eqz v2, :cond_4

    .line 265
    iget-object v2, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mAntispamSetting:Lmiui/preference/ValuePreference;

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 268
    :cond_4
    iget-object v2, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mAutoAnswer:Lmiui/preference/ValuePreference;

    if-eqz v2, :cond_5

    .line 269
    iget-object v2, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mAutoAnswer:Lmiui/preference/ValuePreference;

    invoke-virtual {v2, v3}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 272
    :cond_5
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_6

    .line 273
    const-string v2, "pref_key_auto_ip"

    invoke-static {v1, v2}, Lcom/android/phone/settings/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 275
    :cond_6
    return-void

    .line 256
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.TURN_ON_SMART_ANTISPAM"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.miui.yellowpage"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0}, Lcom/android/phone/settings/CallFeaturesSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_3

    .line 259
    const-string v2, "pref_key_cloud_antispam"

    invoke-static {v1, v2}, Lcom/android/phone/settings/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private isLivetalkAvaible()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 398
    iget-object v4, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 399
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lmiui/telephony/livetalk/LivetalkUtils;->getLivetalkStatus(Landroid/content/Context;)I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 407
    :goto_0
    return v2

    .line 403
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.miui.milivetalk"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 404
    goto :goto_0

    .line 405
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private isVoipAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 384
    invoke-virtual {p0}, Lcom/android/phone/settings/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 393
    :goto_0
    return v1

    .line 389
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.miui.voip"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    const/4 v1, 0x1

    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .param p0, "group"    # Landroid/preference/PreferenceGroup;
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 368
    const/4 v3, 0x0

    .line 369
    .local v3, "ret":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 370
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 371
    .local v2, "prefCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    if-nez v3, :cond_2

    .line 372
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 373
    .local v1, "p":Landroid/preference/Preference;
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 374
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    .line 371
    .end local v1    # "p":Landroid/preference/Preference;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    .restart local v1    # "p":Landroid/preference/Preference;
    :cond_1
    instance-of v4, v1, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 376
    check-cast v1, Landroid/preference/PreferenceGroup;

    .end local v1    # "p":Landroid/preference/Preference;
    invoke-static {v1, p1}, Lcom/android/phone/settings/CallFeaturesSetting;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 380
    .end local v0    # "i":I
    .end local v2    # "prefCount":I
    :cond_2
    return v3
.end method

.method private setEnabledForKey(ZLjava/lang/String;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/android/phone/settings/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 362
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 365
    :cond_0
    return-void
.end method

.method private updateScreen()V
    .locals 20

    .prologue
    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallFeaturesSetting;->mNetworkSetting:Landroid/preference/PreferenceScreen;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 280
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallFeaturesSetting;->mNetworkSetting:Landroid/preference/PreferenceScreen;

    move-object/from16 v16, v0

    const v17, 0x7f08039f

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 287
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallFeaturesSetting;->mCallRecord:Lmiui/preference/ValuePreference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 288
    invoke-static/range {p0 .. p0}, Lcom/android/phone/settings/CallRecordSetting;->isAutoRecordOn(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallFeaturesSetting;->mCallRecord:Lmiui/preference/ValuePreference;

    move-object/from16 v16, v0

    const v17, 0x7f08030b

    invoke-virtual/range {v16 .. v17}, Lmiui/preference/ValuePreference;->setValue(I)V

    .line 295
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallFeaturesSetting;->mTelocation:Landroid/preference/PreferenceScreen;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/provider/MiuiSettings$Telephony;->isTelocationEnable(Landroid/content/ContentResolver;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 299
    const v16, 0x7f080398

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 303
    .local v15, "summaryTeloc":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/provider/MiuiSettings$Telephony;->isAutoCountryCodeEnable(Landroid/content/ContentResolver;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 304
    const v16, 0x7f080399

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 310
    .local v14, "summaryCountryCode":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallFeaturesSetting;->mTelocation:Landroid/preference/PreferenceScreen;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 313
    .end local v14    # "summaryCountryCode":Ljava/lang/String;
    .end local v15    # "summaryTeloc":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallFeaturesSetting;->mAntispamSetting:Lmiui/preference/ValuePreference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 314
    invoke-static/range {p0 .. p0}, Landroid/provider/MiuiSettings$AntiSpam;->isAntiSpam(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallFeaturesSetting;->mAntispamSetting:Lmiui/preference/ValuePreference;

    move-object/from16 v16, v0

    const v17, 0x7f08030b

    invoke-virtual/range {v16 .. v17}, Lmiui/preference/ValuePreference;->setValue(I)V

    .line 321
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallFeaturesSetting;->mAutoAnswer:Lmiui/preference/ValuePreference;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 322
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    const-string v17, "button_auto_answer"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-nez v16, :cond_a

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallFeaturesSetting;->mAutoAnswer:Lmiui/preference/ValuePreference;

    move-object/from16 v16, v0

    const v17, 0x7f080336

    invoke-virtual/range {v16 .. v17}, Lmiui/preference/ValuePreference;->setValue(I)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallFeaturesSetting;->mAutoAnswer:Lmiui/preference/ValuePreference;

    move-object/from16 v16, v0

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Lmiui/preference/ValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 341
    :cond_4
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "airplane_mode_on"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    if-lez v16, :cond_b

    const/4 v11, 0x1

    .line 343
    .local v11, "isAirPlane":Z
    :goto_6
    const/4 v6, 0x0

    .line 344
    .local v6, "fdnDisabled":Z
    const/4 v7, 0x0

    .line 345
    .local v7, "hasICC":Z
    if-nez v11, :cond_d

    .line 346
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v13

    .line 347
    .local v13, "slotCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7
    if-ge v9, v13, :cond_d

    .line 348
    invoke-static {v9}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    .line 349
    .local v12, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v8

    .line 350
    .local v8, "hasIccCard":Z
    if-eqz v8, :cond_c

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v16

    if-nez v16, :cond_c

    const/16 v16, 0x1

    :goto_8
    or-int v6, v6, v16

    .line 351
    or-int/2addr v7, v8

    .line 347
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 283
    .end local v6    # "fdnDisabled":Z
    .end local v7    # "hasICC":Z
    .end local v8    # "hasIccCard":Z
    .end local v9    # "i":I
    .end local v11    # "isAirPlane":Z
    .end local v12    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v13    # "slotCount":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallFeaturesSetting;->mNetworkSetting:Landroid/preference/PreferenceScreen;

    move-object/from16 v16, v0

    const v17, 0x7f08044e

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    goto/16 :goto_0

    .line 291
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallFeaturesSetting;->mCallRecord:Lmiui/preference/ValuePreference;

    move-object/from16 v16, v0

    const v17, 0x7f08030c

    invoke-virtual/range {v16 .. v17}, Lmiui/preference/ValuePreference;->setValue(I)V

    goto/16 :goto_1

    .line 301
    :cond_7
    const v16, 0x7f080397

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "summaryTeloc":Ljava/lang/String;
    goto/16 :goto_2

    .line 307
    :cond_8
    const v16, 0x7f08039d

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/CallFeaturesSetting;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "summaryCountryCode":Ljava/lang/String;
    goto/16 :goto_3

    .line 317
    .end local v14    # "summaryCountryCode":Ljava/lang/String;
    .end local v15    # "summaryTeloc":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallFeaturesSetting;->mAntispamSetting:Lmiui/preference/ValuePreference;

    move-object/from16 v16, v0

    const v17, 0x7f08030c

    invoke-virtual/range {v16 .. v17}, Lmiui/preference/ValuePreference;->setValue(I)V

    goto/16 :goto_4

    .line 327
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    const-string v17, "button_auto_answer_delay"

    const-string v18, "3"

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 330
    .local v5, "delay":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallFeaturesSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f070034

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "autoAnswerSummary":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/CallFeaturesSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    const-string v17, "button_auto_answer_scenario"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 335
    .local v10, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallFeaturesSetting;->mAutoAnswer:Lmiui/preference/ValuePreference;

    move-object/from16 v16, v0

    aget-object v17, v3, v10

    invoke-virtual/range {v16 .. v17}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/CallFeaturesSetting;->mAutoAnswer:Lmiui/preference/ValuePreference;

    move-object/from16 v16, v0

    const v17, 0x7f080337

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v5, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/settings/CallFeaturesSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lmiui/preference/ValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 341
    .end local v3    # "autoAnswerSummary":[Ljava/lang/String;
    .end local v5    # "delay":Ljava/lang/String;
    .end local v10    # "index":I
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 350
    .restart local v6    # "fdnDisabled":Z
    .restart local v7    # "hasICC":Z
    .restart local v8    # "hasIccCard":Z
    .restart local v9    # "i":I
    .restart local v11    # "isAirPlane":Z
    .restart local v12    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v13    # "slotCount":I
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_8

    .line 354
    .end local v8    # "hasIccCard":Z
    .end local v9    # "i":I
    .end local v12    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v13    # "slotCount":I
    :cond_d
    if-eqz v6, :cond_e

    if-eqz v7, :cond_e

    if-nez v11, :cond_e

    const/4 v4, 0x1

    .line 355
    .local v4, "canBeEnabled":Z
    :goto_9
    const-string v16, "button_call_forwarding"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v1}, Lcom/android/phone/settings/CallFeaturesSetting;->setEnabledForKey(ZLjava/lang/String;)V

    .line 356
    const-string v16, "button_call_waiting"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v1}, Lcom/android/phone/settings/CallFeaturesSetting;->setEnabledForKey(ZLjava/lang/String;)V

    .line 358
    return-void

    .line 354
    .end local v4    # "canBeEnabled":Z
    :cond_e
    const/4 v4, 0x0

    goto :goto_9
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 171
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    const v2, 0x7f080119

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 177
    invoke-virtual {p0}, Lcom/android/phone/settings/CallFeaturesSetting;->finish()V

    .line 197
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-static {v3}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 182
    invoke-virtual {p0}, Lcom/android/phone/settings/CallFeaturesSetting;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 183
    .local v0, "actionBar":Lmiui/app/ActionBar;
    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {v0, v4}, Lmiui/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 187
    :cond_1
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v2

    iput v2, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mIccCardCount:I

    .line 188
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->isDcOnlyVirtualSim(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    iget v2, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mIccCardCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mIccCardCount:I

    .line 191
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/settings/CallFeaturesSetting;->initScreen()V

    .line 192
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/settings/CallFeaturesSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    iput-boolean v4, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mIsReceiverRegistered:Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 208
    iget-object v0, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    iget-boolean v0, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mIsReceiverRegistered:Z

    .line 211
    iget-object v0, p0, Lcom/android/phone/settings/CallFeaturesSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CallFeaturesSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 213
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 217
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/phone/settings/CallFeaturesSetting;->finish()V

    .line 219
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 201
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 202
    invoke-direct {p0}, Lcom/android/phone/settings/CallFeaturesSetting;->updateScreen()V

    .line 203
    return-void
.end method
