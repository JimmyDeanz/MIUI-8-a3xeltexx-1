.class public Lcom/android/phone/settings/MobileNetworkSettings;
.super Lmiui/preference/PreferenceActivity;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# static fields
.field private static final BIG_SIM_SLOT_ICON:[I

.field private static final SMALL_SIM_SLOT_ICON:[I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mButton4glte:Landroid/preference/CheckBoxPreference;

.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataRoam:Landroid/preference/PreferenceScreen;

.field private mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

.field private mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field private mConnectManager:Landroid/net/ConnectivityManager;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsAirplaneEnabled:Z

.field private mLteDataServicePref:Landroid/preference/Preference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefData:Lcom/android/phone/settings/MultiSimListPreference;

.field private mPrefDefault:Landroid/preference/PreferenceCategory;

.field private mPrefGeneral:Landroid/preference/PreferenceCategory;

.field private mPrefSimInfo:Landroid/preference/PreferenceCategory;

.field private mPrefSimService:Landroid/preference/PreferenceCategory;

.field private mPrefVoice:Lcom/android/phone/settings/MultiSimListPreference;

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimInfoRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSimNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 95
    const-class v0, Lcom/android/phone/settings/MobileNetworkSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/MobileNetworkSettings;->TAG:Ljava/lang/String;

    .line 97
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/settings/MobileNetworkSettings;->BIG_SIM_SLOT_ICON:[I

    .line 100
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/settings/MobileNetworkSettings;->SMALL_SIM_SLOT_ICON:[I

    return-void

    .line 97
    :array_0
    .array-data 4
        0x7f020003
        0x7f020004
    .end array-data

    .line 100
    :array_1
    .array-data 4
        0x7f02003a
        0x7f02003b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSimInfoRecordList:Ljava/util/List;

    .line 152
    iput v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSimNum:I

    .line 155
    iput-boolean v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mIsAirplaneEnabled:Z

    .line 157
    new-instance v0, Lcom/android/phone/settings/MobileNetworkSettings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/MobileNetworkSettings$1;-><init>(Lcom/android/phone/settings/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/settings/MobileNetworkSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/MobileNetworkSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mIsAirplaneEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/settings/MobileNetworkSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/MobileNetworkSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/phone/settings/MobileNetworkSettings;->setPreferenceScreenEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/settings/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/MobileNetworkSettings;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/MobileNetworkSettings;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private addSimInfoPreference()V
    .locals 9

    .prologue
    .line 526
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefSimInfo:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 527
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->getVirtualSimSlot()I

    move-result v5

    .line 528
    .local v5, "virtuslSimSlot":I
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSimInfoRecordList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/SubscriptionInfo;

    .line 529
    .local v4, "siminfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    invoke-static {v6}, Lcom/android/phone/MiuiPhoneUtils;->isIccCardActivated(I)Z

    move-result v1

    .line 531
    .local v1, "enable":Z
    new-instance v3, Lcom/android/phone/settings/LTRValuePreference;

    invoke-direct {v3, p0}, Lcom/android/phone/settings/LTRValuePreference;-><init>(Landroid/content/Context;)V

    .line 532
    .local v3, "simInfoPre":Lmiui/preference/ValuePreference;
    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->getVirtualSimCarrierName()Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "displayName":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_1

    .end local v0    # "displayName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v3, v0}, Lmiui/preference/ValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 535
    invoke-direct {p0, v3, v4, v1}, Lcom/android/phone/settings/MobileNetworkSettings;->setSimSummary(Lmiui/preference/ValuePreference;Lmiui/telephony/SubscriptionInfo;Z)V

    .line 536
    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lmiui/preference/ValuePreference;->setKey(Ljava/lang/String;)V

    .line 537
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 538
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    if-ne v5, v6, :cond_2

    const v6, 0x7f020034

    :goto_3
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Lmiui/preference/ValuePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 540
    invoke-virtual {v3, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 541
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefSimInfo:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 532
    :cond_0
    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 534
    .restart local v0    # "displayName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0803a7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 538
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/android/phone/settings/MobileNetworkSettings;->BIG_SIM_SLOT_ICON:[I

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v8

    aget v6, v6, v8

    goto :goto_3

    .line 543
    .end local v1    # "enable":Z
    .end local v3    # "simInfoPre":Lmiui/preference/ValuePreference;
    .end local v4    # "siminfo":Lmiui/telephony/SubscriptionInfo;
    :cond_3
    return-void
.end method

.method private addSimServicePreference()V
    .locals 4

    .prologue
    .line 584
    iget-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefSimService:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    const/4 v0, 0x0

    .line 588
    .local v0, "count":I
    const v1, 0x7f060036

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/MobileNetworkSettings;->addPreferencesFromResource(I)V

    .line 589
    iget-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "sim_service"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefSimService:Landroid/preference/PreferenceCategory;

    .line 590
    invoke-static {p0}, Landroid/util/VirtualSim;->isSupportMiSim(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 591
    add-int/lit8 v0, v0, 0x1

    .line 592
    iget-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefSimService:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_mi_sim_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 594
    :cond_2
    invoke-static {p0}, Landroid/util/VirtualSim;->isSupportVirtualSim(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 595
    add-int/lit8 v0, v0, 0x1

    .line 596
    iget-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefSimService:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_sim_roaming_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 598
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefSimService:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 277
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 279
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "sim_info"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefSimInfo:Landroid/preference/PreferenceCategory;

    .line 280
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "sim_general"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefGeneral:Landroid/preference/PreferenceCategory;

    .line 281
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "sim_default"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefDefault:Landroid/preference/PreferenceCategory;

    .line 283
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "default_data_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/phone/settings/MultiSimListPreference;

    iput-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefData:Lcom/android/phone/settings/MultiSimListPreference;

    .line 284
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefData:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-virtual {v6, p0}, Lcom/android/phone/settings/MultiSimListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 285
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "default_voice_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/phone/settings/MultiSimListPreference;

    iput-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefVoice:Lcom/android/phone/settings/MultiSimListPreference;

    .line 286
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefVoice:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-virtual {v6, p0}, Lcom/android/phone/settings/MultiSimListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 288
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "button_data_enabled_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 289
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "button_roaming_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/PreferenceScreen;

    .line 290
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "button_mms_enabled_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    .line 292
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "enhanced_4g_lte"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButton4glte:Landroid/preference/CheckBoxPreference;

    .line 293
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButton4glte:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 294
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/telephony/TelephonyManagerEx;->isVolteEnabledByPlatform()Z

    move-result v6

    if-nez v6, :cond_0

    .line 295
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefGeneral:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButton4glte:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 298
    :cond_0
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "cdma_lte_data_service_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    .line 300
    sget-boolean v6, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v6, :cond_5

    .line 301
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0803be

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 306
    :goto_0
    invoke-static {}, Lcom/android/phone/TelephonyCapabilities;->supportShowPLMNPreference()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 307
    :cond_1
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v10, "button_uplmn_key"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 310
    :cond_2
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v6

    if-ne v6, v7, :cond_6

    move v3, v7

    .line 312
    .local v3, "isLteOnCdma":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "setup_prepaid_data_service_url"

    invoke-static {v6, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 315
    .local v4, "missingDataServiceUrl":Z
    if-eqz v3, :cond_3

    if-eqz v4, :cond_7

    .line 316
    :cond_3
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 322
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0d0015

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 324
    .local v2, "isCarrierSettingsEnabled":Z
    if-nez v2, :cond_4

    .line 325
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "carrier_settings_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 326
    .local v5, "pref":Landroid/preference/Preference;
    if-eqz v5, :cond_4

    .line 327
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 330
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v9, "carrier_settings_key"

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 331
    if-eqz v5, :cond_4

    .line 332
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 337
    .end local v5    # "pref":Landroid/preference/Preference;
    :cond_4
    new-instance v6, Lcom/android/phone/settings/MobileNetworkSettings$2;

    new-instance v9, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v6, p0, v9}, Lcom/android/phone/settings/MobileNetworkSettings$2;-><init>(Lcom/android/phone/settings/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mContentObserver:Landroid/database/ContentObserver;

    .line 353
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_8

    .line 354
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "mobile_data"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 356
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 357
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 358
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mobile_data"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v8, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 303
    .end local v1    # "i":I
    .end local v2    # "isCarrierSettingsEnabled":Z
    .end local v3    # "isLteOnCdma":Z
    .end local v4    # "missingDataServiceUrl":Z
    :cond_5
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0803bf

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    goto/16 :goto_0

    :cond_6
    move v3, v8

    .line 310
    goto/16 :goto_1

    .line 318
    .restart local v3    # "isLteOnCdma":Z
    .restart local v4    # "missingDataServiceUrl":Z
    :cond_7
    sget-object v6, Lcom/android/phone/settings/MobileNetworkSettings;->TAG:Ljava/lang/String;

    const-string v9, "Keep ltePref"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 363
    .restart local v2    # "isCarrierSettingsEnabled":Z
    :cond_8
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_9

    .line 364
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "always_enable_mms"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 368
    :cond_9
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->isMultiSimEnabled()Z

    move-result v6

    if-nez v6, :cond_a

    .line 369
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefSimInfo:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 370
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefGeneral:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 371
    iget-object v6, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefDefault:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 372
    invoke-direct {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->setGsmCdmaOptions()V

    .line 375
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 376
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_b

    .line 377
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 378
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 379
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08039f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 382
    :cond_b
    return-void
.end method

.method private isPhoneInCall()Z
    .locals 2

    .prologue
    .line 651
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setGsmCdmaOptions()V
    .locals 4

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 386
    .local v0, "phoneType":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 387
    new-instance v1, Lcom/android/phone/settings/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/settings/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    .line 393
    :goto_0
    return-void

    .line 388
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 389
    new-instance v1, Lcom/android/phone/settings/GsmUmtsOptions;

    iget-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/settings/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    goto :goto_0

    .line 391
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setNoSimInfoUi()V
    .locals 2

    .prologue
    .line 577
    iget-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefSimInfo:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 578
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 579
    .local v0, "pref":Landroid/preference/Preference;
    const v1, 0x7f0803a3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 580
    iget-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefSimInfo:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 581
    return-void
.end method

.method private setPreferenceScreenEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefSimInfo:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 173
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefGeneral:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefDefault:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefSimService:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefSimService:Landroid/preference/PreferenceCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 178
    :cond_0
    return-void
.end method

.method private setPreferenceSummary(Landroid/preference/Preference;I)V
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "slotId"    # I

    .prologue
    .line 462
    sget v4, Lcom/android/phone/settings/MultiSimListPreference;->DO_NOT_SET:I

    if-eq p2, v4, :cond_4

    .line 463
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v1

    .line 464
    .local v1, "info":Lmiui/telephony/SubscriptionInfo;
    if-eqz v1, :cond_3

    .line 465
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    invoke-static {v4}, Lcom/android/phone/MiuiPhoneUtils;->isVirtualSim(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 466
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->getVirtualSimCarrierName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 467
    const v4, 0x7f020035

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setIcon(I)V

    .line 488
    .end local v1    # "info":Lmiui/telephony/SubscriptionInfo;
    :goto_0
    return-void

    .line 469
    .restart local v1    # "info":Lmiui/telephony/SubscriptionInfo;
    :cond_0
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    .local v3, "newName":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 472
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_1

    .line 473
    const-string v4, "%%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 475
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 478
    :cond_2
    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 479
    sget-object v4, Lcom/android/phone/settings/MobileNetworkSettings;->SMALL_SIM_SLOT_ICON:[I

    aget v4, v4, p2

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_0

    .line 482
    .end local v0    # "i":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "newName":Ljava/lang/StringBuilder;
    :cond_3
    sget-object v4, Lcom/android/phone/settings/MobileNetworkSettings;->TAG:Ljava/lang/String;

    const-string v5, "setPreferenceSummary SimInfoRecord is null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 485
    .end local v1    # "info":Lmiui/telephony/SubscriptionInfo;
    :cond_4
    const v4, 0x7f0803b4

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 486
    const v4, 0x7f020036

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_0
.end method

.method private setSimSummary(Lmiui/preference/ValuePreference;Lmiui/telephony/SubscriptionInfo;Z)V
    .locals 4
    .param p1, "simInfoPre"    # Lmiui/preference/ValuePreference;
    .param p2, "siminfo"    # Lmiui/telephony/SubscriptionInfo;
    .param p3, "simEnabled"    # Z

    .prologue
    .line 546
    if-nez p3, :cond_0

    .line 547
    const-string v1, ""

    invoke-virtual {p1, v1}, Lmiui/preference/ValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 559
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-virtual {p2}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, ""

    .line 552
    .local v0, "summary":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/android/phone/NetworkModeManager;->isMasterSupportCdma()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/NetworkModeManager;->isViceSupportCdma()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v1

    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getDefaultDataSlotId()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    invoke-static {v2}, Lcom/android/phone/NetworkModeManager;->getPhoneType(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08044d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    :cond_1
    invoke-virtual {p1, v0}, Lmiui/preference/ValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 551
    .end local v0    # "summary":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getSimInfo()V
    .locals 1

    .prologue
    .line 491
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSimInfoRecordList:Ljava/util/List;

    .line 492
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSimInfoRecordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSimNum:I

    .line 493
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 605
    packed-switch p1, :pswitch_data_0

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 607
    :pswitch_0
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 609
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_0

    .line 605
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 257
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 258
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/MobileNetworkSettings;->addPreferencesFromResource(I)V

    .line 260
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mConnectManager:Landroid/net/ConnectivityManager;

    .line 261
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 263
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 267
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->init()V

    .line 269
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 270
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/settings/MobileNetworkSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 274
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 633
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 637
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 638
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mContentObserver:Landroid/database/ContentObserver;

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    if-eqz v0, :cond_2

    .line 641
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/settings/GsmUmtsOptions;->destroy()V

    .line 643
    :cond_2
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    if-eqz v0, :cond_3

    .line 644
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    invoke-virtual {v0}, Lcom/android/phone/settings/CdmaOptions;->destroy()V

    .line 646
    :cond_3
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/MobileNetworkSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 647
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 648
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 623
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 624
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->finish()V

    .line 626
    const/4 v1, 0x1

    .line 628
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 436
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 437
    .local v1, "slotId":I
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "key":Ljava/lang/String;
    const-string v3, "default_data_key"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 439
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_0

    .line 440
    const v3, 0x7f0803ae

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 441
    const/4 v2, 0x0

    .line 458
    :goto_0
    return v2

    .line 444
    :cond_0
    sget-boolean v3, Lmiui/os/Build;->IS_HONGMI_TWOX_CT:Z

    if-eqz v3, :cond_2

    if-ne v1, v2, :cond_2

    .line 445
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 453
    :goto_1
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmiui/telephony/SubscriptionManager;->setDefaultDataSlotId(I)V

    .line 457
    :cond_1
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/phone/settings/MobileNetworkSettings;->setPreferenceSummary(Landroid/preference/Preference;I)V

    goto :goto_0

    .line 449
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 454
    :cond_3
    const-string v3, "default_voice_key"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 455
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmiui/telephony/SubscriptionManager;->setDefaultVoiceSlotId(I)V

    goto :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 563
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 565
    .local v3, "slotId":I
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 566
    .local v1, "extras":Landroid/os/Bundle;
    invoke-static {v1, v3}, Lmiui/telephony/SubscriptionManager;->putSlotId(Landroid/os/Bundle;I)V

    .line 567
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 568
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 569
    invoke-virtual {p0, v2}, Lcom/android/phone/settings/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/phone/settings/MobileNetworkSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceClick() has error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 182
    iget-object v9, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/settings/GsmUmtsOptions;

    invoke-virtual {v9, p2}, Lcom/android/phone/settings/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v9

    if-ne v9, v8, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v8

    .line 185
    :cond_1
    iget-object v9, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/settings/CdmaOptions;

    invoke-virtual {v9, p2}, Lcom/android/phone/settings/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v9

    if-ne v9, v8, :cond_2

    .line 187
    const-string v7, "ril.cdma.inecmmode"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 189
    iput-object p2, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    .line 191
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v7, v9, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v9, 0x11

    invoke-virtual {p0, v7, v9}, Lcom/android/phone/settings/MobileNetworkSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v9, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_3

    .line 197
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    iget-object v9, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    invoke-virtual {v7, v9}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_0

    .line 199
    :cond_3
    iget-object v9, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    if-ne p2, v9, :cond_7

    .line 200
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "setup_prepaid_data_service_url"

    invoke-static {v9, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, "tmpl":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 203
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    .line 204
    .local v4, "tm":Lmiui/telephony/TelephonyManager;
    invoke-virtual {v4}, Lmiui/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "imsi":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 206
    const-string v2, ""

    .line 208
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 210
    .local v6, "url":Ljava/lang/String;
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v3, v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 211
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/phone/settings/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 208
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "url":Ljava/lang/String;
    :cond_5
    new-array v9, v8, [Ljava/lang/CharSequence;

    aput-object v2, v9, v7

    invoke-static {v5, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 213
    .end local v2    # "imsi":Ljava/lang/String;
    .end local v4    # "tm":Lmiui/telephony/TelephonyManager;
    :cond_6
    sget-object v7, Lcom/android/phone/settings/MobileNetworkSettings;->TAG:Ljava/lang/String;

    const-string v9, "Missing SETUP_PREPAID_DATA_SERVICE_URL"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 216
    .end local v5    # "tmpl":Ljava/lang/String;
    :cond_7
    iget-object v9, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_9

    .line 217
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "always_enable_mms"

    iget-object v11, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_8

    move v7, v8

    :cond_8
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 221
    :cond_9
    iget-object v9, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButton4glte:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_e

    .line 222
    invoke-direct {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->isPhoneInCall()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 223
    const v9, 0x7f0803ae

    invoke-static {p0, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 225
    iget-object v9, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButton4glte:Landroid/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButton4glte:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_a

    move v7, v8

    :cond_a
    invoke-virtual {v9, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 229
    :cond_b
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButton4glte:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    invoke-static {v9, v10}, Lcom/android/services/telephony/ims/ImsAdapter;->setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v9, Lcom/android/phone/settings/MobileNetworkSettings;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setEnhanced4gLteModeSetting exception="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v9, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButton4glte:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_d

    const v9, 0x7f080441

    :goto_2
    invoke-static {p0, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 234
    iget-object v9, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButton4glte:Landroid/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButton4glte:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_c

    move v7, v8

    :cond_c
    invoke-virtual {v9, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 232
    :cond_d
    const v9, 0x7f080442

    goto :goto_2

    .line 237
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_e
    const-string v9, "pref_mi_sim_key"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string v9, "pref_sim_roaming_key"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 239
    :cond_f
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 240
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v7, "pref_mi_sim_key"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 241
    new-instance v7, Landroid/content/ComponentName;

    const-string v9, "com.miui.virtualsim"

    const-string v10, "com.miui.mimobile.ui.MmRouterActivity"

    invoke-direct {v7, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 246
    :cond_10
    :goto_3
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/phone/settings/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 247
    :catch_1
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/phone/settings/MobileNetworkSettings;->TAG:Ljava/lang/String;

    const-string v9, "enter mi_sim or roaming service error."

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_11
    const-string v7, "pref_sim_roaming_key"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 243
    new-instance v7, Landroid/content/ComponentName;

    const-string v9, "com.miui.virtualsim"

    const-string v10, "com.miui.virtualsim.ui.MainActivity"

    invoke-direct {v7, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_3

    .end local v3    # "intent":Landroid/content/Intent;
    :cond_12
    move v8, v7

    .line 252
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 397
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 398
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mIsAirplaneEnabled:Z

    .line 401
    iget-boolean v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mIsAirplaneEnabled:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/phone/settings/MobileNetworkSettings;->setPreferenceScreenEnabled(Z)V

    .line 403
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mConnectManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 407
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButtonMmsEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "always_enable_mms"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 409
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mButton4glte:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 411
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 412
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getSimInfo()V

    .line 413
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->updatePreferenceUI()V

    .line 414
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefVoice:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-virtual {v0}, Lcom/android/phone/settings/MultiSimListPreference;->notifySimInfoDataChanged()V

    .line 415
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefData:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-virtual {v0}, Lcom/android/phone/settings/MultiSimListPreference;->notifySimInfoDataChanged()V

    .line 422
    :cond_0
    :goto_3
    invoke-direct {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->addSimServicePreference()V

    .line 423
    return-void

    :cond_1
    move v0, v2

    .line 398
    goto :goto_0

    :cond_2
    move v0, v2

    .line 401
    goto :goto_1

    :cond_3
    move v1, v2

    .line 407
    goto :goto_2

    .line 417
    :cond_4
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    invoke-direct {p0, v2}, Lcom/android/phone/settings/MobileNetworkSettings;->setPreferenceScreenEnabled(Z)V

    goto :goto_3
.end method

.method public onSubscriptionsChanged()V
    .locals 1

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->getSimInfo()V

    .line 428
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->updatePreferenceUI()V

    .line 430
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefVoice:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-virtual {v0}, Lcom/android/phone/settings/MultiSimListPreference;->notifySimInfoDataChanged()V

    .line 431
    iget-object v0, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefData:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-virtual {v0}, Lcom/android/phone/settings/MultiSimListPreference;->notifySimInfoDataChanged()V

    .line 432
    return-void
.end method

.method public updatePreferenceUI()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 496
    invoke-virtual {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->isResumed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 497
    sget-object v3, Lcom/android/phone/settings/MobileNetworkSettings;->TAG:Ljava/lang/String;

    const-string v6, "updatePreferenceUI(): on backgroud no need update preference"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    iget-boolean v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mIsAirplaneEnabled:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSimNum:I

    if-lez v3, :cond_2

    move v3, v4

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/phone/settings/MobileNetworkSettings;->setPreferenceScreenEnabled(Z)V

    .line 501
    iget v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSimNum:I

    if-lez v3, :cond_3

    .line 502
    invoke-direct {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->addSimInfoPreference()V

    .line 508
    :goto_1
    iget v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSimNum:I

    if-le v3, v4, :cond_4

    move v1, v4

    .line 509
    .local v1, "isVoiceEnabled":Z
    :goto_2
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/MiuiPhoneUtils;->isDcOnlyVirtualSim(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 510
    iget v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSimNum:I

    const/4 v6, 0x2

    if-le v3, v6, :cond_5

    move v1, v4

    .line 512
    :cond_1
    :goto_3
    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefVoice:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-virtual {v3, v1}, Lcom/android/phone/settings/MultiSimListPreference;->setEnabled(Z)V

    .line 514
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getDefaultDataSlotId()I

    move-result v2

    .line 515
    .local v2, "slotId":I
    iget v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mSimNum:I

    if-le v3, v4, :cond_6

    move v0, v4

    .line 516
    .local v0, "isDataEnabled":Z
    :goto_4
    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefData:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-virtual {v3, v0}, Lcom/android/phone/settings/MultiSimListPreference;->setEnabled(Z)V

    .line 517
    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefData:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/MultiSimListPreference;->setValue(Ljava/lang/String;)V

    .line 518
    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefData:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-direct {p0, v3, v2}, Lcom/android/phone/settings/MobileNetworkSettings;->setPreferenceSummary(Landroid/preference/Preference;I)V

    .line 520
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getDefaultVoiceSlotId()I

    move-result v2

    .line 521
    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefVoice:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/MultiSimListPreference;->setValue(Ljava/lang/String;)V

    .line 522
    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings;->mPrefVoice:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-direct {p0, v3, v2}, Lcom/android/phone/settings/MobileNetworkSettings;->setPreferenceSummary(Landroid/preference/Preference;I)V

    .line 523
    return-void

    .end local v0    # "isDataEnabled":Z
    .end local v1    # "isVoiceEnabled":Z
    .end local v2    # "slotId":I
    :cond_2
    move v3, v5

    .line 500
    goto :goto_0

    .line 504
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/settings/MobileNetworkSettings;->setNoSimInfoUi()V

    goto :goto_1

    :cond_4
    move v1, v5

    .line 508
    goto :goto_2

    .restart local v1    # "isVoiceEnabled":Z
    :cond_5
    move v1, v5

    .line 510
    goto :goto_3

    .restart local v2    # "slotId":I
    :cond_6
    move v0, v5

    .line 515
    goto :goto_4
.end method
