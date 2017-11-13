.class public Lcom/android/services/telephony/sip/MiuiSipEditor;
.super Lmiui/preference/PreferenceActivity;
.source "MiuiSipEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/sip/MiuiSipEditor$3;,
        Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;,
        Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdvancedSettings:Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;

.field private mDisplayNameSet:Z

.field private mEnableSipAccount:Landroid/preference/CheckBoxPreference;

.field private mHomeButtonClicked:Z

.field private mOldProfile:Landroid/net/sip/SipProfile;

.field private mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

.field private mSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

.field private mSipAccountRegistry:Lcom/android/services/telephony/sip/SipAccountRegistry;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mUpdateRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/android/services/telephony/sip/MiuiSipEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/sip/MiuiSipEditor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 554
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->scramble(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/services/telephony/sip/MiuiSipEditor;Landroid/net/sip/SipProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/MiuiSipEditor;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/MiuiSipEditor;->deleteAndUnregisterProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/services/telephony/sip/MiuiSipEditor;Landroid/net/sip/SipProfile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/MiuiSipEditor;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/sip/MiuiSipEditor;->saveAndRegisterProfile(Landroid/net/sip/SipProfile;Z)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/services/telephony/sip/MiuiSipEditor;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/MiuiSipEditor;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/MiuiSipEditor;->showAlert(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/services/telephony/sip/MiuiSipEditor;Landroid/preference/Preference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/sip/MiuiSipEditor;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/MiuiSipEditor;->setupPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method private checkIfDisplayNameSet()V
    .locals 3

    .prologue
    .line 515
    sget-object v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mDisplayNameSet:Z

    .line 519
    iget-boolean v1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mDisplayNameSet:Z

    if-eqz v1, :cond_1

    .line 520
    sget-object v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 524
    :goto_1
    return-void

    .line 516
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 522
    :cond_1
    sget-object v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

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
    .line 407
    new-instance v0, Landroid/net/sip/SipProfile$Builder;

    sget-object v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->Username:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->DomainAddress:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    invoke-virtual {v2}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setProfileName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->Password:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setPassword(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->ProxyAddress:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setOutboundProxy(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->Transport:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setProtocol(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setDisplayName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->Port:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->isAlwaysSendKeepAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setSendKeepAlive(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setAutoRegistration(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->AuthUserName:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->getValue()Ljava/lang/String;

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/sip/SipProfileDb;->deleteProfile(Landroid/net/sip/SipProfile;)V

    .line 279
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mSipAccountRegistry:Lcom/android/services/telephony/sip/SipAccountRegistry;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/services/telephony/sip/SipAccountRegistry;->stopSipService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getDefaultDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    sget-object v0, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->Username:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    invoke-virtual {v0}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferenceKey(Landroid/preference/Preference;)Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    .locals 6
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 452
    invoke-static {}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->values()[Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 453
    .local v2, "key":Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    iget-object v4, v2, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne v4, p1, :cond_0

    return-object v2

    .line 452
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    .end local v2    # "key":Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "not possible to reach here"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getProfileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->Username:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->DomainAddress:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->getValue()Ljava/lang/String;

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
    .line 499
    sget-object v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    iget-object v0, v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    .line 500
    .local v0, "pref":Landroid/preference/ListPreference;
    const v1, 0x7f08003a

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isEditTextEmpty(Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;)Z
    .locals 3
    .param p1, "key"    # Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    .prologue
    .line 316
    iget-object v0, p1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 317
    .local v0, "pref":Landroid/preference/EditTextPreference;
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getString(I)Ljava/lang/String;

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
    .line 459
    if-eqz p1, :cond_4

    .line 462
    :try_start_0
    const-class v6, Landroid/net/sip/SipProfile;

    .line 463
    .local v6, "profileClass":Ljava/lang/Class;
    invoke-static {}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->values()[Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v3, v0, v2

    .line 464
    .local v3, "key":Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->text:I

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v6, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 466
    .local v5, "meth":Ljava/lang/reflect/Method;
    sget-object v8, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    if-ne v3, v8, :cond_1

    .line 467
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 468
    .local v7, "value":Z
    if-eqz v7, :cond_0

    const v8, 0x7f08003a

    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    .line 463
    .end local v7    # "value":Z
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    .restart local v7    # "value":Z
    :cond_0
    const v8, 0x7f080039

    goto :goto_1

    .line 472
    .end local v7    # "value":Z
    :cond_1
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 473
    .local v7, "value":Ljava/lang/Object;
    if-nez v7, :cond_2

    const-string v8, ""

    :goto_3
    invoke-virtual {v3, v8}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 477
    .end local v0    # "arr$":[Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    .end local v2    # "i$":I
    .end local v3    # "key":Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    .end local v4    # "len$":I
    .end local v5    # "meth":Ljava/lang/reflect/Method;
    .end local v6    # "profileClass":Ljava/lang/Class;
    .end local v7    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 478
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

    invoke-static {v8}, Lcom/android/services/telephony/sip/MiuiSipEditor;->log(Ljava/lang/String;)V

    .line 496
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 473
    .restart local v0    # "arr$":[Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    .restart local v2    # "i$":I
    .restart local v3    # "key":Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    .restart local v4    # "len$":I
    .restart local v5    # "meth":Ljava/lang/reflect/Method;
    .restart local v6    # "profileClass":Ljava/lang/Class;
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 476
    .end local v3    # "key":Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    .end local v5    # "meth":Ljava/lang/reflect/Method;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_3
    invoke-direct {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->checkIfDisplayNameSet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 482
    .end local v0    # "arr$":[Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "profileClass":Ljava/lang/Class;
    :cond_4
    invoke-static {}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->values()[Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    move-result-object v0

    .restart local v0    # "arr$":[Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_5
    if-ge v2, v4, :cond_6

    aget-object v3, v0, v2

    .line 483
    .restart local v3    # "key":Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    iget-object v8, v3, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 490
    iget v8, v3, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->initValue:I

    if-eqz v8, :cond_5

    .line 491
    iget v8, v3, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->initValue:I

    invoke-virtual {p0, v8}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    .line 482
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 494
    .end local v3    # "key":Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    :cond_6
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mDisplayNameSet:Z

    goto :goto_4
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 619
    const-string v0, "SIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MiuiSipEditor] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-void
.end method

.method private replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    .locals 4
    .param p1, "oldProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "newProfile"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 386
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mEnableSipAccount:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 387
    .local v0, "isEnable":Z
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/services/telephony/sip/MiuiSipEditor$2;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/services/telephony/sip/MiuiSipEditor$2;-><init>(Lcom/android/services/telephony/sip/MiuiSipEditor;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Z)V

    const-string v3, "MiuiSipEditor"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 399
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
    .line 265
    if-nez p1, :cond_0

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/sip/SipProfileDb;->saveProfile(Landroid/net/sip/SipProfile;)V

    .line 267
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mSipAccountRegistry:Lcom/android/services/telephony/sip/SipAccountRegistry;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1, p2}, Lcom/android/services/telephony/sip/SipAdapter;->startSipService(Lcom/android/services/telephony/sip/SipAccountRegistry;Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static scramble(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 531
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v0, v1, [C

    .line 532
    .local v0, "cc":[C
    const/16 v1, 0x2a

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 533
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private setRemovedProfileAndFinish()V
    .locals 3

    .prologue
    .line 283
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/services/telephony/sip/SipSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->setResult(ILandroid/content/Intent;)V

    .line 285
    const v1, 0x7f08000e

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 287
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/services/telephony/sip/MiuiSipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V

    .line 289
    return-void
.end method

.method private setupPreference(Landroid/preference/Preference;)V
    .locals 6
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 504
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 505
    invoke-static {}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->values()[Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 506
    .local v2, "key":Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    iget v5, v2, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->text:I

    invoke-virtual {p0, v5}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 507
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 508
    iput-object p1, v2, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    .line 512
    .end local v2    # "key":Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    return-void

    .line 505
    .restart local v2    # "key":Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    .restart local v4    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mHomeButtonClicked:Z

    if-eqz v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 302
    :cond_0
    new-instance v0, Lcom/android/services/telephony/sip/MiuiSipEditor$1;

    invoke-direct {v0, p0, p1}, Lcom/android/services/telephony/sip/MiuiSipEditor$1;-><init>(Lcom/android/services/telephony/sip/MiuiSipEditor;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showAlert(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 292
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->showAlert(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method private validateAndSetResult()V
    .locals 17

    .prologue
    .line 322
    const/4 v1, 0x1

    .line 323
    .local v1, "allEmpty":Z
    const/4 v5, 0x0

    .line 324
    .local v5, "firstEmptyFieldTitle":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->values()[Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    move-result-object v2

    .local v2, "arr$":[Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v9, :cond_4

    aget-object v8, v2, v6

    .line 325
    .local v8, "key":Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    iget-object v10, v8, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    .line 326
    .local v10, "p":Landroid/preference/Preference;
    instance-of v14, v10, Landroid/preference/EditTextPreference;

    if-eqz v14, :cond_1

    move-object v12, v10

    .line 327
    check-cast v12, Landroid/preference/EditTextPreference;

    .line 328
    .local v12, "pref":Landroid/preference/EditTextPreference;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/services/telephony/sip/MiuiSipEditor;->isEditTextEmpty(Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;)Z

    move-result v4

    .line 329
    .local v4, "fieldEmpty":Z
    if-eqz v1, :cond_0

    if-nez v4, :cond_0

    const/4 v1, 0x0

    .line 332
    :cond_0
    if-eqz v4, :cond_2

    .line 333
    sget-object v14, Lcom/android/services/telephony/sip/MiuiSipEditor$3;->$SwitchMap$com$android$services$telephony$sip$MiuiSipEditor$PreferenceKey:[I

    invoke-virtual {v8}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 345
    if-nez v5, :cond_1

    .line 346
    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    .line 324
    .end local v4    # "fieldEmpty":Z
    .end local v12    # "pref":Landroid/preference/EditTextPreference;
    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 335
    .restart local v4    # "fieldEmpty":Z
    .restart local v12    # "pref":Landroid/preference/EditTextPreference;
    :pswitch_1
    invoke-static {}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 342
    :pswitch_2
    const v14, 0x7f080030

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 349
    :cond_2
    sget-object v14, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->Port:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    if-ne v8, v14, :cond_1

    .line 350
    sget-object v14, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->Port:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    invoke-virtual {v14}, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 351
    .local v11, "port":I
    const/16 v14, 0x3e8

    if-lt v11, v14, :cond_3

    const v14, 0xfffe

    if-le v11, v14, :cond_1

    .line 352
    :cond_3
    const v14, 0x7f080035

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/services/telephony/sip/MiuiSipEditor;->showAlert(Ljava/lang/String;)V

    .line 379
    .end local v4    # "fieldEmpty":Z
    .end local v8    # "key":Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;
    .end local v10    # "p":Landroid/preference/Preference;
    .end local v11    # "port":I
    .end local v12    # "pref":Landroid/preference/EditTextPreference;
    :goto_2
    return-void

    .line 359
    :cond_4
    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mUpdateRequired:Z

    if-nez v14, :cond_6

    .line 360
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->finish()V

    goto :goto_2

    .line 362
    :cond_6
    if-eqz v5, :cond_7

    .line 363
    const v14, 0x7f080034

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/services/telephony/sip/MiuiSipEditor;->showAlert(Ljava/lang/String;)V

    goto :goto_2

    .line 367
    :cond_7
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->createSipProfile()Landroid/net/sip/SipProfile;

    move-result-object v13

    .line 368
    .local v13, "profile":Landroid/net/sip/SipProfile;
    new-instance v7, Landroid/content/Intent;

    const-class v14, Lcom/android/services/telephony/sip/SipSettings;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    .local v7, "intent":Landroid/content/Intent;
    const-string v14, "sip_profile"

    invoke-virtual {v7, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 370
    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7}, Lcom/android/services/telephony/sip/MiuiSipEditor;->setResult(ILandroid/content/Intent;)V

    .line 371
    const v14, 0x7f08000d

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 373
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/services/telephony/sip/MiuiSipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 375
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v13    # "profile":Landroid/net/sip/SipProfile;
    :catch_0
    move-exception v3

    .line 376
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

    invoke-static {v14}, Lcom/android/services/telephony/sip/MiuiSipEditor;->log(Ljava/lang/String;)V

    .line 377
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/services/telephony/sip/MiuiSipEditor;->showAlert(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 333
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
    .line 158
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mSipManager:Landroid/net/sip/SipManager;

    .line 161
    new-instance v4, Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-direct {v4, p0}, Lcom/android/services/telephony/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    .line 162
    new-instance v4, Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-direct {v4, p0}, Lcom/android/services/telephony/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

    .line 163
    invoke-static {}, Lcom/android/services/telephony/sip/SipAccountRegistry;->getInstance()Lcom/android/services/telephony/sip/SipAccountRegistry;

    move-result-object v4

    iput-object v4, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mSipAccountRegistry:Lcom/android/services/telephony/sip/SipAccountRegistry;

    .line 165
    const v4, 0x7f040020

    invoke-virtual {p0, v4}, Lcom/android/services/telephony/sip/MiuiSipEditor;->setContentView(I)V

    .line 166
    const v4, 0x7f060024

    invoke-virtual {p0, v4}, Lcom/android/services/telephony/sip/MiuiSipEditor;->addPreferencesFromResource(I)V

    .line 167
    const v4, 0x7f0e006a

    invoke-virtual {p0, v4}, Lcom/android/services/telephony/sip/MiuiSipEditor;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 168
    const-string v4, "enable_sip_account"

    invoke-virtual {p0, v4}, Lcom/android/services/telephony/sip/MiuiSipEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mEnableSipAccount:Landroid/preference/CheckBoxPreference;

    .line 170
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "sip_profile"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    :goto_0
    check-cast v4, Landroid/net/sip/SipProfile;

    move-object v2, v4

    check-cast v2, Landroid/net/sip/SipProfile;

    iput-object v2, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    .line 174
    .local v2, "p":Landroid/net/sip/SipProfile;
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 175
    .local v3, "screen":Landroid/preference/PreferenceGroup;
    const/4 v0, 0x1

    .local v0, "i":I
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 176
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/services/telephony/sip/MiuiSipEditor;->setupPreference(Landroid/preference/Preference;)V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "p":Landroid/net/sip/SipProfile;
    .end local v3    # "screen":Landroid/preference/PreferenceGroup;
    :cond_0
    const-string v4, "profile"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    goto :goto_0

    .line 179
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    .restart local v2    # "p":Landroid/net/sip/SipProfile;
    .restart local v3    # "screen":Landroid/preference/PreferenceGroup;
    :cond_1
    if-nez v2, :cond_2

    .line 180
    const v4, 0x7f080021

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 182
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_3

    .line 183
    iget-object v4, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mEnableSipAccount:Landroid/preference/CheckBoxPreference;

    invoke-static {p0, v2}, Lcom/android/services/telephony/sip/SipAdapter;->isSipProfileEnable(Landroid/content/Context;Landroid/net/sip/SipProfile;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 184
    iget-object v4, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mEnableSipAccount:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 189
    :goto_2
    new-instance v4, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;

    invoke-direct {v4, p0}, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;-><init>(Lcom/android/services/telephony/sip/MiuiSipEditor;)V

    iput-object v4, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mAdvancedSettings:Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;

    .line 191
    invoke-direct {p0, v2}, Lcom/android/services/telephony/sip/MiuiSipEditor;->loadPreferencesFromProfile(Landroid/net/sip/SipProfile;)V

    .line 192
    return-void

    .line 186
    :cond_3
    iget-object v4, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mEnableSipAccount:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 207
    const/4 v0, 0x2

    const v1, 0x7f080010

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$attr;->actionBarDiscardIcon:I

    invoke-static {p0, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 210
    const v0, 0x7f08000f

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$attr;->actionBarSaveIcon:I

    invoke-static {p0, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 213
    const/4 v0, 0x3

    const v1, 0x7f08000b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$attr;->actionBarDeleteIcon:I

    invoke-static {p0, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 216
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 248
    packed-switch p1, :pswitch_data_0

    .line 253
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 250
    :pswitch_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->validateAndSetResult()V

    .line 251
    const/4 v0, 0x1

    goto :goto_0

    .line 248
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

    .line 229
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 243
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 231
    :pswitch_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->validateAndSetResult()V

    goto :goto_0

    .line 235
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->finish()V

    goto :goto_0

    .line 239
    :pswitch_2
    invoke-direct {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->setRemovedProfileAndFinish()V

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mHomeButtonClicked:Z

    .line 199
    invoke-direct {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->validateAndSetResult()V

    .line 201
    :cond_0
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 202
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 424
    iget-boolean v1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mUpdateRequired:Z

    if-nez v1, :cond_0

    .line 425
    iput-boolean v2, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mUpdateRequired:Z

    .line 428
    :cond_0
    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->invalidateOptionsMenu()V

    .line 448
    .end local p1    # "pref":Landroid/preference/Preference;
    :goto_0
    return v2

    .line 432
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_1
    if-nez p2, :cond_3

    const-string v0, ""

    .line 433
    .local v0, "value":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 434
    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getPreferenceKey(Landroid/preference/Preference;)Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    move-result-object v1

    iget v1, v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 441
    :goto_2
    sget-object v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_2

    .line 442
    check-cast p1, Landroid/preference/EditTextPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 443
    invoke-direct {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->checkIfDisplayNameSet()V

    .line 447
    :cond_2
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->invalidateOptionsMenu()V

    goto :goto_0

    .line 432
    .end local v0    # "value":Ljava/lang/String;
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 435
    .restart local v0    # "value":Ljava/lang/String;
    :cond_4
    sget-object v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->Password:Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/services/telephony/sip/MiuiSipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_5

    .line 436
    invoke-static {v0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->scramble(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 438
    :cond_5
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 221
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 222
    .local v0, "removeMenu":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 223
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mUpdateRequired:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 224
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 222
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 146
    iput-boolean v1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mHomeButtonClicked:Z

    .line 147
    invoke-static {p0}, Lcom/android/services/telephony/sip/SipUtil;->isPhoneIdle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/services/telephony/sip/MiuiSipEditor;->mAdvancedSettings:Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;

    invoke-virtual {v0}, Lcom/android/services/telephony/sip/MiuiSipEditor$AdvancedSettings;->show()V

    .line 149
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method
