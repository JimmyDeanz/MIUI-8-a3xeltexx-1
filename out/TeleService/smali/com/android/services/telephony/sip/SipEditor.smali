.class public Lcom/android/services/telephony/sip/SipEditor;
.super Landroid/preference/PreferenceActivity;
.source "SipEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/sip/SipEditor$3;,
        Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;,
        Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    }
.end annotation


# instance fields
.field private mAdvancedSettings:Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;

.field private mDisplayNameSet:Z

.field private mHomeButtonClicked:Z

.field private mOldProfile:Landroid/net/sip/SipProfile;

.field private mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

.field private mRemoveButton:Landroid/widget/Button;

.field private mSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

.field private mSipAccountRegistry:Lcom/android/services/telephony/sip/SipAccountRegistry;

.field private mUpdateRequired:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 527
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/android/services/telephony/sip/SipEditor;->scramble(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/services/telephony/sip/SipEditor;Landroid/net/sip/SipProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/SipEditor;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipEditor;->deleteAndUnregisterProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/services/telephony/sip/SipEditor;Landroid/net/sip/SipProfile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/SipEditor;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/sip/SipEditor;->saveAndRegisterProfile(Landroid/net/sip/SipProfile;Z)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/android/services/telephony/sip/SipEditor;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/services/telephony/sip/SipEditor;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/SipEditor;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipEditor;->showAlert(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/services/telephony/sip/SipEditor;Landroid/preference/Preference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/SipEditor;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipEditor;->setupPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method private checkIfDisplayNameSet()V
    .locals 3

    .prologue
    .line 506
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mDisplayNameSet:Z

    .line 510
    iget-boolean v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mDisplayNameSet:Z

    if-eqz v1, :cond_1

    .line 511
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 515
    :goto_1
    return-void

    .line 507
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 513
    :cond_1
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createSipProfile()Landroid/net/sip/SipProfile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 393
    new-instance v0, Landroid/net/sip/SipProfile$Builder;

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Username:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v2}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setProfileName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Password:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setPassword(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->ProxyAddress:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setOutboundProxy(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Transport:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setProtocol(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setDisplayName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Port:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->isAlwaysSendKeepAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setSendKeepAlive(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setAutoRegistration(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->AuthUserName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setAuthUserName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method private deleteAndUnregisterProfile(Landroid/net/sip/SipProfile;)V
    .locals 2
    .param p1, "p"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/sip/SipProfileDb;->deleteProfile(Landroid/net/sip/SipProfile;)V

    .line 265
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mSipAccountRegistry:Lcom/android/services/telephony/sip/SipAccountRegistry;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/services/telephony/sip/SipAccountRegistry;->stopSipService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getDefaultDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    sget-object v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Username:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v0}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferenceKey(Landroid/preference/Preference;)Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    .locals 6
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 438
    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->values()[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 439
    .local v2, "key":Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    iget-object v4, v2, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne v4, p1, :cond_0

    return-object v2

    .line 438
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    .end local v2    # "key":Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "not possible to reach here"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getProfileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Username:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAlwaysSendKeepAlive()Z
    .locals 3

    .prologue
    .line 485
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    iget-object v0, v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    .line 486
    .local v0, "pref":Landroid/preference/ListPreference;
    const v1, 0x7f08003a

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isEditTextEmpty(Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;)Z
    .locals 3
    .param p1, "key"    # Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    .prologue
    .line 302
    iget-object v0, p1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 303
    .local v0, "pref":Landroid/preference/EditTextPreference;
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadPreferencesFromProfile(Landroid/net/sip/SipProfile;)V
    .locals 10
    .param p1, "p"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 445
    if-eqz p1, :cond_4

    .line 448
    :try_start_0
    const-class v6, Landroid/net/sip/SipProfile;

    .line 449
    .local v6, "profileClass":Ljava/lang/Class;
    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->values()[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v3, v0, v2

    .line 450
    .local v3, "key":Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->text:I

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v6, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 452
    .local v5, "meth":Ljava/lang/reflect/Method;
    sget-object v8, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    if-ne v3, v8, :cond_1

    .line 453
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 454
    .local v7, "value":Z
    if-eqz v7, :cond_0

    const v8, 0x7f08003a

    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    .line 449
    .end local v7    # "value":Z
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 454
    .restart local v7    # "value":Z
    :cond_0
    const v8, 0x7f080039

    goto :goto_1

    .line 458
    .end local v7    # "value":Z
    :cond_1
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 459
    .local v7, "value":Ljava/lang/Object;
    if-nez v7, :cond_2

    const-string v8, ""

    :goto_3
    invoke-virtual {v3, v8}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 463
    .end local v0    # "arr$":[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    .end local v2    # "i$":I
    .end local v3    # "key":Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    .end local v4    # "len$":I
    .end local v5    # "meth":Ljava/lang/reflect/Method;
    .end local v6    # "profileClass":Ljava/lang/Class;
    .end local v7    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 464
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadPreferencesFromProfile, can not load pref from profile, exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/services/telephony/sip/SipEditor;->log(Ljava/lang/String;)V

    .line 482
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 459
    .restart local v0    # "arr$":[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    .restart local v2    # "i$":I
    .restart local v3    # "key":Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    .restart local v4    # "len$":I
    .restart local v5    # "meth":Ljava/lang/reflect/Method;
    .restart local v6    # "profileClass":Ljava/lang/Class;
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 462
    .end local v3    # "key":Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    .end local v5    # "meth":Ljava/lang/reflect/Method;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_3
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->checkIfDisplayNameSet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 468
    .end local v0    # "arr$":[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "profileClass":Ljava/lang/Class;
    :cond_4
    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->values()[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    move-result-object v0

    .restart local v0    # "arr$":[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_5
    if-ge v2, v4, :cond_6

    aget-object v3, v0, v2

    .line 469
    .restart local v3    # "key":Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    iget-object v8, v3, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 476
    iget v8, v3, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->initValue:I

    if-eqz v8, :cond_5

    .line 477
    iget v8, v3, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->initValue:I

    invoke-virtual {p0, v8}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    .line 468
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 480
    .end local v3    # "key":Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    :cond_6
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/services/telephony/sip/SipEditor;->mDisplayNameSet:Z

    goto :goto_4
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 592
    const-string v0, "SIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SipEditor] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return-void
.end method

.method private replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    .locals 3
    .param p1, "oldProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "newProfile"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 372
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/services/telephony/sip/SipEditor$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/services/telephony/sip/SipEditor$2;-><init>(Lcom/android/services/telephony/sip/SipEditor;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V

    const-string v2, "SipEditor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 385
    return-void
.end method

.method private saveAndRegisterProfile(Landroid/net/sip/SipProfile;Z)V
    .locals 2
    .param p1, "p"    # Landroid/net/sip/SipProfile;
    .param p2, "enableProfile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/sip/SipProfileDb;->saveProfile(Landroid/net/sip/SipProfile;)V

    .line 253
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mSipAccountRegistry:Lcom/android/services/telephony/sip/SipAccountRegistry;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2}, Lcom/android/services/telephony/sip/SipAccountRegistry;->startSipService(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static scramble(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 522
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v0, v1, [C

    .line 523
    .local v0, "cc":[C
    const/16 v1, 0x2a

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 524
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private setRemovedProfileAndFinish()V
    .locals 3

    .prologue
    .line 269
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/services/telephony/sip/SipSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/services/telephony/sip/SipEditor;->setResult(ILandroid/content/Intent;)V

    .line 271
    const v1, 0x7f08000e

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 273
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/services/telephony/sip/SipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V

    .line 275
    return-void
.end method

.method private setupPreference(Landroid/preference/Preference;)V
    .locals 6
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 495
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 496
    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->values()[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 497
    .local v2, "key":Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    iget v5, v2, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->text:I

    invoke-virtual {p0, v5}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 498
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 499
    iput-object p1, v2, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    .line 503
    .end local v2    # "key":Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    return-void

    .line 496
    .restart local v2    # "key":Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    .restart local v4    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mHomeButtonClicked:Z

    if-eqz v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 288
    :cond_0
    new-instance v0, Lcom/android/services/telephony/sip/SipEditor$1;

    invoke-direct {v0, p0, p1}, Lcom/android/services/telephony/sip/SipEditor$1;-><init>(Lcom/android/services/telephony/sip/SipEditor;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/SipEditor;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showAlert(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 278
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/services/telephony/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method private validateAndSetResult()V
    .locals 17

    .prologue
    .line 308
    const/4 v1, 0x1

    .line 309
    .local v1, "allEmpty":Z
    const/4 v5, 0x0

    .line 310
    .local v5, "firstEmptyFieldTitle":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->values()[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    move-result-object v2

    .local v2, "arr$":[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v9, :cond_4

    aget-object v8, v2, v6

    .line 311
    .local v8, "key":Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    iget-object v10, v8, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    .line 312
    .local v10, "p":Landroid/preference/Preference;
    instance-of v14, v10, Landroid/preference/EditTextPreference;

    if-eqz v14, :cond_1

    move-object v12, v10

    .line 313
    check-cast v12, Landroid/preference/EditTextPreference;

    .line 314
    .local v12, "pref":Landroid/preference/EditTextPreference;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/services/telephony/sip/SipEditor;->isEditTextEmpty(Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;)Z

    move-result v4

    .line 315
    .local v4, "fieldEmpty":Z
    if-eqz v1, :cond_0

    if-nez v4, :cond_0

    const/4 v1, 0x0

    .line 318
    :cond_0
    if-eqz v4, :cond_2

    .line 319
    sget-object v14, Lcom/android/services/telephony/sip/SipEditor$3;->$SwitchMap$com$android$services$telephony$sip$SipEditor$PreferenceKey:[I

    invoke-virtual {v8}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 331
    if-nez v5, :cond_1

    .line 332
    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    .line 310
    .end local v4    # "fieldEmpty":Z
    .end local v12    # "pref":Landroid/preference/EditTextPreference;
    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 321
    .restart local v4    # "fieldEmpty":Z
    .restart local v12    # "pref":Landroid/preference/EditTextPreference;
    :pswitch_1
    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 328
    :pswitch_2
    const v14, 0x7f080030

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 335
    :cond_2
    sget-object v14, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Port:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    if-ne v8, v14, :cond_1

    .line 336
    sget-object v14, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Port:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v14}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 337
    .local v11, "port":I
    const/16 v14, 0x3e8

    if-lt v11, v14, :cond_3

    const v14, 0xfffe

    if-le v11, v14, :cond_1

    .line 338
    :cond_3
    const v14, 0x7f080035

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/services/telephony/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    .line 365
    .end local v4    # "fieldEmpty":Z
    .end local v8    # "key":Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    .end local v10    # "p":Landroid/preference/Preference;
    .end local v11    # "port":I
    .end local v12    # "pref":Landroid/preference/EditTextPreference;
    :goto_2
    return-void

    .line 345
    :cond_4
    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/services/telephony/sip/SipEditor;->mUpdateRequired:Z

    if-nez v14, :cond_6

    .line 346
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/sip/SipEditor;->finish()V

    goto :goto_2

    .line 348
    :cond_6
    if-eqz v5, :cond_7

    .line 349
    const v14, 0x7f080034

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/services/telephony/sip/SipEditor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/services/telephony/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    goto :goto_2

    .line 353
    :cond_7
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/services/telephony/sip/SipEditor;->createSipProfile()Landroid/net/sip/SipProfile;

    move-result-object v13

    .line 354
    .local v13, "profile":Landroid/net/sip/SipProfile;
    new-instance v7, Landroid/content/Intent;

    const-class v14, Lcom/android/services/telephony/sip/SipSettings;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    .local v7, "intent":Landroid/content/Intent;
    const-string v14, "sip_profile"

    invoke-virtual {v7, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 356
    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7}, Lcom/android/services/telephony/sip/SipEditor;->setResult(ILandroid/content/Intent;)V

    .line 357
    const v14, 0x7f08000d

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 359
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/services/telephony/sip/SipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 361
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v13    # "profile":Landroid/net/sip/SipProfile;
    :catch_0
    move-exception v3

    .line 362
    .local v3, "e":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "validateAndSetResult, can not create new SipProfile, exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/services/telephony/sip/SipEditor;->log(Ljava/lang/String;)V

    .line 363
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/services/telephony/sip/SipEditor;->showAlert(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    new-instance v4, Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-direct {v4, p0}, Lcom/android/services/telephony/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/services/telephony/sip/SipEditor;->mSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    .line 155
    new-instance v4, Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-direct {v4, p0}, Lcom/android/services/telephony/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/services/telephony/sip/SipEditor;->mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

    .line 156
    invoke-static {}, Lcom/android/services/telephony/sip/SipAccountRegistry;->getInstance()Lcom/android/services/telephony/sip/SipAccountRegistry;

    move-result-object v4

    iput-object v4, p0, Lcom/android/services/telephony/sip/SipEditor;->mSipAccountRegistry:Lcom/android/services/telephony/sip/SipAccountRegistry;

    .line 158
    const v4, 0x7f04002a

    invoke-virtual {p0, v4}, Lcom/android/services/telephony/sip/SipEditor;->setContentView(I)V

    .line 159
    const v4, 0x7f060038

    invoke-virtual {p0, v4}, Lcom/android/services/telephony/sip/SipEditor;->addPreferencesFromResource(I)V

    .line 161
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "sip_profile"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    :goto_0
    check-cast v4, Landroid/net/sip/SipProfile;

    move-object v2, v4

    check-cast v2, Landroid/net/sip/SipProfile;

    iput-object v2, p0, Lcom/android/services/telephony/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    .line 165
    .local v2, "p":Landroid/net/sip/SipProfile;
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 166
    .local v3, "screen":Landroid/preference/PreferenceGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 167
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/services/telephony/sip/SipEditor;->setupPreference(Landroid/preference/Preference;)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "p":Landroid/net/sip/SipProfile;
    .end local v3    # "screen":Landroid/preference/PreferenceGroup;
    :cond_0
    const-string v4, "profile"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    goto :goto_0

    .line 170
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    .restart local v2    # "p":Landroid/net/sip/SipProfile;
    .restart local v3    # "screen":Landroid/preference/PreferenceGroup;
    :cond_1
    if-nez v2, :cond_2

    .line 171
    const v4, 0x7f080021

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 174
    :cond_2
    new-instance v4, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;

    invoke-direct {v4, p0}, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;-><init>(Lcom/android/services/telephony/sip/SipEditor;)V

    iput-object v4, p0, Lcom/android/services/telephony/sip/SipEditor;->mAdvancedSettings:Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;

    .line 176
    invoke-direct {p0, v2}, Lcom/android/services/telephony/sip/SipEditor;->loadPreferencesFromProfile(Landroid/net/sip/SipProfile;)V

    .line 177
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 191
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 192
    const/4 v0, 0x2

    const v1, 0x7f080010

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 194
    const v0, 0x7f08000f

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 196
    const/4 v0, 0x3

    const v1, 0x7f08000b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 198
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 234
    packed-switch p1, :pswitch_data_0

    .line 239
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 236
    :pswitch_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->validateAndSetResult()V

    .line 237
    const/4 v0, 0x1

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 229
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 213
    :sswitch_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->validateAndSetResult()V

    goto :goto_0

    .line 217
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->finish()V

    goto :goto_0

    .line 221
    :sswitch_2
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->setRemovedProfileAndFinish()V

    goto :goto_0

    .line 225
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->finish()V

    goto :goto_0

    .line 211
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x102002c -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mHomeButtonClicked:Z

    .line 184
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->validateAndSetResult()V

    .line 186
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 187
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 410
    iget-boolean v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mUpdateRequired:Z

    if-nez v1, :cond_0

    .line 411
    iput-boolean v2, p0, Lcom/android/services/telephony/sip/SipEditor;->mUpdateRequired:Z

    .line 414
    :cond_0
    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 415
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->invalidateOptionsMenu()V

    .line 434
    .end local p1    # "pref":Landroid/preference/Preference;
    :goto_0
    return v2

    .line 418
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_1
    if-nez p2, :cond_3

    const-string v0, ""

    .line 419
    .local v0, "value":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 420
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipEditor;->getPreferenceKey(Landroid/preference/Preference;)Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    move-result-object v1

    iget v1, v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 427
    :goto_2
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_2

    .line 428
    check-cast p1, Landroid/preference/EditTextPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 429
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->checkIfDisplayNameSet()V

    .line 433
    :cond_2
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->invalidateOptionsMenu()V

    goto :goto_0

    .line 418
    .end local v0    # "value":Ljava/lang/String;
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 421
    .restart local v0    # "value":Ljava/lang/String;
    :cond_4
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Password:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_5

    .line 422
    invoke-static {v0}, Lcom/android/services/telephony/sip/SipEditor;->scramble(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 424
    :cond_5
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 203
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 204
    .local v0, "removeMenu":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 205
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/services/telephony/sip/SipEditor;->mUpdateRequired:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 206
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 204
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 137
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 138
    iput-boolean v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mHomeButtonClicked:Z

    .line 139
    invoke-static {p0}, Lcom/android/services/telephony/sip/SipUtil;->isPhoneIdle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mAdvancedSettings:Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;

    invoke-virtual {v0}, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->show()V

    .line 141
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
