.class public Lcom/android/phone/settings/PhoneAccountSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "PhoneAccountSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAccountList:Landroid/preference/PreferenceCategory;

.field private mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

.field private mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

.field private mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUseSipCalling:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/PhoneAccountSettingsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/PhoneAccountSettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->handleSipReceiveCallsOption(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/PhoneAccountSettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/PhoneAccountSettingsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "actionStr"    # Ljava/lang/String;

    .prologue
    .line 433
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 435
    :cond_0
    const/4 v0, 0x0

    .line 451
    :cond_1
    :goto_0
    return-object v0

    .line 439
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string v3, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 445
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 446
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 447
    .local v2, "resolutions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 448
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static buildPhoneAccountConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 417
    const-string v1, "android.telecom.action.CONFIGURE_PHONE_ACCOUNT"

    invoke-static {p0, p1, v1}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->buildConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 420
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 422
    const-string v1, "android.telecom.action.CONNECTION_SERVICE_CONFIGURE"

    invoke-static {p0, p1, v1}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->buildConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_0

    .line 425
    sget-object v1, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone account using old configuration intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    return-object v0
.end method

.method private getCallingAccounts(ZZ)Ljava/util/List;
    .locals 6
    .param p1, "includeSims"    # Z
    .param p2, "includeDisabledAccounts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getEmergencyPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 385
    .local v2, "emergencyAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v5, p2}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts(Z)Ljava/util/List;

    move-result-object v1

    .line 387
    .local v1, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 388
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 389
    .local v3, "handle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v3, v2}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 391
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 395
    :cond_1
    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v5, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 396
    .local v0, "account":Landroid/telecom/PhoneAccount;
    if-nez v0, :cond_2

    .line 397
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 398
    :cond_2
    if-nez p1, :cond_0

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 400
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 403
    .end local v0    # "account":Landroid/telecom/PhoneAccount;
    .end local v3    # "handle":Landroid/telecom/PhoneAccountHandle;
    :cond_3
    return-object v1
.end method

.method private getEmergencyPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 3

    .prologue
    .line 411
    const/4 v0, 0x0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandleWithPrefix(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized handleSipReceiveCallsOption(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 247
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 259
    :goto_0
    monitor-exit p0

    return-void

    .line 252
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v2, p1}, Lcom/android/services/telephony/sip/SipSharedPreferences;->setReceivingCallsEnabled(Z)V

    .line 254
    invoke-static {v0, p1}, Lcom/android/services/telephony/sip/SipUtil;->useSipToReceiveIncomingCalls(Landroid/content/Context;Z)V

    .line 257
    invoke-static {}, Lcom/android/services/telephony/sip/SipAccountRegistry;->getInstance()Lcom/android/services/telephony/sip/SipAccountRegistry;

    move-result-object v1

    .line 258
    .local v1, "sipAccountRegistry":Lcom/android/services/telephony/sip/SipAccountRegistry;
    invoke-virtual {v1, v0}, Lcom/android/services/telephony/sip/SipAccountRegistry;->restartSipService(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 246
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "sipAccountRegistry":Lcom/android/services/telephony/sip/SipAccountRegistry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private initAccountList(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "enabledAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    const/4 v12, 0x0

    .line 275
    iget-object v11, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    .line 281
    .local v7, "isMultiSimDevice":Z
    if-nez v7, :cond_1

    invoke-direct {p0, v12, v12}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getCallingAccounts(ZZ)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 375
    :cond_0
    return-void

    .line 287
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v2, "accounts":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccount;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 289
    .local v3, "handle":Landroid/telecom/PhoneAccountHandle;
    iget-object v11, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v11, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 290
    .local v0, "account":Landroid/telecom/PhoneAccount;
    if-eqz v0, :cond_2

    .line 291
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    .end local v0    # "account":Landroid/telecom/PhoneAccount;
    .end local v3    # "handle":Landroid/telecom/PhoneAccountHandle;
    :cond_3
    new-instance v11, Lcom/android/phone/settings/PhoneAccountSettingsFragment$2;

    invoke-direct {v11, p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment$2;-><init>(Lcom/android/phone/settings/PhoneAccountSettingsFragment;)V

    invoke-static {v2, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 330
    const/16 v8, 0x64

    .line 333
    .local v8, "order":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    .line 334
    .restart local v0    # "account":Landroid/telecom/PhoneAccount;
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 335
    .restart local v3    # "handle":Landroid/telecom/PhoneAccountHandle;
    const/4 v6, 0x0

    .line 338
    .local v6, "intent":Landroid/content/Intent;
    const/4 v11, 0x4

    invoke-virtual {v0, v11}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 343
    if-eqz v7, :cond_4

    .line 344
    iget-object v11, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v12, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v10

    .line 347
    .local v10, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v10, :cond_4

    .line 348
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    const-string v11, "android.telecom.action.SHOW_CALL_SETTINGS"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .restart local v6    # "intent":Landroid/content/Intent;
    const/high16 v11, 0x4000000

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 350
    invoke-static {v6, v10}, Lcom/android/phone/SubscriptionInfoHelper;->addExtrasToIntent(Landroid/content/Intent;Landroid/telephony/SubscriptionInfo;)V

    .line 358
    .end local v10    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_4
    :goto_2
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v1, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 359
    .local v1, "accountPreference":Landroid/preference/Preference;
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 362
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 363
    .local v5, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v5, :cond_5

    .line 364
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 368
    :cond_5
    if-eqz v6, :cond_6

    .line 369
    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 372
    :cond_6
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "order":I
    .local v9, "order":I
    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setOrder(I)V

    .line 373
    iget-object v11, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mAccountList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move v8, v9

    .line 374
    .end local v9    # "order":I
    .restart local v8    # "order":I
    goto :goto_1

    .line 354
    .end local v1    # "accountPreference":Landroid/preference/Preference;
    .end local v5    # "icon":Landroid/graphics/drawable/Icon;
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11, v3}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->buildPhoneAccountConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;

    move-result-object v6

    goto :goto_2
.end method

.method private nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 407
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private shouldShowConnectionServiceList(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "allNonSimAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDefaultOutgoingAccountsModel()V
    .locals 5

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getCallingAccounts(ZZ)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    const v4, 0x7f0800e2

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/settings/AccountSelectionPreference;->setModel(Landroid/telecom/TelecomManager;Ljava/util/List;Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V

    .line 271
    return-void
.end method


# virtual methods
.method public onAccountChanged(Lcom/android/phone/settings/AccountSelectionPreference;)V
    .locals 0
    .param p1, "pref"    # Lcom/android/phone/settings/AccountSelectionPreference;

    .prologue
    .line 243
    return-void
.end method

.method public onAccountSelected(Lcom/android/phone/settings/AccountSelectionPreference;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1
    .param p1, "pref"    # Lcom/android/phone/settings/AccountSelectionPreference;
    .param p2, "account"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    if-ne p1, v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0, p2}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 225
    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccountSelectionDialogShow(Lcom/android/phone/settings/AccountSelectionPreference;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/phone/settings/AccountSelectionPreference;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    if-ne p1, v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->updateDefaultOutgoingAccountsModel()V

    .line 240
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 83
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 84
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 85
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 196
    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 197
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "option":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v3, v1}, Lcom/android/services/telephony/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 199
    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 200
    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    .end local v1    # "option":Ljava/lang/String;
    :goto_0
    return v2

    .line 202
    :cond_0
    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_2

    .line 203
    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    .line 204
    .local v0, "isEnabled":Z
    :cond_1
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/phone/settings/PhoneAccountSettingsFragment$1;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment$1;-><init>(Lcom/android/phone/settings/PhoneAccountSettingsFragment;Z)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .end local v0    # "isEnabled":Z
    :cond_2
    move v2, v0

    .line 211
    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 89
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 91
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 95
    :cond_0
    const v4, 0x7f060029

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->addPreferencesFromResource(I)V

    .line 122
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "phone_accounts_accounts_list_category_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mAccountList:Landroid/preference/PreferenceCategory;

    .line 124
    invoke-direct {p0, v7, v6}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getCallingAccounts(ZZ)Ljava/util/List;

    move-result-object v1

    .line 127
    .local v1, "allNonSimAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-direct {p0, v1}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->shouldShowConnectionServiceList(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 128
    invoke-direct {p0, v6, v7}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getCallingAccounts(ZZ)Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, "enabledAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-direct {p0, v2}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->initAccountList(Ljava/util/List;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "default_outgoing_account"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/settings/AccountSelectionPreference;

    iput-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    .line 135
    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    invoke-virtual {v4, p0}, Lcom/android/phone/settings/AccountSelectionPreference;->setListener(Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;)V

    .line 138
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_3

    .line 139
    invoke-direct {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->updateDefaultOutgoingAccountsModel()V

    .line 144
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "phone_account_all_calling_accounts"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 146
    .local v0, "allAccounts":Landroid/preference/Preference;
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 147
    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mAccountList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 153
    .end local v0    # "allAccounts":Landroid/preference/Preference;
    .end local v2    # "enabledAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/services/telephony/sip/SipUtil;->isVoipSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 154
    new-instance v4, Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/services/telephony/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    .line 156
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "use_sip_calling_options_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    .line 158
    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    const v4, 0x7f070002

    :goto_2
    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 161
    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v5}, Lcom/android/services/telephony/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 165
    .local v3, "optionsValueIndex":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 167
    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08003c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/services/telephony/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 169
    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v5}, Lcom/android/services/telephony/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 172
    :cond_2
    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 173
    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "sip_receive_calls_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    .line 177
    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/services/telephony/sip/SipUtil;->isPhoneIdle(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 178
    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v5}, Lcom/android/services/telephony/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 180
    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 185
    .end local v3    # "optionsValueIndex":I
    :goto_3
    return-void

    .line 141
    .restart local v2    # "enabledAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mAccountList:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 150
    .end local v2    # "enabledAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mAccountList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 158
    :cond_5
    const v4, 0x7f070001

    goto/16 :goto_2

    .line 182
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "phone_accounts_sip_settings_category_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method
